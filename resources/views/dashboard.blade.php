<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    <div class="container">
                        <div class="d-flex justify-content-between align-items-center mb-4">
                            <h1 class="font-bold">Product List</h1>
                            <button class="btn btn-primary" id="addNewBtn">Add New</button>
                        </div>

                        <!-- Add/Edit Product Modal -->
                        <x-form-modal />

                        <!-- Delete Confirmation Modal -->
                        <x-delete-modal />

                        <!-- Products Table -->
                        <x-data-table />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <x-slot name="script">
        <script type="text/javascript">
            $(document).ready(function() {
                // Initialize the DataTable with responsive feature
                var table = $('#productTable').DataTable({
                    processing: true,
                    serverSide: true,
                    ajax: "{{ route('products.data') }}",
                    responsive: true,
                    columns: [
                        { data: 'id', name: 'id' },
                        { data: 'name', name: 'name' },
                        { data: 'price', name: 'price' },
                        { data: 'quantity', name: 'quantity' },
                        { data: 'actions', name: 'actions', orderable: false, searchable: false }
                    ]
                });

                // Add New Product
                $('#addNewBtn').click(function() {
                    $('#productForm')[0].reset();
                    $('#productModalLabel').text('Add New Product');
                    $('#productId').val('');
                    $('#productModal').modal('show');
                });

                // Save Product (Add or Update)
                $('#productForm').submit(function(e) {
                    e.preventDefault();
                    var formData = $(this).serialize();
                    var id = $('#productId').val();

                    $.ajax({
                        url: id ? "{{ url('products') }}/" + id : "{{ route('products.store') }}",
                        type: id ? "PUT" : "POST",
                        data: formData,
                        success: function(response) {
                            $('#productModal').modal('hide');
                            table.ajax.reload();
                            alert(response.success);
                        },
                        error: function(xhr) {
                            console.log(xhr.responseText);
                        }
                    });
                });

                // Edit Product
                $('#productTable').on('click', '.editBtn', function() {
                    var id = $(this).data('id');

                    $.ajax({
                        url: "{{ url('products') }}/" + id + "/edit",
                        type: "GET",
                        success: function(product) {
                            $('#productModalLabel').text('Edit Product');
                            $('#productId').val(product.id);
                            $('#productName').val(product.name);
                            $('#productPrice').val(product.price);
                            $('#productQuantity').val(product.quantity);
                            $('#productModal').modal('show');
                        },
                        error: function(xhr) {
                            console.log(xhr.responseText);
                        }
                    });
                });

                // Delete Product
                var deleteId;
                $('#productTable').on('click', '.deleteBtn', function() {
                    deleteId = $(this).data('id');
                    $('#deleteModal').modal('show');
                });

                $('#confirmDeleteBtn').click(function() {
                    $.ajax({
                        url: "{{ url('products') }}/" + deleteId,
                        type: "DELETE",
                        data: {
                            "_token": "{{ csrf_token() }}",
                        },
                        success: function(response) {
                            $('#deleteModal').modal('hide');
                            table.ajax.reload();
                            alert(response.success);
                        },
                        error: function(xhr) {
                            console.log(xhr.responseText);
                        }
                    });
                });
            });
        </script>
    </x-slot>
</x-app-layout>

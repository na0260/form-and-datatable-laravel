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

                        <!-- Products Table -->
                        <x-data-table />
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>

<?php

namespace Database\Seeders;

use App\Models\Product;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class ProductsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();

        foreach (range(1, 100) as $index) {
            Product::create([
                'name' => $faker->word,
                'price' => $faker->randomFloat(2, 100, 10000),
                'quantity' => $faker->numberBetween(20, 50),
            ]);
        }
    }
}

<?php

namespace Database\Seeders;
use App\Models\products;
use Illuminate\Database\Seeder;

class ProductsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        products::factory()->times(15)->create();
    }
}

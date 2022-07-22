<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class ProductsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'tenSP' => $this->faker->name(),
            'gia' => $this->faker->numberBetween(100000,900000)
        ];
    }
}

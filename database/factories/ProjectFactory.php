<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Project;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Project>
 */
class ProjectFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     */
    protected $model = Project::class;

    /**
     * Define the model's default state.
     */
    public function definition()
    {
        return [
            'name'   => $this->faker->sentence(3), // Generates a random project name
            'status' => $this->faker->randomElement(['Active', 'Completed', 'On Hold']),

        ];
    }
}

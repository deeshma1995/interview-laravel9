<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Timesheet;
use App\Models\User;
use App\Models\Project;

class TimesheetFactory extends Factory
{
    protected $model = Timesheet::class;

    public function definition()
    {
        $user = User::inRandomOrder()->first() ?? User::factory()->create();
        $project = Project::inRandomOrder()->first() ?? Project::factory()->create();

        return [
            'user_id'    => $user->id, // Ensure a valid user
            'project_id' => $project->id, // Ensure a valid project
            'task_name'  => $this->faker->sentence(4),
            'date'       => $this->faker->date(),
            'hours'      => $this->faker->numberBetween(1, 8),
        ];
    }
}

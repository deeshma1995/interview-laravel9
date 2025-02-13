<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Project;
use App\Models\Timesheet;
use App\Models\Attribute;
use App\Models\AttributeValue;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run()
    {
        // Create 10 users
        //User::factory(10)->create();

        // Create 5 projects
        $projects = Project::factory(5)->create();

        // Create predefined attributes
        $attributes = [
            ['name' => 'department', 'type' => 'text'],
            ['name' => 'start_date', 'type' => 'date'],
            ['name' => 'end_date', 'type' => 'date'],
        ];

        foreach ($attributes as $attr) {
            Attribute::firstOrCreate(['name' => $attr['name']], $attr);
        }

        // Assign attribute values to projects
        $allAttributes = Attribute::all();

        foreach ($projects as $project) {
            foreach ($allAttributes as $attribute) {
                AttributeValue::create([
                    'attribute_id' => $attribute->id,
                    'entity_id' => $project->id, // project ID
                    'value' => $this->getAttributeValue($attribute->name),
                ]);
            }
        }

        // Create 50 timesheets
         Timesheet::factory(10)->create();
    }

    private function getAttributeValue($attributeName)
    {
        return match ($attributeName) {
            'department' => fake()->randomElement(['IT', 'HR', 'Finance', 'Marketing']),
            'start_date' => fake()->date(),
            'end_date' => fake()->date(),
            default => 'N/A',
        };
    }
}

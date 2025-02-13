<?php

use App\Models\AttributeValue;
use App\Models\Attribute;
use App\Models\Project;
use Illuminate\Database\Eloquent\Factories\Factory;

class AttributeValueFactory extends Factory
{
    protected $model = AttributeValue::class;

    public function definition()
    {
        return [
            'attribute_id' => Attribute::factory(), // Create an attribute
            'entity_id' => Project::factory(), // Create a project
            'value' => $this->faker->word,
        ];
    }
}

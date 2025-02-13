<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAttributeValuesTable extends Migration
{
    public function up()
    {
        Schema::create('attribute_values', function (Blueprint $table) {
    $table->id();
    $table->unsignedBigInteger('attribute_id');
    $table->unsignedBigInteger('entity_id'); // This should reference the project
    $table->text('value');
    $table->timestamps();

    $table->foreign('attribute_id')->references('id')->on('attributes');
    $table->foreign('entity_id')->references('id')->on('projects');
});
    }

    public function down()
    {
        Schema::dropIfExists('attribute_values');
    }
}

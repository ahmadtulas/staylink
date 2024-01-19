<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rooms', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('propertyId')->length(1000);
            $table->bigInteger('catId')->length(1000);
            $table->string("name");
            $table->bigInteger('price')->length(1000);
            $table->bigInteger('capacity')->length(1000);
            $table->dateTime("checkInDateTime");
            $table->dateTime("checkOutDateTime");
            $table->enum('roomAvailable', ['Yes','No'])->default('Yes');
            $table->bigInteger('isActive')->length(11);
            
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('rooms');
    }
};

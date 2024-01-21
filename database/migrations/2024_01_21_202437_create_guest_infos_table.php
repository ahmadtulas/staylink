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
        Schema::create('guest_infos', function (Blueprint $table) {
            $table->id();
            $table->string('groupId');
            $table->string('name');
            $table->string('contact_number')->nullable();
            $table->integer('age')->nullable();
            $table->string('city')->nullable();
            $table->string('country')->nullable();
            $table->string('pincode')->nullable();
            $table->string('gst_number')->nullable();
            $table->date('check_in_date');
            $table->date('check_out_date');
            $table->json('roomIds');
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
        Schema::dropIfExists('guest_infos');
    }
};

<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDatCardTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dataCard', function (Blueprint $table) {
            $table->increments('id');
            $table->string('fullname')->nullable();
            $table->boolean('active')->default(false);
            $table->string('MemberID')->nullable();
            $table->string ('Membershipphoto')->nullable();
            $table->string('IdCard')->nullable();
            $table->string('email')->nullable();
            $table->string('phone')->nullable();
            $table->string('homePhone')->nullable();
            $table->string('address')->nullable();
            $table->integer('city_id')->unsigned();
            $table->foreign('city_id')->references('id')->
            on('cities')->onUpdate('cascade')->onDelete('cascade');
            $table->string('personalPhoto')->nullable();
            $table->string('IdCardphoto')->nullable();
            $table->string('photoBirthday')->nullable();
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
        Schema::dropIfExists('dataCard');
    }
}

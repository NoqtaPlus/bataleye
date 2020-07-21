<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddPhoneToSettingTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('settings', function (Blueprint $table) {
           $table->string('phone',255)->nullable();
           $table->string('address',255)->nullable();
           $table->text('subscript_description')->nullable();
           $table->string('desc1','255')->nullable();
           $table->string('desc2','255')->nullable();
           $table->string('desc3','255')->nullable();
           $table->string('desc4','255')->nullable();
           $table->string('desc5','255')->nullable();
           $table->string('desc6','255')->nullable();
           $table->string('desc7','255')->nullable();

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('settings', function (Blueprint $table) {
            //
        });
    }
}

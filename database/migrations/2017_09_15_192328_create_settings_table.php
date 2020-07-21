<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSettingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('settings', function (Blueprint $table) {
            $table->increments('setting_id');
            $table->string('site_title',255)->nullable();
            $table->text('site_description')->nullable();
            $table->string('email_1',255)->nullable();
            $table->string('email_2',255)->nullable();
            $table->string('map_lat',255)->nullable();
            $table->string('map_lng',255)->nullable();
            $table->string('facebook_link',255)->nullable();
            $table->string('twitter_link',255)->nullable();
            $table->string('instagram_link',255)->nullable();
            $table->string('google_link',255)->nullable();
            $table->text('about')->nullable();
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
        Schema::dropIfExists('settings');
    }
}

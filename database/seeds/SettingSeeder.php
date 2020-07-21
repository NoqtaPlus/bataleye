<?php

use Illuminate\Database\Seeder;

class SettingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('settings')->insert([
            [
                'site_title' => 'نادي الترسانة الرياضي',
                'site_description' => 'نادي الترسانة الرياضي',
                'email_1' => 'info@tersana.com',
                'email_2' => 'support@tersana.com',
                'map_lat' => '0',
                'map_lng' => '0',
                'facebook_link' => '#facebook',
                'twitter_link' => '#twitter',
                'whatsapp'      =>'01149671770',
                'instagram_link' => '#instagram',
                'google_link' => '#google',
                'about' => "",
                'phone ' => "01201375568",
            
                'youtube' =>'#youtube'
            ]
           
        ]);
    }
}

<?php

use Illuminate\Database\Seeder;

class AdsPositionsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('ads_positions')->insert([
            ['slug' => 'main-1'],
            ['slug' => 'main-2'],
            ['slug' => 'sidebar'],
            ['slug' => 'inner-pages-1'],
            ['slug' => 'inner-pages-2'],
            ['slug' => 'inner-pages-3'],
        ]);
    }
}

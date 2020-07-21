<?php

use Illuminate\Database\Seeder;

class Cities extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('cities')->insert([
          
                ['iso' => "DK", 'name' => "الدقهليه"],
                ['iso' => "BA", 'name' => "البحر الاحمر"],
                ['iso' => "BH", 'name' => "البحيره"],
                ['iso' => "FYM", 'name' => "الفيوم"],
                ['iso' => "GH", 'name' => "الغربية"],
                ['iso' => "ALX", 'name' => "الاسكندرية"],
                ['iso' => "IS", 'name' => "الاسماعليه"],
                ['iso' => "GZ", 'name' => "الجيزه"],
                ['iso' => "MNF", 'name' => "المنوفية"],
                ['iso' => "MN", 'name' => "المنيا"],
                ['iso' => "C", 'name' => "القاهره"],
                ['iso' => "KB", 'name' => "القليوبية"],
                ['iso' => "LX", 'name' => "الاقصر"],
                ['iso' => "WAD", 'name' => "الوادى الجديد"],
                ['iso' => "SHR", 'name' => "الشرقية"],
                ['iso' => "SUZ", 'name' => "السويس"],
                ['iso' => "ASN", 'name' => "اسوان"],
                ['iso' => "AST", 'name' => "اسيوط"],
                ['iso' => "BNS", 'name' => "بنى سويف"],
                ['iso' => "PTS", 'name' => "بور سعيد"],
                ['iso' => "DT", 'name' => "دمياط"],
                ['iso' => "JS", 'name' => "شمال سينا"],
                ['iso' => "KFS", 'name' => "كفر الشيخ"],
                ['iso' => "MT", 'name' => "مطروح"],
                ['iso' => "KN", 'name' => "قنا"],
                ['iso' => "SIN", 'name' => "جنوب سينا"],
                ['iso' => "SHG", 'name' => "سوهاج"],
           
        ]);
    }
}

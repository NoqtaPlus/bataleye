<?php
use Illuminate\Database\Seeder;

class SideBarMenusSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('sidebar_menus')->insert([
            [
                'name' => 'users',
                'roles_access' => '1',
                'icon' => 'fa fa-users',
                'ordering' => '1',
                'active' => '1',
                'have_header' => '1',
            ]
            ,
            [
                'name' => 'settings',
                'roles_access' => '1',
                'icon' => 'fa fa-sitemap',
                'ordering' => '7',
                'active' => '1',
                'have_header' => '1',
            ]
            ,
            [
                'name' => 'contact',
                'roles_access' => '1',
                'icon' => 'fa fa-pencil',
                'ordering' => '6',
                'active' => '1',
                'have_header' => '1',
            ]
            ,
            [
                'name' => 'ads',
                'roles_access' => '1,2,3',
                'icon' => 'fa fa-sitemap',
                'ordering' => '6',
                'active' => '1',
                'have_header' => '1',
            ]
            ,
            [
                'name' => 'persons',
                'roles_access' => '1',
                'icon' => 'fa fa-users',
                'ordering' => '6',
                'active' => '1',
                'have_header' => '1',
            ]
            ,
            [
                'name' => 'sponsors',
                'roles_access' => '1',
                'icon' => 'fa fa-sitemap',
                'ordering' => '6',
                'active' => '1',
                'have_header' => '1',
            ]
            ,
            [
                'name' => 'allchampionships',
                'roles_access' => '1,2,3',
                'icon' => 'fa fa-sitemap',
                'ordering' => '6',
                'active' => '1',
                'have_header' => '1',
            ]
            ,
            [
                'name' => 'Media',
                'roles_access' => '1,2,3',
                'icon' => 'fa fa-sitemap',
                'ordering' => '6',
                'active' => '1',
                'have_header' => '1',
            ]
            ,
            [
                'name' => 'Matches',
                'roles_access' => '1,2,3',
                'icon' => 'fa fa-sitemap',
                'ordering' => '6',
                'active' => '1',
                'have_header' => '1',
            ]
            ,
            [
                'name' => 'news',
                'roles_access' => '1,2,3',
                'icon' => 'fa fa-pencil',
                'ordering' => '6',
                'active' => '1',
                'have_header' => '1',
            ]
            ,
            [
                'name' => 'links',
                'roles_access' => '1,2,3',
                'icon' => 'fa fa-pencil',
                'ordering' => '6',
                'active' => '1',
                'have_header' => '1',
            ]
            ,
            [
                'name' => 'sliders',
                'roles_access' => '1,2,3',
                'icon' => 'fa fa-pencil',
                'ordering' => '6',
                'active' => '1',
                'have_header' => '1',
            ]
            ,
            [
                'name' => 'subscription',
                'roles_access' => '1',
                'icon' => 'fa fa-sitemap',
                'ordering' => '7',
                'active' => '1',
                'have_header' => '1',
            ]
            ,
            [
                'name' => 'ticket',
                'roles_access' => '1,2',
                'icon' => 'fa fa-sitemap',
                'ordering' => '7',
                'active' => '1',
                'have_header' => '1',
            ]
            ,
            
        ]);
    }
}

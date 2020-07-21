<?php

use Illuminate\Database\Seeder;

class SideBarItemsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('sidebar_items')->insert([
            [
                'menu_id' => '1',
                'name' => 'allUsers',
                'route' => 'getAllUsers',
                'roles_access' => '1',
                'icon' => 'fa fa-users',
                'ordering' => '1',
                'active' => '1',
            ],
            [
                'menu_id' => '1',
                'name' => 'addUser',
                'route' => 'getAddUser',
                'roles_access' => '1',
                'icon' => 'fa fa-users',
                'ordering' => '1',
                'active' => '1',
            ]
            ,
            [
                'menu_id' => '2',
                'name' => 'all_settings',
                'route' => 'getSettings',
                'roles_access' => '1',
                'icon' => 'fa fa-users',
                'ordering' => '1',
                'active' => '1',
            ]
            ,
           
            [
                'menu_id' => '3',
                'name' => 'all_contacts',
                'route' => 'getAllContacts',
                'roles_access' => '1',
                'icon' => 'fa fa-users',
                'ordering' => '2',
                'active' => '1',
            ]
            ,
            [
                'menu_id'=>'4',
                'name'   =>'add_ads',
                'route'  =>'ads_management.create',
                'roles_access'=>'1,2',
                'icon'=>'fa fa-users',
                'ordering'=>'2',
                'active'=>'1'
            ]
            ,
            [
                'menu_id'=>'4',
                'name'   =>'all_ads',
                'route'  =>'ads_management.index',
                'roles_access'=>'1,2',
                'icon'=>'fa fa-users',
                'ordering'=>'2',
                'active'=>'1'
            ],
            [
                'menu_id'=>'5',
                'name'   =>'allPersons',
                'route'  =>'getAllPersons',
                'roles_access'=>'1',
                'icon'=>'fa fa-users',
                'ordering'=>'1',
                'active'=>'1'
            ],
            [
                'menu_id'=>'5',
                'name'   =>'addPerson',
                'route'  =>'getAddPerson',
                'roles_access'=>'1,2',
                'icon'=>'fa fa-users',
                'ordering'=>'2',
                'active'=>'1'
            ],            
            [
                'menu_id'=>'6',
                'name'   =>'allSponsors',
                'route'  =>'getAllSponsors',
                'roles_access'=>'1,2,3',
                'icon'=>'fa fa-users',
                'ordering'=>'1',
                'active'=>'1'
            ],
            [
                'menu_id'=>'6',
                'name'   =>'addSponsor',
                'route'  =>'getAddSponsor',
                'roles_access'=>'1,2,3',
                'icon'=>'fa fa-users',
                'ordering'=>'2',
                'active'=>'1'
            ],
            [
                'menu_id'=>'7',
                'name'   =>'allChampionships',
                'route'  =>'getAllChampionships',
                'roles_access'=>'1,2,3',
                'icon'=>'fa fa-users',
                'ordering'=>'1',
                'active'=>'1'
            ],
            [
                'menu_id'=>'7',
                'name'   =>'addChampionship',
                'route'  =>'getAddChampionship',
                'roles_access'=>'1,2,3',
                'icon'=>'fa fa-users',
                'ordering'=>'2',
                'active'=>'1'
            ],
            [
                'menu_id'=>'8',
                'name'   =>'images',
                'route'  =>'imagesIndex',
                'roles_access'=>'1,2,3',
                'icon'=>'fa fa-images',
                'ordering'=>'2',
                'active'=>'1'
            ],
            [
                'menu_id'=>'8',
                'name'   =>'addImages',
                'route'  =>'addImages',
                'roles_access'=>'1,2,3',
                'icon'=>'fa fa-images',
                'ordering'=>'2',
                'active'=>'1'
            ],
            [
                'menu_id'=>'9',
                'name'   =>'videos',
                'route'  =>'videosIndex',
                'roles_access'=>'1,2,3',
                'icon'=>'fa fa-images',
                'ordering'=>'2',
                'active'=>'1'
            ],
            [
                'menu_id'=>'9',
                'name'   =>'addVideo',
                'route'  =>'addVideo',
                'roles_access'=>'1,2,3',
                'icon'=>'fa fa-images',
                'ordering'=>'2',
                'active'=>'1'
            ],
            [                
                'menu_id'=>'10',
                'name'   =>'allMatches',
                'route'  =>'getAllMatches',
                'roles_access'=>'1,2,3',
                'icon'=>'fa fa-users',
                'ordering'=>'1',
                'active'=>'1'
            ]
            ,
            [
                'menu_id'=>'10',
                'name'   =>'addMatch',
                'route'  =>'getAddMatch',
                'roles_access'=>'1,2,3',
                'icon'=>'fa fa-users',
                'ordering'=>'2',
                'active'=>'1'
            ]
            ,
            [
                'menu_id'=>'11',
                'name'   =>'all_news',
                'route'  =>'getAllBlogs',
                'roles_access'=>'1,2,3',
                'icon'=>'fa fa-users',
                'ordering'=>'2',
                'active'=>'1'
            ]
            ,
            [
                'menu_id'=>'11',
                'name'   =>'add_news',
                'route'  =>'getAddBlog',
                'roles_access'=>'1,2,3',
                'icon'=>'fa fa-users',
                'ordering'=>'2',
                'active'=>'1'
            ]
            ,
            [
                'menu_id'=>'12',
                'name'   =>'all_links',
                'route'  =>'getAllLinks',
                'roles_access'=>'1,2,3',
                'icon'=>'fa fa-users',
                'ordering'=>'2',
                'active'=>'1'
            ]
            ,
            [
                'menu_id'=>'12',
                'name'   =>'add_links',
                'route'  =>'getAddLink',
                'roles_access'=>'1,2,3',
                'icon'=>'fa fa-users',
                'ordering'=>'2',
                'active'=>'1'
            ]
            ,
            [
                'menu_id'=>'13',
                'name'   =>'all_sliders',
                'route'  =>'getAllSliders',
                'roles_access'=>'1,2,3',
                'icon'=>'fa fa-users',
                'ordering'=>'2',
                'active'=>'1'
            ]
            ,
            [
                'menu_id'=>'13',
                'name'   =>'add_sliders',
                'route'  =>'getAddSlider',
                'roles_access'=>'1,2,3',
                'icon'=>'fa fa-users',
                'ordering'=>'2',
                'active'=>'1'
            ]
            ,
            [
                'menu_id'=>'14',
                'name'   =>'all_subscription',
                'route'  =>'getAllSubscription',
                'roles_access'=>'1',
                'icon'=>'fa fa-users',
                'ordering'=>'2',
                'active'=>'1'
            ]
            ,
            [
                'menu_id'=>'15',
                'name'   =>'all_ticket',
                'route'  =>'getAllTicket',
                'roles_access'=>'1,2',
                'icon'=>'fa fa-users',
                'ordering'=>'2',
                'active'=>'1'
            ]
            
            
        ]);
    }
}




<?php

use Illuminate\Database\Seeder;

class UserRolesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {  DB::table('user_roles')->insert([
            'role_name' => 'Super Admin',
        ]);
        DB::table('user_roles')->insert([
            'role_name' => ' Admin',
        ]);
        DB::table('user_roles')->insert([
            'role_name' => ' Writer',
        ]);
    }
}

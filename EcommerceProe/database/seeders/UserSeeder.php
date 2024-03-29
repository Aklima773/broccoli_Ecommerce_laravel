<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create(
            [

                'name' => "Aklima",
                'email' => 'aklima@gmail.com',
                'usertype' => 0,
                'phone' => 12331231,
                'address' => "mirpure",
                'password' => bcrypt('aklima123456'),



            ]
        );

        User::create(
            [

                'name' => "Admin",
                'email' => 'admin@gmail.com',
                'usertype' => 1,
                'phone' => 12331231,
                'address' => "mirpure",

                'password' => bcrypt('aklima123456'),
            ]
        );
    }
}

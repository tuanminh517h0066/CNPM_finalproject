<?php

use Illuminate\Database\Seeder;

class CategoriesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $data=[
        	[
        		'cate_name'=>'Dell',
        		'cate_slug'=>str_slug('Dell')
        	],
        	[
        		'cate_name'=>'Macbook',
        		'cate_slug'=>str_slug('Macbook')
        	],

        ];
        DB::table('vp_categories')->insert($data);

    }
}

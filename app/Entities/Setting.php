<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{
    protected $fillable = [
        'site_title',
        'site_description',
        'email_1',
        'email_2',
        'facebook_link',
        'twitter_link',
        'instagram_link',
        'google_link',
        'about',
        'whatsapp',
        'youtube',
        'phone',
        'address_ar',
        'address_en',
        'subscript_description',
        'saturday_time',
        'sunday_time',
        'monday_time',
        'tuesday_time',
        'wednesday_time',
        'thursday_time',
        'map_lat',
        'map_lng',
        'logo_ar',
        'logo_en',
        'site_map',

    ];
    protected $table='settings';
    protected $primaryKey='setting_id';
}    
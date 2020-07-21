<?php

namespace App\Entities;
use Illuminate\Database\Eloquent\Model;

class PersonTranslation extends Model
{
    protected $fillable = ['name', 'short_description','services_topics','role','specialist_in','contact_info','work_days'];
    protected $casts = [
        'services_topics' => 'array',
    ];
    protected $table='persons_translation';
}

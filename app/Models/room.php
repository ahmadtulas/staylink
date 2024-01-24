<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class room extends Model
{
    use HasFactory;
    protected $fillable=[

        'room_id',

        'checkInDateTime',

        'checkOutDateTime',

        'isActive',

        'propertyId' 
    ];
}

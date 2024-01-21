<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class guestInfo extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'groupId',
        'contact_number',
        'age',
        'city',
        'country',
        'pincode',
        'gst_number',
        'check_in_date',
        'check_out_date',
        'roomIds'
        // Add more fields as needed
    ];
}

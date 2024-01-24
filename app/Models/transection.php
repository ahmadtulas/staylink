<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class transection extends Model
{
    use HasFactory;
    protected $fillable = [
        'roomId',
        'groupId',
        'payment_status',
        'payment_type',
        'totalAmount',	
        'collectedAmount',
        'checkInDateTime',	
        'checkOutDateTime',	
        'isActive',	
        'propertyId',
        'category_id',
    ];

}

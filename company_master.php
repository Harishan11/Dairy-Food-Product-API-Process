<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class company_master extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'address',
        'fssai_no',
        'mobile_no',
        'pincode',
        'state',
        'country',
        'gst_no',
        'bank_name',
        'acc_no',
        'ifsc',
        'c_time',
        
    ];

    protected $table = 'company_master';
}

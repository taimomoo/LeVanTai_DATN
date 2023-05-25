<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class orderDetail extends Model
{
    use HasFactory;

    protected $table = 'orderdetails';

    public function order(){
        return $this->belongsTo(Orders::class);
    }
    

    public function product(){
        return $this->belongsTo(Products::class);
    }
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Deduction extends Model
{
    public $table = 'deductions';
    protected $fillable = ['payment_id','amount','type'];

    public function payment(){
        return $this->belongsTo('App\Payment');
    }
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AttendanceDetail extends Model
{
    public $table = 'attendance_details';
    protected $fillable = ['attendance_id','punch_time','punch_type'];

    public function attendance(){
        return $this->belongsTo('App\Attendance');
    }
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Attendance extends Model
{
    public $table = 'attendances';
    protected $fillable = ['employee_id','date'];

    public function attendanceDetials()
    {
        return $this->hasMany('App\AttendanceDetail');
    }

    public function employee(){
        return $this->belongsTo('App\Employee');
    }

}

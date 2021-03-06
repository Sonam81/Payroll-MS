<?php

namespace App\Widgets;

  use App\Employee;

use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;

class Employees extends BaseDimmer
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];

    /**
     * Treat this method as a controller action.
     * Return view() or other content to display.
     */
    public function run()
    {
        $count = \App\Employee::count();
       // $string = 'Employees';
        $str = ($count > 1) ? 'Employees':'Employee';
        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-people',
            'title'  => "{$count} {$str}",
            'text'   => "You have {$count} registered {$str}.",
            'button' => [
                'text' => "{$str}",
                'link' => route('voyager.employees.index'),
            ],
            'image' => voyager_asset('images/widget-backgrounds/employee.jpg'),
        ]));
    }

    /**
     * Determine if the widget should be displayed.
     *
     * @return bool
     */
    public function shouldBeDisplayed()
    {
        return true;
        //return app('VoyagerAuth')->user()->can('browse', Voyager::model('Employee'));
    }
}

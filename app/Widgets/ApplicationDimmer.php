<?php

namespace App\Widgets;

use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;

class ApplicationDimmer extends BaseDimmer
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
        $employees = \App\LeaveApplication::where('status', 'Pending')->get();
        $count = $employees->count();
        $str = ($count > 1)? 'Leave Applications':'Leave Application';
        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-mail',
            'title'  => "{$count} {$str}",
            'text'   => "You have {$count} pending {$str}.",
            'button' => [
                'text' => "{$str}",
                'link' => route('voyager.leave-applications.index'),
            ],
            'image' => voyager_asset('images/widget-backgrounds/leave-application.jpg'),
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

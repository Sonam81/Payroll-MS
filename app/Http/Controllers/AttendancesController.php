<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Attendance;
use App\AttendanceDetail;
use Illuminate\Support\Facades\DB;
use PDF;
use Symfony\Component\Routing\Loader\AnnotationClassLoader;
use App\Employee;

class AttendancesController extends Controller
{
    public function index()
    {
        $attendances = Attendance::paginate(10);
        $index = 0;
        $employees = Employee::all();
        foreach ($attendances as $attendance) {
            $i = $index++;
            $attendances[$i]->details = $attendance->attendanceDetials;
            $attendances[$i]->employee = Employee::where('id', $attendance->employee_id)->get()->first();
        }
        //dd($attendances);
        return view('voyager::attendances.browse')->with('attendances', $attendances)->with('employees', $employees);
    }

    public function create()
    {
        $employees = DB::table('employees')->get();
        $punchtypes = DB::table('punch_types')->get();
        return view('voyager::attendances.edit-add')->with('punchtypes', $punchtypes)->with('employees', $employees);
    }

    public function store(Request $request)
    {
        $attendance = Attendance::create([
            'employee_id' => $request->employee_id,
            'date' => $request->date
        ]);

        for ($i = 0; $i < sizeof($request->punch_time); $i++) {
            $attendance_details = AttendanceDetail::create([
                'attendance_id' => $attendance->id,
                'punch_time' => $request->punch_time[$i],
                'punch_type' => $request->punch_type[$i]
            ]);
        }

        return redirect(route('attendances.index'));
    }

    public function edit($id)
    {
        $attendance = Attendance::find($id);
        $attendance->details = $attendance->attendanceDetials;
        //dd($attendance->details);
        $employees = DB::table('employees')->get();
        $punchtypes = DB::table('punch_types')->get();
        return view('voyager::attendances.edit-add')->with('attendances', $attendance)->with('punchtypes', $punchtypes)->with('employees', $employees);
    }

    public function update(Request $request, $id)
    {

        $attendance = Attendance::find($id);
        $attendance->employee_id = $request->employee_id;
        $attendance->date = $request->date;

        $attendance_detail = AttendanceDetail::where('attendance_id', $attendance->id)->get();
        for ($i = 0; $i < $attendance_detail->count(); $i++) {
            $attendance_detail[$i]->punch_time = $request->punch_time[$i];
            $attendance_detail[$i]->punch_type = $request->punch_type[$i];
            $attendance_detail[$i]->save();
        }
        for ($i = $attendance_detail->count(); $i < sizeof($request->punch_time); $i++) {
            $attendance_details = AttendanceDetail::create([
                'attendance_id' => $attendance->id,
                'punch_time' => $request->punch_time[$i],
                'punch_type' => $request->punch_type[$i]
            ]);
        }
        $attendance->save();
        return redirect(route('attendances.index'));
    }

    public function show($id)
    {
        $attendance = Attendance::find($id);
        $attendance->details = $attendance->attendanceDetials;
        return view('voyager::attendances.show')->with('attendance', $attendance);
    }

    public function delete($id)
    {
        $attendance = Attendance::find($id);
        $attendance->attendanceDetials()->delete();
        $attendance->delete();
        return redirect(route('attendances.index'));
    }

    public function report(Request $request)
    {
        //dd($request->from_date);
        $attendances = Attendance::where('date', '>=', $request->from_date, 'and')->where('date', '<=', $request->to_date)->get();
        $index = 0;
        foreach ($attendances as $attendance) {
            $i = $index++;
            $attendances[$i]->details = $attendance->attendanceDetials;
            $attendances[$i]->employee = Employee::where('id', $attendance->employee_id)->get()->first();
        }
        // dd($attendances);
        $pdf = PDF::loadView('voyager::attendances.report', ['attendances' => $attendances, 'from_date' => $request->from_date, 'to_date' => $request->to_date]);
        return $pdf->download('attendance_' . $request->from_date . '___' . $request->to_date . '.pdf');
    }

    public function deleteDetails($id)
    {
        $attendance_detail = AttendanceDetail::find($id);
        $attendance_detail->delete();
        return redirect(route('attendances.edit', $attendance_detail->attendance_id));
    }
}

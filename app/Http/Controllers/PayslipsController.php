<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Employee;
use Illuminate\Support\Facades\DB;
use App\Salary;

class PayslipsController extends Controller
{
    //
    
    public function search(){
        return view('voyager::search');
    }

    public function payslip()
    {
        $employees = DB::table('employees')->get();
        return view('voyager::payslips.payslip')->with('employees',$employees);
    }

    //    public function generatePayslip(Request $request){
    //        dd($request);
    //        $id = $request->employee_id;
    //       // dd($id);
    //     $employee = Employee::find($id);
    //     //dd($employee);
    //     return Voyager::view('voyager::payslips.generate')->with('employee',$employee);   

    //    }
    public function generatePayslip(Request $request)
    {
        $employee = Employee::find($request->employee_id);
        $salaryStructure = DB::table('salaries')->where('designation', $employee->designation)->first();
        //dd($salaryStructure);
        //dd($employee);
        // dd($request->employee_id);
        return view('voyager::payslips.generate')->with('employee',$employee)->with('salaryStructure',$salaryStructure);
    }

    public function store(){

    }
}

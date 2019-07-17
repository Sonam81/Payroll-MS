<?php

namespace App\Http\Controllers;

use App\Employee;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Payment;
use App\SalaryStructure;
use App\BankDetial;
use App\Entitlement;
use App\EmployeeSalaryStructure;
use App\SalaryStructureEntitlement;
use App\Attendance;
use Barryvdh\DomPDF\Facade as PDF;
use DateTime;
use App\Deduction;

class PaymentsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index()
    {
        $payments = DB::table('payments')->get();
        
        return view('voyager::payments.browse')->with('payments', $payments);
    }

    public function select()
    {
        //dd('Sonam');
        $employees = DB::table('employees')->get();
        //dd($employees);
        return view('voyager::payments.payment')->with('employees', $employees);
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        //dd($request);
        $month = $request->month;
        $monthStart = date('Y-m-01');
        $d = new DateTime($month);
        $monthEnd = $d->format('Y-m-t');
        $index = 0;
        //dd(crudate($request->month));
        $employee = Employee::find($request->employee_id);
        $emp_sal_str = EmployeeSalaryStructure::where('employee_id', $request->employee_id)->first();
        $salaryStructure = SalaryStructure::find($emp_sal_str->salary_structure_id);
        $sal_str_ent = SalaryStructureEntitlement::where('salary_structure_id', $salaryStructure->id)->get();
        foreach ($sal_str_ent as $s) {
            $i = $index++;
            $sal_str_ent[$i]->entitlement = Entitlement::find($sal_str_ent[$i]->entitlement_id);
        }
        $employee->salaryStructure = $salaryStructure;
        $employee->salaryStructureEntitlement = $sal_str_ent;
        $employee->from_date = $monthStart;
        $employee->to_date = $monthEnd;
        $bank_details = BankDetial::where('employee_id', $employee->employee_id)->first();
        //dd($bank_details);
        $attendanceCount = Attendance::where('employee_id', $employee->id)->where('date', '>', $monthStart)->where('date', '<', $monthEnd)->count();
        return view('voyager::payments.addpayment')->with('employeeInfo', $employee)->with('attendanceCount', $attendanceCount)->with('bank_details', $bank_details);
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //        dd($input);
        //$questionsArray = json_encode($_POST['json']);
        //dd($questionsArray);
        //dd($request->bonus);
        $payment = Payment::create([
            'employee_id' => $request->employee_id,
            'employee_name' => $request->employee_name,
            'designation' => $request->employee_designation,
            'basic_salary' => $request->basic_salary,
            'lunch_allowance' => $request->LA,
            'transport_allowance' => $request->TA,
            'entertainment_allowance' => $request->EA,
            'medical_allowance' => $request->MA,
            'tax' => $request->tax,
            'other_deduction' => $request->other_deduction,
            'provident_fund' => $request->PF,
            'bonus' => $request->bonus,
            'total_earning' => $request->total_earning,
            'total_deduction' => $request->total_deduction,
            'net_earning' => $request->net_earning,
            'payment_from' => $request->payment_from,
            'payment_till' => $request->payment_till,
            'bank_name' => $request->bank_name,
            'bank_branch' => $request->bank_branch,
            'account_holder_name' => $request->account_holder_name,
            'account_id' => $request->account_id

        ]);
        
        for ($i = 0; $i < sizeOf($request->deduction_amount); $i++) {
            $deduction = Deduction::create([
                'amount' => $request->deduction_amount[$i],
                'type' => $request->deduction_type[$i],
                'payment_id' => $payment->id
            ]);
        }

        return redirect(route('payments.index'));
    }

    public function generatePayslip($id)
    {
        $payments = Payment::find($id);
        $paymentDetails = Payment::find($id)->toArray();
        $pdf = PDF::loadView('voyager::payments.payslip', ['payment' => $payments, 'paymentDetails' => $paymentDetails]);
        return $pdf->download('payment_' . $payments->employee_name . '.pdf');
    }

    public function payslip(Request $request)
    {
        $input = $request->data;
        return response()->json(['success' => $input]);
        //   return view('voyager::payments.jsonFile')->with('json',response()->json([$input]));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $payment = Payment::find($id);
        $payment->details = $payment->deduction;
        //dd($payment);
        return view('voyager::payments.addpayment')->with('payment', $payment);
    
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $payment = Payment::find($id);
        $payment->employee_id = $request->employee_id;
        $payment->employee_name = $request->employee_name;
        $payment->designation = $request->employee_designation;
        $payment->basic_salary = $request->basic_salary;
        $payment->lunch_allowance = $request->LA;
        $payment->transport_allowance = $request->TA;
        $payment->entertainment_allowance = $request->EA;
        $payment->medical_allowance = $request->MA;
        $payment->tax = $request->tax;
        $payment->other_deduction = $request->other_deduction;
        $payment->provident_fund = $request->PF;
        $payment->bonus = $request->bonus;
        $payment->total_earning = $request->total_earning;
        $payment->total_deduction = $request->total_deduction;
        $payment->net_earning = $request->net_earning;
        $payment->payment_from = $request->payment_from;
        $payment->payment_till = $request->payment_till;
        $payment->bank_name = $request->bank_name;
        $payment->bank_branch = $request->bank_branch;
        $payment->account_holder_name = $request->account_holder_name;
        $payment->account_id = $request->account_id;
    
        $deduction = Deduction::where('payment_id', $payment->id)->get();
        for ($i = 0; $i < $deduction->count(); $i++) {
            $deduction[$i]->type = $request->type[$i];
            $deduction[$i]->amount = $request->amount[$i];
            $deduction[$i]->save();
        }
        for ($i = $deduction->count(); $i < sizeof($request->type); $i++) {
            $deduction = Deduction::create([
                'payment_id' => $payment->id,
                'type' => $request->type[$i],
                'amount' => $request->amount[$i]
            ]);
        }
        $deduction->save();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function delete($id)
    {
        $payment = Payment::find($id);
        $payment->deduction()->delete();
        $payment->delete();
        return redirect(route('payments.index'));
    }

    public function report(Request $request){
        $payments = Payment::where('employee_id',$request->employee_id)->get();
        dd($payments);
        $pdf = PDF::loadView('voyager::attendances.report', ['payments' => $payments]);
        return $pdf->download('attendance_' . $request->employee_id . '.pdf');
    }
}

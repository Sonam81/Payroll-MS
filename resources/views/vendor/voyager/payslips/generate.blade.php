@extends('voyager::master')

@section('page_title','Viewing Generate Payslips')

@section('page_header')
<h1 class="page-title">
    <i class="voyager-file-text"></i>Generate Payslip
</h1>

@include('voyager::multilingual.language-selector')
@stop

@section('content')
<form action="" method="post">
    <div class="form-group col-md-12">

        <div class="form-group  col-md-12 ">
            <label class="control-label" for="name">Employee Id</label>
            <input type="text" class="form-control" name="employee_id" placeholder="Employee Id" value="{{$employee->id}}">
        </div>

        <div class="form-group  col-md-12 ">
            <label class="control-label" for="name">Employee Name</label>
            <input type="text" class="form-control" name="employee_name" placeholder="Employee Name" value="{{$employee->employee_name}}">
        </div>

        <div class="form-group  col-md-12 ">
            <label class="control-label" for="name">Employee Designation</label>
            <input type="text" class="form-control" name="employee_designation" placeholder="Employee Designation" value="{{$employee->designation}}">
        </div>
    </div>
    <!-- asdfffffffffffffffffffffffffffffffffffff -->

    <div class="form-group  col-md-6 panel panel-default ">
        <div class="form-group col-md-12">
            <label class="control-label" for="name">Earnings</label>
        </div>
        <div class="form-group  col-md-12 ">
            <label class="control-label" for="name">Basic Salary</label>
            <input type="text" class="form-control" id="value1" name="basic_salary" placeholder="Basic Salary" value="{{$salaryStructure->basic_salary}}">
        </div>

        <div class="form-group  col-md-12 ">
            <label class="control-label" for="name">Transport Allowance</label>
            <input type="text" class="form-control" name="employee_designation" placeholder=" - " value="{{$salaryStructure->transport_allowance}}">
        </div>
        
        <div class="form-group  col-md-12 ">
            <label class="control-label" for="name">Lunch Allowance</label>
            <input type="text" class="form-control earn" id="value2" name="employee_designation" placeholder=" - " value="{{$salaryStructure->lunch_allowance}}">
        </div>
        
        <div class="form-group  col-md-12 ">
            <label class="control-label" for="name">Medical Allowance</label>
            <input type="text" class="form-control earn" name="employee_designation" placeholder=" - " value="{{$salaryStructure->medical_allowance}}">
        </div>
        
        <div class="form-group  col-md-12 ">
            <label class="control-label" for="name">Entertainment Allowance</label>
            <input type="text" class="form-control earn" name="employee_designation" placeholder=" - " value="{{$salaryStructure->entertainment_allowance}}">
        </div>

        <div class="form-group  col-md-12 ">
            <label class="control-label" for="name">Bonus</label>
            <input type="text" class="form-control" name="bonus" placeholder=" - " value="">
        </div>

        <div class="form-group  col-md-12 ">
            <label class="control-label" for="name">Total Earning</label>
            <input type="text" class="form-control" id="sum" name="total_earning" placeholder="" value="">
        </div>
    </div>

    <div class="form-group  col-md-6 panel panel-default">
        <div class="form-group col-md-12">
            <label class="control-label" for="name">Deductions</label>
        </div>
        <div class="form-group  col-md-12 ">
            <label class="control-label" for="name">Tax</label>
            <input type="text" class="form-control" name="tax" placeholder="Tax" value="">
        </div>

        <div class="form-group  col-md-12 ">
            <label class="control-label" for="name">Provident Fund</label>
            <input type="text" class="form-control" name="provident_fund" placeholder=" - " value="{{$salaryStructure->provident_fund}}">
        </div>

        <div class="form-group  col-md-12 ">
            <label class="control-label" for="name">Total Deductions</label>
            <input type="text" class="form-control" name="total_deduction" placeholder="$" value="">
        </div>
    </div>


</form>
@stop

@section('javascript')
$(function(){
            $('#value1, #value2').keyup(function(){
               var value1 = parseFloat($('#value1').val()) || 0;
               var value2 = parseFloat($('#value2').val()) || 0;
               $('#sum').val(value1 + value2);
            });
         });
@stop
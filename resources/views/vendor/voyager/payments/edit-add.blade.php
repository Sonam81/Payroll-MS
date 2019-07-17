@extends('voyager::master')

@section('page_title','Viewing Generate Payments')

@section('page_header')
<h1 class="page-title">
    <i class="voyager-credit-card"></i>Generate Paymentsasa
</h1>

@include('voyager::multilingual.language-selector')
@stop

@section('content')

<form action="{{url('admin/payments/addpayment')}}" method="post" class="form-group">
    @csrf
    <div class="form-group  col-md-12 ">
        <label class="control-label" for="name">Employee Id</label>
        @if($employees->count()>0)
        <select name="employee_id" class="form-control">
            @foreach($employees as $employee)
            <option value="{{$employee->id}}">{{$employee->employee_id}} -asfd {{$employee->employee_name}}</option>
            @endforeach
        </select>
    </div>
    <div class="form-group col-md-4">
        <label class="control-label">From</label>
        <input type="date" name="fromDate" value="">
    </div>
    <div class="form-group col-md-4">    
        <label class="control-label">To</label>
        <input type="date" name="toDate" value="">
    </div>    
        @endif
        <!-- <input type="text" class="form-control" name="employee_id" placeholder="Employee Id" value=""> -->
    <button type="submit" class="btn btn-success pull-right">Generate</button>
</form>
@stop
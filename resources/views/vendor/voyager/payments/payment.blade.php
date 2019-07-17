@extends('voyager::master')

@section('page_title','Viewing Generate Payments')

@section('page_header')
<h1 class="page-title">
    <i class="voyager-credit-card"></i>Generate Payments
</h1>

@include('voyager::multilingual.language-selector')
@stop

@section('content')

<form action="{{url('admin/payments/addpayment')}}" method="post" class="form-group">
    @csrf
    <div class="form-group col-md-6">
        <label class="d-inline bg-primary control-label col-md-12" for="name">Employee Id</label>
        @if($employees->count()>0)
        <select name="employee_id" class="form-control">
            @foreach($employees as $employee)
            <option value="{{$employee->id}}">{{$employee->employee_id}} - {{$employee->employee_name}}</option>
            @endforeach
        </select>
    </div>
    <div class="form-group col-md-6">
        <label class="d-inline bg-primary control-label col-md-12">Select Month</label>
        <input class="form-control col-md-6" type="month" name="month" value="">
    </div>

    @endif
    <!-- <input type="text" class="form-control" name="employee_id" placeholder="Employee Id" value=""> -->
    <button type="submit" class="btn btn-success pull-right">Generate</button>
</form>
@stop
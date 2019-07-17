@extends('voyager::master')

@section('page_title','Viewing Generate Payslips')

@section('page_header')
<h1 class="page-title">
    <i class="voyager-file-text"></i>Generate Payslip
</h1>

@include('voyager::multilingual.language-selector')
@stop

@section('content')

<form action="{{url('admin/payslip/generatepayslip')}}" method="post" class="form-group">
    @csrf
    <div class="form-group  col-md-12 ">
        <label class="control-label" for="name">Employee Id</label>
        @if($employees->count()>0)
        <select name="employee_id" class="form-control">
            @foreach($employees as $employee)
            <option value="{{$employee->id}}">{{$employee->id}} - {{$employee->employee_name}}</option>
            @endforeach
        </select>
        @endif
        <!-- <input type="text" class="form-control" name="employee_id" placeholder="Employee Id" value=""> -->
    </div>
    <button type="submit" class="btn btn-default pull-right">Generate</button>
</form>
@stop
@extends('voyager::master')

@section('page_title','Viewing Attendances')

@section('page_header')
<h1 class="page-title">
    <i class=""></i>Payments
</h1>
<a href="{{ route('payments.select') }}" class="btn btn-success btn-add-new">
    <i class="voyager-plus"></i> <span>{{ __('voyager::generic.add_new') }}</span>
</a>

@include('voyager::multilingual.language-selector')
@stop

@section('content')
<form action="{{route('payments.report')}}" class="form-group col-md-12 pull-right" method="post">
    @csrf
    <div class="form-group col-md-9">
        <select name="employee_id" class=" form-control">
            @foreach($payments as $payment)
            <option value="{{$payment->employee_id}}">{{$payment->employee_id}} - {{$payment->employee_name}}</option>
            @endforeach
        </select>
    </div>

    <div class="form-group col-md-3">
        <button class="btn btn-primary"><i class="voyager-list"></i>Report</button>
    </div>
</form>

@if($payments->count()>0)
<div class="table-responsive col-md-12">
    <table id="payment_table" class="table table-hover display">
        <thead>
            <tr>
                <th>Employee Name</th>
                <th>Employee Id</th>
                <th>Basic Salary</th>
                <th>Designation</th>
                <th>Lunch Allowance</th>
                <th>Medical Allowance</th>
                <th>Entertainment Allowance</th>
                <th>Provident Fund</th>
                <th>Bonus</th>
                <th>Tax</th>
                <th>Other Deduction</th>
                <th>Total Earning</th>
                <th>Total Deduction</th>
                <th>Net Salary</th>
                <th>Bank Name</th>
                <th>Bank Branch</th>
                <th>Account Holder Name</th>
                <th>Account Id</th>
                <th>Payment From</th>
                <th>Payment Till</th>
                <th>Action</th>

            </tr>
        </thead>
        <tbody>
            @foreach($payments as $payment)

            <tr>
                <td>{{$payment->employee_name}}</td>
                <td>{{$payment->employee_id}}</td>
                <td>{{$payment->basic_salary}}</td>
                <td>{{$payment->designation}}</td>
                <td>{{$payment->lunch_allowance}}</td>
                <td>{{$payment->medical_allowance}}</td>
                <td>{{$payment->entertainment_allowance}}</td>
                <td>{{$payment->provident_fund}}</td>
                <td>{{$payment->bonus}}</td>
                <td>{{$payment->tax}}</td>
                <td>{{$payment->other_deduction}}</td>
                <td>{{$payment->total_earning}}</td>
                <td>{{$payment->total_deduction}}</td>
                <td>{{$payment->net_earning}}</td>
                <td>{{$payment->bank_name}}</td>
                <td>{{$payment->bank_branch}}</td>
                <td>{{$payment->account_holder_name}}</td>
                <td>{{$payment->account_id}}</td>
                <td>{{$payment->payment_from}}</td>
                <td>{{$payment->payment_till}}</td>
                <td>
                    <a href="{{route('payments.generatePayslip',$payment->id)}}" title="Generate Payslip" class="btn btn-sm btn-primary pull-right">
                        <i class="voyager-log-book"></i> <span class="hidden-xs hidden-sm">Generate Payslip</span>
                    </a>
                    <a onclick="return confirm('Are you sure?')" href="{{route('payments.delete',$payment->id)}}" title="Delete" class="btn btn-sm btn-danger pull-right delete">
                        <i class="voyager-trash"></i> <span class="hidden-xs hidden-sm">Delete</span>
                    </a>
                    <a href="{{ route('payments.edit', $payment->id)}}" title="Edit" class="btn btn-sm btn-primary pull-right edit">
                        <i class="voyager-edit"></i> <span class="hidden-xs hidden-sm">Edit</span>
                    </a>
                    <div id="mod" class="modal">
                        <table class="table">
                            <thead>
                                <th colspan="2">
                                    Payment Details
                                </th>
                            </thead>
                            <tbody>
                                @foreach($payment as $key => $value)
                                <tr>
                                    <td>
                                        {{$key}}
                                    </td>

                                    <td>
                                        {{$value}}
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                        <a href="#" rel="modal:close">Close</a>
                    </div>
                    <a href="#mod" rel="modal:open" title="View" class="btn btn-sm btn-warning pull-right view">
                        <i class="voyager-eye"></i> <span class="hidden-xs hidden-sm">View</span>
                    </a>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endif
@stop
@section('javascript')
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>

<script type="text/javascript">
    $(document).ready(function() {
        $('#payment_table').DataTable();
    });
</script>
@stop

@section('css')
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
@stop
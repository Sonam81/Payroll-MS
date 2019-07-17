@extends('voyager::master')

@section('page_title','Viewing Generate Payment')

@section('page_header')
<h1 class="page-title">
    <i class="voyager-credit-card"></i>Generate Payment
</h1>

@include('voyager::multilingual.language-selector')
@stop

@section('content')
<form action="{{route('payments.store')}}" class="form form-group col-md-12" method="post">
    @csrf
    <div class="form-group col-md-12 vendorDaterow">
        <div class="d-inline bg-primary form-group col-md-12">
            <h4>Basic Information</h4>
        </div>
        <div class="form-group  col-md-12 label-input">
            <label class="control-label" for="name">Employee Id</label>
            <input type="text" class="form-control" name="employee_id" placeholder="Employee Id" value="{{$employeeInfo->employee_id}}">
        </div>

        <div class="form-group  col-md-12 label-input">
            <label class="control-label" for="name">Employee Name</label>
            <input type="text" class="form-control" name="employee_name" placeholder="Employee Name" value="{{$employeeInfo->employee_name}}">
        </div>

        <div class="form-group  col-md-12 label-input">
            <label class="control-label" for="name">Employee Designation</label>
            <input type="text" class="form-control" name="employee_designation" placeholder="Employee Designation" value="{{$employeeInfo->salaryStructure->designation}}">
        </div>
    </div>
    <!-- EARNING -->

    <div class="form-group col-md-6">
        <div class="d-inline bg-primary form-group col-md-12">
            <h4>Earnings</h4>
        </div>

        <div class="form-group col-md-12">
            <label class="control-label">Basic Salary</label>
            <input type="number" class="income form-control" name="basic_salary" value="{{$employeeInfo->salaryStructure->basic_salary}}">
        </div>

        <?php
        $index = 0;
        ?>
        @foreach($employeeInfo->salaryStructureEntitlement as $entitlement)
        <?php $i = $index++; ?>
        <div class="form-group  col-md-12 ">
            <label class="control-label" for="name">{{$employeeInfo->salaryStructureEntitlement[$i]->entitlement->name}}</label>
            <input type="text" class="income form-control" id="value1" placeholder="0" name="{{$employeeInfo->salaryStructureEntitlement[$i]->symbol}}" value="<?php
                                                                                                                                                                if ($employeeInfo->salaryStructureEntitlement[$i]->daily == 'Yes' && $employeeInfo->formula == '') {
                                                                                                                                                                    echo $attendanceCount * $employeeInfo->salaryStructureEntitlement[$i]->amount;
                                                                                                                                                                } else {
                                                                                                                                                                    if ($employeeInfo->salaryStructureEntitlement[$i]->formula == '')
                                                                                                                                                                        echo ($employeeInfo->salaryStructureEntitlement[$i]->amount);
                                                                                                                                                                    else {
                                                                                                                                                                        $ma = str_replace('BS', $employeeInfo->salaryStructure->basic_salary, $employeeInfo->salaryStructureEntitlement[$i]->formula);
                                                                                                                                                                        $p = eval('return ' . $ma . ';');
                                                                                                                                                                        echo $p;
                                                                                                                                                                    }
                                                                                                                                                                }
                                                                                                                                                                ?>">
        </div>

        @endforeach
        <div class="form-group col-md-12">
            <label class="control-label">Bonus</label>
            <input type="number" class="income form-control" name="bonus" value="">
            <input type="hidden" name="payment_from" value="{{$employeeInfo->from_date}}">
            <input type="hidden" name="payment_till" value="{{$employeeInfo->to_date}}">

        </div>
    </div>

    <!-- Deductions-->
    <div class="form-group col-md-6">
        <div class="d-inline bg-primary form-group col-md-12">
            <h4>Deductions</h4>
        </div>

        <div class="form-group col-md-12">
            <label class="control-label">Tax</label>
            <input type="number" class="deduction form-control" name="tax" value="<?php
                                                                                    $totalTax = 0;
                                                                                    foreach ($employeeInfo->salaryStructureEntitlement as $entitlement) {
                                                                                        if ($entitlement->taxable == 'Yes')
                                                                                            $totalTax += $entitlement->amount;
                                                                                    }
                                                                                    $tax = 0.13 * $totalTax;
                                                                                    echo $tax; ?>">
        </div>

        <div class="form-group col-md-12">
            <div class="form-group">

                <label class="control-label">Other Deductions</label>
                <table class="table table-bordered">
                    <thead>
                        <tr class="text-center">
                            <th class="text-center">Type</th>
                            <th class="text-center">Amount</th>
                            <th class="text-center"><a href="#" style="text-decoration: none" class="btn btn-success add-deduction">Add New</a></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <input class="form-control" type="text" name="deduction_type[]">
                            </td>
                            <td>
                                <input class="form-control" type="number" name="deduction_amount[]">
                            </td>
                            <td class="text-center">
                                <a href="#" style="text-decoration: none" class="btn btn-danger">Remove</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>



    <div class="form-group col-md-12">
        <div class="d-inline bg-primary form-group col-md-12">
            <h4>Total</h4>
        </div>
        <div class="form-group col-md-6">
            <label class="control-label">Total Earning</label>
            <input id="total-earning" readonly type="number" class="form-control" name="total_earning" value="">
        </div>
        <div class="form-group col-md-6">
            <label class="control-label">Total Deduction</label>
            <input id="total-deduction" readonly step="0.01" type="number" class="form-control" name="total_deduction" value="">
        </div>

        <div class="form-group col-md-12">
            <label class="control-label">Net Earning</label>
            <input type="number" readonly id="net-earning" class="form-control" name="net_earning" value="">
        </div>

    </div>

    <div class="form-group col-md-12">
        <div class="d-inline bg-primary form-group col-md-12">
            <h4>Bank Detials</h4>
        </div>
        <div class="form-group col-md-6">
            <label class="control-label">Account Id</label>
            <input id="total-earning" type="text" class="form-control" name="account_id" value="{{$bank_details->account_id}}">
        </div>
        <div class="form-group col-md-6">
            <label class="control-label">Bank Name</label>
            <input id="total-earning" type="text" class="form-control" name="bank_name" value="{{$bank_details->bank_name}}">
        </div>
        <div class="form-group col-md-6">
            <label class="control-label">Account Holder Name</label>
            <input id="total-earning" type="text" class="form-control" name="account_holder_name" value="{{$bank_details->account_holder_name}}">
        </div>
        <div class="form-group col-md-6">
            <label class="control-label">Bank Branch</label>
            <input id="total-earning" type="text" class="form-control" name="bank_branch" value="{{$bank_details->bank_branch}}">
        </div>
    </div>

    <div class="form-group col-md-12">
        <button class="btn btn-success btn-add-new pull-right" id="btnSubmit" type="submit">Submit</button>
    </div>
    <p id="demo"></p>

</form>
@stop

@section('javascript')
<script type="text/javascript">
    $('.add-deduction').on('click', function() {
        var addDeduction = '<tr>' +
            '<td>' +
            '<input class="form-control" type="text" name="deduction_type[]">' +
            '</td>' +
            '<td>' +
            '<input class="form-control" type="number" name="deduction_amount[]">' +
            '</td>' +
            '<td class="text-center">' +
            '<a href="#" style="text-decoration: none" class="btn btn-danger remove-deduction">Remove</a>' +
            '</td>' +
            '</tr>';
        $('tbody').append(addDeduction);
    });

    $('tbody').on('click', '.remove-deduction', function() {
        $(this).parent().parent().remove();
    });

    $('.document').ready(function() {
        var result = 0;
        $('#total-earning').attr('value', function() {
            $('.income').each(function() {
                if ($(this).val() !== '') {
                    result += parseFloat($(this).val());
                }
            });
            return result;
        });
    });

    $('.income').keyup(function() {
        var result = 0;
        $('#total-earning').attr('value', function() {
            $('.income').each(function() {
                if ($(this).val() !== '') {
                    result += parseFloat($(this).val());
                }
            });
            return result;
        });
    });


    $('.document').ready(function() {
        var result = 0;
        $('#total-deduction').attr('value', function() {
            $('.deduction').each(function() {
                if ($(this).val() !== '') {
                    result += parseFloat($(this).val());
                }
            });
            return result;
        });
    });

    $('.deduction').keyup(function() {
        var result = 0;
        $('#total-deduction').attr('value', function() {
            $('.deduction').each(function() {
                if ($(this).val() !== '') {
                    result += parseFloat($(this).val());
                }
            });
            return result;
        });
    });

    $('.document').ready(function() {
        var earning = 0;
        var deduction = 0;
        $('#net-earning').attr('value', function() {
            $('.income').each(function() {
                if ($(this).val() !== '') {
                    earning += parseFloat($(this).val());
                }
            });
            $('.deduction').each(function() {
                if ($(this).val() !== '') {
                    deduction += parseFloat($(this).val());
                }
            });
            result = parseFloat(earning) - parseFloat(deduction);
            return result;
        });
    });

    $('.deduction, .income').keyup(function() {
        var deduction = 0;
        var earning = 0;

        $('#net-earning').attr('value', function() {
            $('.income').each(function() {
                if ($(this).val() !== '') {
                    earning += parseFloat($(this).val());
                }
            });
            $('.deduction').each(function() {
                if ($(this).val() !== '') {
                    deduction += parseFloat($(this).val());
                }
            });
            result = parseFloat(earning) - parseFloat(deduction);
            return result;
        });
    });
</script>
@stop
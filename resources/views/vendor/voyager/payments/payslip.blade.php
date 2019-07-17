<style>
    h3,
    h4 {
        font-family: "Times New Roman", Georgia, Serif;
        text-align: center;
    }

    table {
        font-family: "Times New Roman", Georgia, Serif;
        width: 100%;
        margin-top: 1em;
        margin-bottom: 1em;
        border-left: 0.01em solid #000;
        border-right: 0.01em solid #000;
        border-top: 0.01em solid #000;
        border-bottom: 0.01em solid #000;
        border-collapse: collapse;
    }

    table td,
    table th {
        padding-left: 0.5em;
        border-left: 0;
        border-right: 0.01em solid #000;
        border-top: 0;
        border-bottom: 0.01em solid #000;
    }

    .inline-div{
        display: inline-block;
    }

</style>

<div>
    <h3>
        Eye Line Information Technology Pvt. Ltd.
    </h3>
    <h4>
        BalKumari - 9, Lalitpur
    </h4>
</div>

<div>
    <div>
        <span>Employee Id: </span><span>{{$payment->employee_id}}</span><br>
        <span>Employee Name: </span><span>{{$payment->employee_name}}</span><br>
        <span>Designation: </span><span>{{$payment->designation}}</span><br>
    </div>
</div>

<div class="inline-div">
    <table class="table" align="center">
        <thead>
            <tr>
                <th colspan="2">Earning</th>
            </tr>
        </thead>

        <tbody>
            <tr>
                <td>Basic Salary</td>
                <td>{{$payment->basic_salary}}</td>
            </tr>
            <tr>
                <td>Transport Allowance</td>
                <td>{{$payment->transport_allowance}}</td>
            </tr>
            <tr>
                <td>Lunch Allowance</td>
                <td>{{$payment->lunch_allowance}}</td>
            </tr>
            <tr>
                <td>Entertainment Allowance</td>
                <td>{{$payment->entertainment_allowance}}</td>
            </tr>
            <tr>
                <td>Medical Allowance</td>
                <td>{{$payment->medical_allowance}}</td>
            </tr>
            <tr>
                <td>Total Earning</td>
                <td>{{$payment->total_earning}}</td>
            </tr>
        </tbody>
    </table>

    <table class="table" align="center">
        <thead>
            <tr>
                <th colspan="2">Deduction</th>
            </tr>

        </thead>

        <tbody>
            <tr>
                <td>Tax</td>
                <td>{{$payment->tax}}</td>
            </tr>
            <tr>
                <td>Other Deductions</td>
                <td></td>
            </tr>
            <tr>
                <td>Total Deduction</td>
                <td>{{$payment->total_deduction}}</td>
            </tr>
        </tbody>
    </table>

    <div>
    <div>
        <span>Account Holder Name: </span><span>{{$payment->account_holder_name}}</span><br>
        <span>Bank Name: </span><span>{{$payment->bank_name}}</span><br>
        <span>Bank Branch: </span><span>{{$payment->bank_branch}}</span><br>
    </div>
</div>
</div>
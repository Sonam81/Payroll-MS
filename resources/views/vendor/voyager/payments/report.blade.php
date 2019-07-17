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

    .inline-div {
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
        <span>Employee Id: </span><span>{{$payments[0]->employee_id}}</span><br>
        <span>Employee Name: </span><span>{{$payments[0]->employee_name}}</span><br>
        <span>Designation: </span><span>{{$payments[0]->designation}}</span><br>
    </div>
</div>


<table class="table" align="center">
    <thead>
        <tr>
            <th>S. N.</th>
            <th>Title</th>
            @foreach($payments as $payment)
            <th>
                {{$payment->payment_from}} - {{$payment->payment_till}}
            </th>
            @endforeach
        </tr>
    </thead>

    <tbody>
        {{$index = 1}}
        <tr>
            <td>{{$index++}}</td>
            <td>Basic Salary</td>
            @foreach($payments as $payment)
            <td>{{$payment->basic_salary}}</td>
            @endforeach
        </tr>

        <tr>
            <td>{{$index++}}</td>
            <td>Transport Allowance</td>
            @foreach($payments as $payment)
            <td>{{$payment->transport_allowance}}</td>
            @endforeach
        </tr>
        <tr>
            <td>{{$index++}}</td>
            <td>Medical Allowance</td>
            @foreach($payments as $payment)
            <td>{{$payment->medical_allowance}}</td>
            @endforeach
        </tr>

        <tr>
            <td>{{$index++}}</td>
            <td>Lunch Allowance</td>
            @foreach($payments as $payment)
            <td>{{$payment->lunch_allowance}}</td>
            @endforeach
        </tr>

        <tr>
            <td>{{$index++}}</td>
            <td>Entertainment Allowance</td>
            @foreach($payments as $payment)
            <td>{{$payment->entertainment_allowance}}</td>
            @endforeach
        </tr>

        <tr>
            <td>{{$index++}}</td>
            <td>Provident Fund</td>
            @foreach($payments as $payment)
            <td>{{$payment->provident_fund}}</td>
            @endforeach
        </tr>
        <tr>
            <td>{{$index++}}</td>
            <td>Bonus</td>
            @foreach($payments as $payment)
            <td>{{$payment->bonus}}</td>
            @endforeach
        </tr>
        <tr>
            <td>{{$index++}}</td>
            <td>Total Earning</td>
            @foreach($payments as $payment)
            <td>{{$payment->total_earning}}</td>
            @endforeach
        </tr>
        <tr>
            <td>{{$index++}}</td>
            <td>Tax</td>
            @foreach($payments as $payment)
            <td>{{$payment->tax}}</td>
            @endforeach
        </tr>

        <tr>
            <td>{{$index++}}</td>
            <td>Other Deduction</td>
            @foreach($payments as $payment)
            <td>
            @for($i = 0; $i < sizeof($payment->deduction); $i++) {{$payment->deduction[$i]->type}} - {{$payment->deduction[$i]->amount}}
            <br> @endfor
            </td>
            @endforeach
        </tr>
        <tr>
            <td>{{$index++}}</td>
            <td>Total Deduction</td>
            @foreach($payments as $payment)
            <td>{{$payment->total_deduction}}</td>
            @endforeach
        </tr>

        <tr>
            <td>{{$index++}}</td>
            <td>Net Earning</td>
            @foreach($payments as $payment)
            <td>{{$payment->net_earning}}</td>
            @endforeach
        </tr>

    </tbody>
</table>

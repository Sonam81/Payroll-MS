<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePaymentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('payments', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('employee_id');
            $table->string('employee_name');
            $table->string('designation');
            $table->string('payment_from');
            $table->string('payment_till');
            $table->string('basic_salary');
            $table->double('transport_allowance')->nullable();
            $table->double('medical_allowance')->nullable();
            $table->double('entertainment_allowance')->nullable();
            $table->double('lunch_allowance')->nullable();
            $table->double('provident_fund')->nullable();
            $table->double('tax');
            $table->double('other_deduction')->nullable();
            $table->double('bonus')->nullable();
            $table->double('total_earning');
            $table->double('total_deduction');
            $table->double('net_earning');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('payments');
    }
}

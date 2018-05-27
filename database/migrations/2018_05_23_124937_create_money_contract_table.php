<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMoneyContractTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('money_contract', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('company_id');
            $table->unsignedInteger('packet_id');
            $table->date('start_of_contract');
            $table->date('end_of_contract');
            $table->boolean('active');
            $table->smallInteger('status');
            $table->boolean('facture_send')->nullable();
            $table->boolean('payment_done')->nullable();
            $table->date('date_of_payment');
            $table->text('comment')->nullable();
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
        Schema::dropIfExists('money_contracts');
    }
}

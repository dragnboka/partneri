<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDonatingContractTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('donating_contract', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('company_id');
            $table->unsignedInteger('packet_id');
            $table->date('start_of_contract');
            $table->date('end_of_contract');
            $table->text('description');
            $table->integer('amount')->nullable();
            $table->boolean('active');
            $table->smallInteger('status');
            $table->date('date_of_delivery');
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
        Schema::dropIfExists('donating_contracts');
    }
}

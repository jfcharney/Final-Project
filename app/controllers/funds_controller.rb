class FundsController < ApplicationController
  def index

  @funds = Fund.all

  end

  def show
    @fund = Fund.find(params[:id])

  end

  def new
    @fund = Fund.new
  end

  def create
    @fund = Fund.new
    @fund.fund_family = params[:fund_family]
    @fund.asset_class = params[:asset_class]
    @fund.fund_name = params[:fund_name]
    @fund.user_id = params[:user_id]

    if @fund.save
      redirect_to "/funds", :notice => "Fund created successfully."
    else
      render 'new'
    end
  end

  def edit
    @fund = Fund.find(params[:id])
  end

  def update
    @fund = Fund.find(params[:id])

    @fund.fund_id = params[:fund_id]
    @fund.fund_family = params[:fund_family]
    @fund.asset_class = params[:asset_class]
    @fund.fund_name = params[:fund_name]

    if @fund.save
      redirect_to "/funds", :notice => "Fund updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @fund = Fund.find(params[:id])

    @fund.destroy

    redirect_to "/funds", :notice => "Fund deleted."
  end
end

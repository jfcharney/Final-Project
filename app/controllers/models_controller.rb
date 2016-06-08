class ModelsController < ApplicationController
  def index
    @q = Model.ransack(params[:q])
    @models = @q.result(:distinct => true).includes(:fund)
  end

  def show
    @model = Model.find(params[:id])
  end

  def new
    @model = Model.new
  end

  def create
    @model = Model.new
    @model.currencies = params[:currencies]
    @model.commodities = params[:commodities]
    @model.fixed_income = params[:fixed_income]
    @model.equity = params[:equity]
    @model.time_period = params[:time_period]
    @model.fund_id = params[:fund_id]

    if @model.save
      redirect_to "/models", :notice => "Model created successfully."
    else
      render 'new'
    end
  end

  def edit
    @model = Model.find(params[:id])
  end

  def update
    @model = Model.find(params[:id])

    @model.currencies = params[:currencies]
    @model.commodities = params[:commodities]
    @model.fixed_income = params[:fixed_income]
    @model.equity = params[:equity]
    @model.time_period = params[:time_period]

    if @model.save
      redirect_to "/models", :notice => "Model updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @model = Model.find(params[:id])

    @model.destroy

    redirect_to "/models", :notice => "Model deleted."
  end
end

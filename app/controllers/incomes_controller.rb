class IncomesController < ApplicationController
  def new
    @income = Income.new
  end

  def create
    @income = Income.new(income_params)
    if @income.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    income = Income.find(params[:id])
    income.destroy
  end

  def edit
    @income = Income.find(params[:id])
  end

  def update
    @income = Income.find(params[:id])
    if @income.update(income_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  def income_params
    params.require(:income).permit(:money, :memo).merge(user_id: current_user.id)
  end
end

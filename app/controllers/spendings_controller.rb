class SpendingsController < ApplicationController
  def index
    @spendings = Spending.all
    @spending = Spending.group(:sort).sum(:money)
    @spend = current_user.spendings.group_by_day_of_month(:created_at).sum(:money)
  end

  def new
    @spending = Spending.new
  end

  def create
    @spending = Spending.new(spending_params)
    if @spending.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    spending = Spending.find(params[:id])
    spending.destroy
  end

  def edit
    @spending = Spending.find(params[:id])
  end

  def update
    @spending = Spending.find(params[:id])
    if @spending.update(spending_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def spending_params
    params.require(:spending).permit(:money, :memo, :sort, :start_time).merge(user_id: current_user.id)
  end
end

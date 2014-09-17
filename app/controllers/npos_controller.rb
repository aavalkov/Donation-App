class NposController < ApplicationController

  def index
    @npos = Npo.all
  end

  def new
    @npo = Npo.new
  end

  def create
    @npo = Npo.new(npo_params)
    if @npo.save
      flash[:notice] = "Your npo was created!"
      redirect_to npos_path
    else
      render 'new'
    end
  end

  def show
    @npo = Npo.find(params[:id])
  end

  def edit
    @npo = Npo.find(params[:id])
  end

  def update
    @npo = Npo.find(params[:id])
    if @npo.update(npo_params)
      flash[:notice] = "NPO updated"
      redirect_to npos_path
    else
      render 'edit'
    end
  end

  def destroy
    @npo = Npo.find(params[:id])
    @npo.destroy
    flash[:notice]= "NPO Deleted"
    redirect_to npos_path
  end

private

  def npo_params
    params.require(:npo).permit(:name, :description, :account, :balance)

  end
end

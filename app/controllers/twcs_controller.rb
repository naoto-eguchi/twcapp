class TwcsController < ApplicationController
  before_action :set_twc, only: [:show, :edit, :update, :destroy]

  def index
    @twcs = Twc.all
  end
  
  def new
    if params[:back]
      @twc = Twc.new(twc_params)
    else
      @twc=Twc.new
    end
  end
  
  def create
    @twc = Twc.create(twc_params)
    if @twc.save
    redirect_to twcs_path, notice: "ツイートしました！"
    else
    render "new"
    end
  end
  
  def edit
    @twc = Twc.find(params[:id])
  end
  
  def update
    @twc = Twc.find(params[:id])
    if @twc.update(twc_params)
      redirect_to twcs_path, notice: "編集しました！"
    else
      render "edit"
    end
  end
  
  def destroy
    @twc.destroy
    redirect_to twcs_path, notice: "削除しました！"
  end
  
  def confirm
    @twc = Twc.new(twc_params)
    render :new if @twc.invalid?
  end
  
  private
  def twc_params
    params.require(:twc).permit(:content)
  end
  
  def set_twc
    @twc = Twc.find(params[:id])
  end
end

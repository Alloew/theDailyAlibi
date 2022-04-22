class AlibisController < ApplicationController
  http_basic_authenticate_with name: "Tatas", password: "TatasPassword", except: [:index, :show]

  def index
    @alibis = Alibi.all
  end

  def show
    @alibi = Alibi.find(params[:id])
  end

  def new
    @alibi = Alibi.new
  end

  def create
    @alibi = Alibi.new(alibi_params)

    if @alibi.save
      redirect_to @alibi
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def alibi_params
      params.require(:alibi).permit(:title, :body)
    end
end

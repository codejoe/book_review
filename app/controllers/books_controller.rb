class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  def index
    @user = User.new
    @books = Book.order(:name).page params[:page]
  end
  def new
    @book = Book.new
  end

  def create
    #@book = Task.new(params[:book])
    @book = Book.new(params[:book])
    respond_to do |format|
      if @book.save
        format.html { redirect_to root_path }
        #format.json { render json: @book, status: :created, location: @book }
        #format.js { return render status: 200 }
      else
        #format.html { render action: "new" }
        #format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end
  def show
    @user = User.new
    
  end
  private
  #   # Use callbacks to share common setup or constraints between actions.
    def set_book
      ##ini untuk mendapatkan id dari url terakhir
      @book = Book.find(params[:id])
    end

  #   # Never trust parameters from the scary internet, only allow the white list through.
  #   def task_params
  #     params.require(:task).permit(:name, :completed)
  #   end
end

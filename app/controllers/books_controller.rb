class BooksController < ApplicationController
    before_action :set_book, only: [:show, :edit, :update, :destroy]

    def index
        @books = Book.all
    end

    def new
        @book = Book.new
    end

    def create
        @book = Book.new(book_params)
        
        respond_to do |format|
            if @book.save
              format.html { redirect_to @book, notice: 'Book was successfully created.' }
              format.json { render :show, status: :created, location: @book }
            else
              format.html { render :new }
              format.json { render json: @book.errors, status: :unprocessable_entity }
            end
          end
    end

    def show
    end

    def edit
    end

    private
    def set_book
        @book = Book.find(params[:id])
    end

    def book_params
        params.require(:book).permit(:name, :author, :price, :short_desc, :desc)
    end

end

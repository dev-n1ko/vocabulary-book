class WordsController < ApplicationController
  def index
    @words = Word.all
  end

  def search
    if params[:q].present?
      @words = Word.where("name LIKE ?","%#{params[:q]}%")
    end
  end
  
  def new
    @word = Word.new
  end

  def show
    @word = Word.find(params[:id])
  end

  def edit
    @word = Word.find(params[:id])
  end

  def update
    @word = Word.find(params[:id])
    if @word.update(word_params)
      redirect_to @word, notice: "単語を更新しました。"
    else
      render :edit
    end
  end

  def create
    @word = Word.new(word_params)
    if @word.save
      redirect_to new_word_path, notice: "単語を登録しました！"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def word_params
    params.require(:word).permit(:name, :explanation)
  end

end

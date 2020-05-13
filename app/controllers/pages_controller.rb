class PagesController < ApplicationController
  def home
    @word = Word.new
  end

  def output
  end
  
  def new
    @word = Word.new
  end
  
  def enter
    @word = Word.new(word_params)
    if @word.save
      flash[:success] = "単語の登録に成功しました！"
      redirect_to("/home")
    else
      render 'home'
    end
  end
  
  private

    def word_params
      params.require(:word).permit(:word, :meaning)
    end
  
end

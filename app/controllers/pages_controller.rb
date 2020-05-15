class PagesController < ApplicationController
  def home
    @words = Word.all
  end

  def output
  end
  
  def new
    @word = Word.new
  end
  
  def enter
    @word = Word.new(word_params)
    if @word.save
      flash[:success] = "単語の登録に成功しました"
      redirect_to("/home")
    else
      render 'home'
    end
  end
  
  def destroy
    Word.find_by(params[:id]).destroy
    flash[:success] = "単語を削除しました"
    redirect_to("/home")
  end
  
  private

    def word_params
      params.require(:word).permit(:word, :meaning)
    end
  
end

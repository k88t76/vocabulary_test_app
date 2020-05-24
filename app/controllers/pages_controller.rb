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
    if @word
      if @word.save
        flash[:success] = "単語の登録に成功しました"
        redirect_to("/home")
      else
        flash[:danger] = "単語の登録に失敗しました"
        @words = Word.all
        render 'home'
      end
    end
  end
  
  def destroy
    @word = Word.find(params[:id])
  if  @word.delete
    flash[:success] = "単語を削除しました"
  end
    redirect_to("/home")
  end
  
  def all_delete
    if Word.destroy_all
      flash[:success] = "単語を全て削除しました"
      redirect_to('/home')
    end
  end
  
  private

    def word_params
      params.require(:word).permit(:word, :meaning)
    end
  
end

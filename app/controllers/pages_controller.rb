class PagesController < ApplicationController
  def home
    @words = Word.all
    @word = Word.new
  end
  
  def new
    @word = Word.new(word_params)
      if @word.save
        flash[:success] = '単語の登録に成功しました'
        redirect_to(home_path)
      else
        flash.now[:danger] = '単語の登録に失敗しました'
        @words = Word.all
        
        render 'home'
      end
  end
  
  def destroy
    @word = Word.find(params[:id])
  if  @word.delete
    flash[:success] = '単語を削除しました'
  end
    redirect_to(home_path)
  end
  
  def edit
    @word = Word.find(params[:id])
  end
  
  def update
    @word = Word.find(params[:id])
    @word.update(word_params)
    redirect_to(home_path)
  end
  
  def all_delete
    if Word.destroy_all
      flash[:success] = '単語を全て削除しました'
      redirect_to(home_path)
    end
  end
  
  private
    def word_params
      params.require(:word).permit(:word, :meaning)
    end
  
end

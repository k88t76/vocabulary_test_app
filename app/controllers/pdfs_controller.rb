class PdfsController < ApplicationController
  def show_EtoJ
  @words = Word.all
  
  
   respond_to do |format|
   format.html
   format.pdf do
  render pdf: 'show1.pdf', #pdfファイルの名前。これがないとエラーが出ます
               layout: 'pdf_layouts.html', #レイアウトファイルの指定。views/layoutsが読まれます。
               template: 'pdfs/show_EtoJ' #テンプレートファイルの指定。viewsフォルダが読み込まれます。  
   end
   end
  end
  
    def show_JtoE
  @words = Word.all
  
  
    respond_to do |format|
    format.html
    format.pdf do
    render pdf: 'show2.pdf', #pdfファイルの名前。これがないとエラーが出ます
               layout: 'pdf_layouts.html', #レイアウトファイルの指定。views/layoutsが読まれます。
               template: 'pdfs/show_JtoE' #テンプレートファイルの指定。viewsフォルダが読み込まれます。  
    end
    end
    end
  
end

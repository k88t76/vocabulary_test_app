class PdfsController < ApplicationController
  def show
  @words = Word.all
  
  
   respond_to do |format|
   format.html
   format.pdf do
  render pdf: 'file_name.pdf', #pdfファイルの名前。これがないとエラーが出ます
               layout: 'pdf_layouts.html', #レイアウトファイルの指定。views/layoutsが読まれます。
               template: 'pdfs/show' #テンプレートファイルの指定。viewsフォルダが読み込まれます。  
   end
   end
  end
end

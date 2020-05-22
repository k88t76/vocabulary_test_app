class PdfsController < ApplicationController
  

  
  
  def show_EtoJ
  @words = Word.all
  @c = 0
   respond_to do |format|
   format.pdf do
  render pdf: 'show1', 
               layout: 'pdf_layouts.html',
               template: 'pdfs/show_EtoJ'
   end
   end
  end
  
    def show_JtoE
  @words = Word.all
  @c = 1
    respond_to do |format|
    format.pdf do
    render pdf: 'show2', 
               layout: 'pdf_layouts.html', 
               template: 'pdfs/show_JtoE' 
    end
    end
    end
  
end

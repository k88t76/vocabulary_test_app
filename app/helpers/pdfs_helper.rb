module PdfsHelper
  
  def layout(n)
    if  n < 5
      return "margin-top:#{25*n*n - 245*n + 820}px;"
    elsif n < 7
      return "margin-top:#{-35*n + 375}px;"
    elsif n < 15
      return "margin-top:#{(n*n/2) - (41*n/2) + 254 }px;"
    else
      return "margin-top: 59px;"
    end
  end
  
end

module PdfsHelper
  def layout(n)
    if n < 15
      return "margin-top:#{(n*n/2) - (41*n/2) +254 }px;"
    else
      return "margin-top: 59px;"
    end
  end
end

Rails.application.routes.draw do
  
  get ("/") , { :controller => "casino" , :action => "deloitte"}

  get ("/square/new") , { :controller => "casino" , :action => "ey"}

  get ("/square/results") , { :controller => "casino" , :action => "pwc"}

  get ("/square_root/new") , { :controller => "casino" , :action => "kpmg"}

  get ("/square_root/results") , { :controller => "casino" , :action => "boa"}

  get ("/payment/new") , { :controller => "casino" , :action => "citi"}

  get ("/payment/results") , { :controller => "casino" , :action => "chase"}

  get ("/random/new") , { :controller => "casino" , :action => "jpm"}

  get ("/random/results") , { :controller => "casino" , :action => "goldman"}

end

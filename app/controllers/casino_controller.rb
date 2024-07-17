class CasinoController < ApplicationController

  #home page
  def deloitte
    render ({ :template => "bank_temp/deloitte"})
  end

#square/new
  def ey
  
  
    render ({ :template => "bank_temp/ey"})
  end

#square/results
  def pwc
    
    @the_num = params.fetch("users_number").to_f

    @the_result = @the_num**2
  

    render ({ :template => "bank_temp/pwc"})
  end

#square_root/new
  def kpmg
  
    render ({ :template => "bank_temp/kpmg"})
  end

#square_root/results
  def boa
    @the_num = params.fetch("users_number").to_f

    @the_result = @the_num**(0.5)

    render ({ :template => "bank_temp/boa"})
  end

#payment/new
  def citi
    

    render ({ :template => "bank_temp/citi"})
  
  end

#payment/results
  def chase
    @the_apr = params.fetch("APR").to_f
    @the_years = params.fetch("number_years").to_f
    @the_principal = params.fetch("principal").to_f

    @n_periods = @the_years * -12
    @rate = @the_apr/12/100

    @numerator = @rate * @the_principal

    @denominator_one = (1 + @rate) ** @n_periods
    @denominator = 1 - @denominator_one

    @the_payment = @numerator / @denominator
    @the_payment_refined = @the_payment.to_fs(:currency) 

    render ({ :template => "bank_temp/chase"})
  end
   
 #random/new 
  def jpm
    
    
    render ({ :template => "bank_temp/jpm"})
  end  
   
 #random/results 
  def goldman
    @min = params.fetch("minimum").to_f
    @max = params.fetch("maximum").to_f
  
    @the_results = rand(@min...@max)
    
    render ({ :template => "bank_temp/goldman"})
  end
    

end

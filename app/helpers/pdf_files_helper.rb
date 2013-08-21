module PdfFilesHelper
	def calculate_rating rating
	  # alt * (3/4) + neu * (1/4)
	  alt = @pdf_file.rating
	  neu = rating
	  anz = @pdf_file.counter+1.0
	  erg = 0
	  
       

      if anz == 1
      	erg = neu
      else 
            erg = alt * (anz-1) /anz + neu * 1 / anz


      end
      	
      return erg


  	end
end

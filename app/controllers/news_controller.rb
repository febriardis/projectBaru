class NewsController < ApplicationController

    def index
  		@kiriman = News.new
  		@koment = Komentar.new
  		@news = News.all
  	end

  	def postKiriman
  		@kiriman = News.new(params_kiriman)
  		if @kiriman.save
  			redirect_to news_path
  		else
  			render plain: 'gagal'
  		end
  	end

    def hapusKiriman
      @kiriman = News.find(params[:id])
      if @kiriman.delete
        redirect_to news_path
      else
        render plain: 'gagal'
      end
    end

  	def postKomentar
  		@koment = Komentar.new(params_koment)
  		if @koment.save
  			redirect_to news_path
  		else
  			render plain: 'gagal'
  		end
  	end

  	private
  	def params_kiriman
  		params.require(:news).permit(:idUser, :kirimanUser)
  	end

  	def params_koment
  		params.require(:komentar).permit(:idUser, :idKiriman, :komentarUser)
  	end

end

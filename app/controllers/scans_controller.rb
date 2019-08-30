require 'nokogiri'
require 'open-uri'

class ScansController < ApplicationController

  def create
    begin
      @scan = Scan.new(scan_params)
      if @scan.save
        split_url = @scan.photo.metadata["url"].split("upload/")
        formatted_url = split_url[0] + "upload/w_400,c_scale/" + split_url[1]
        url = "http://zxing.org/w/decode?full=true&u=#{formatted_url}"
        html_file = open(url).read
        html_doc = Nokogiri::HTML(html_file)
        barcode = html_doc.search('pre').first.inner_text
        @beer = Beer.find_by(upc: barcode)
        redirect_to beer_path(@beer)
      else
        render :new
      end
    rescue
      flash[:alert] = ''
      redirect_to beers_path
    end
  end

  private

  def scan_params
    params.require(:scan).permit(:photo)
  end
end

require 'open-uri'
class ParsingsController < ApplicationController
  before_action :set_parsing, only: [:show, :edit, :update]

  def index
  end

  # GET /parsings/new
  def new
    @parsing = Parsing.new
    @app_links = []
  end

  # GET /parsings/1/edit
  def edit
  end

  # POST /parsings
  # POST /parsings.json
  def create
    @parsing = Parsing.new(parsing_params)
    @app_links = []
    links = @parsing.link.split("\r\n")
    puts links.inspect

    links.each do |link|
      doc = Nokogiri::HTML(open(link))

      metas = doc.css('meta')

      metas.each do |meta|
        property = meta['property']
        name = meta['name']
        content = meta['content']
        @app_links << [property, name, content]
      end
    end
    render 'new'
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parsing
      @parsing = Parsing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parsing_params
      params.require(:parsing).permit(:link)
    end
end

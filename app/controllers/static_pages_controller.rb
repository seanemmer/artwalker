class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end

  def map
  	@galleries = Gallery.all
  end

  def gallerydata
    @gallery = Gallery.find_by_id(params[:gallery_id])
    render partial: 'shared/gallery_detail'
  end
end

class PicturesController < ApplicationController

    def latest
        @photos = Photo.order({:created_at => :desc}).limit(25)
        render("/pic_templates/recent.html.erb")
    end



end
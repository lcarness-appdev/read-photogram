class PicturesController < ApplicationController

    def latest
        @photos = Photo.order({:created_at => :desc}).limit(25)
        render("/pic_templates/recent.html.erb")
    end

    def show_details
        photo_id = params.fetch("pic_id")
        @picture = Photo.where({:id => photo_id}).at(0)
        render("pic_templates/details.html.erb")
    end
end
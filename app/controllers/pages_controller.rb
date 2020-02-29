class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    lol = "overwatch2.mp4"
    dota2 = "dota2_blackhole.mp4"
    cs = "HatefulHauntingAngora.webm"

    @video = cs

    if current_user.try(:show_game) == "lol"
      @video = lol
    end
    #config.assets.paths << "#{Rails.root}/app/assets/videos"
    # <video autoplay="autoplay" loop="loop" muted="muted" src="<%= @video %>"></video>
    # <%= video_tag "dota2_blackhole.mp4" %>
  end
end

class HomeController < ApplicationController

    def index
        @groups = current_user.groups 
        @users_in_groups = {}
      
        @groups.each do |group|
          @users_in_groups[group] = group.users
        end
    end













end
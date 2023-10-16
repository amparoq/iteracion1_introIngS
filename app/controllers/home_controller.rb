class HomeController < ApplicationController

    def index
        @groups = current_user.groups 
        @users_in_groups = {}
      
        @groups.each do |group|
          @users_in_groups[group] = group.users
        end
        @tasks = Task.where(group_id: @groups.pluck(:id),status: 0)
    end













end
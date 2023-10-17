class NotificationsController < ApplicationController
    def index
        @tasks = Task.all
        @next_to_end_date = @tasks.where("end_date <= ? AND end_date >= ?", Time.zone.now.to_date + 3, Time.zone.now.to_date)
        @expired = @tasks.where("end_date < ?", Time.zone.now.to_date)
        @updates_today = @tasks.where("DATE(updated_at) = ?", Time.zone.now.to_date)
        @tasks_created_today = Task.where("DATE(created_at) = ?", Time.zone.now.to_date)
    end
end

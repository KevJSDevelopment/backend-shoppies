class NominationsController < ApplicationController

    def create
        nomination = Nomination.find_by(title: params[:title])
        if nomination
            nomination.update(total: nomination.total + 1)
            render json: 
            {
                auth: true,
                nomination: nomination,
                message: "Nomination updated"
            }   
        else
            nomination = Nomination.new(title: params[:title], year: params[:year], total: 1)
            if nomination.save
                render json: 
                {
                    auth: true,
                    nomination: nomination,
                    message: "Nomination created"
                }  
            else
                render json: 
                {
                    auth: false,
                    nomination: nomination,
                    message: "Failed to create nomination"
                }  
            end

        end
    end

    def index

    end
    
end

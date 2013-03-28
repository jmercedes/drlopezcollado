class LeadStepsController < ApplicationController
   include Wicked::Wizard
    steps :personal, :location
    
    def show
      render_wizard
    end
end

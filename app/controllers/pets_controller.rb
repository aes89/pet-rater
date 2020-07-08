class PetsController < ApplicationController
    def index
        @pets = Pet.all
    end

    def new
        @pets = Pet.new
    end

    def create
        @pets = Pet.create(pets_params)
        if @pets.errors.any?
            set_sexes
            render "new"
        # need to say "render "new"", using just "new" is calling the whole method.
        else 
            redirect_to pets_path
        end 
    end

    def show
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private
    def set_sexes
        @sexes = Pet.sexes.keys
     end
end

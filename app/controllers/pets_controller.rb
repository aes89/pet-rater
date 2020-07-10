class PetsController < ApplicationController
    before_action :set_pet, only: [:show, :edit, :update, :destroy]
    before_action :set_sexes, only: [:new, :edit, :update]


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
        @pets = Pet.find(params[:id])
    end

    def edit
    end

    def update
        @pets = Pet.find(set_pet[:id])
        @pets.update_attributes(pets_params)
        if  @pets.save
            redirect_to "/pets", :notice => "Successfully changed stat."
         else
             render 'edit_pet_path' # Any action here, index for example
         end
    end

    def destroy
        @pets = Pet.find(params[:id])
        @pets.destroy

        redirect_to pets_path
    end

    private

    def set_pet
        id = params[:id]
        @pets = Pet.find(id)
    end

    def pets_params
        params.require(:pet).permit(:name, :species, :sex, :date_of_birth)
   end

    def set_sexes
        @sexes = Pet.sexes.keys
     end
end

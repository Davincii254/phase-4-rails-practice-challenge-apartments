class ApartmentController < ApplicationController

    def index
        render json: Apartment.all
    end

    def show
        apartment = find_apartment
        render json: apartment
    end

    def create
        apartment = Apartment.create(apar_params)
        render json: apartment, status: :created
    end

    def update
        apartment = find_apartment
        apartment.update(apartment_params)
        render json: apartment, status: :ok
    end 

    def destroy
        apartment = find_apartment
        apartment.destroy
        head :no_content
    end


end

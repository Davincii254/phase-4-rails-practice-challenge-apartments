class LeaseController < ApplicationController

    def create
        leases = Lease.create(Lease_params)
        render json: lease, status: :created
    end


    def destroy
        lease = find_lease
        lease.destroyhead :no_content
    end


    private

    def find_lease
        Lease.find(params[:id])
    end

    def Lease_params
        params.permit(:rent, :tenant_id,  :apartment_id)
end

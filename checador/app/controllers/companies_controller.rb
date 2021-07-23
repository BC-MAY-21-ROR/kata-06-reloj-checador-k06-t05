class CompaniesController < ApplicationController
   
    def index
        @companies = CompanyBranch.all
      end
      
      def new
        @companies = CompanyBranch.new
      end
    
      def create
        @companies = CompanyBranch.new(company_params)
        @companies.save
        redirect_to companies_path
      end
    
      def edit
        set_company
      end
    
      def update
        set_company
        @companies.update(company_params)
      end
    
      def destroy
        set_company
        @companies.destroy
        redirect_to companies_path
      end
    
    
      private
      def company_params
        params.require(:company).permit(:name, :address)
      end
    
      def set_company
        @companies = CompanyBranch.find(params[:id])
      end
end

class CompaniesController < ApplicationController
  before_action :set_company, only: [:edit, :show, :update, :destroy]

  def index
    @home = Home.find(params[:home])
    @companies = @home.companies
  end

  def show
  end

  def edit
  end

  def update
  end

  def new
  end

  def create
  end

  def destroy
  end

  protected
    def company_params
      params.require[:company].permit(:alias, :since, :until, :status, :periodicity, :home)
    end

    def set_company
      @company = Company.find(params[:id])
    end
end

class CollegesController < ApplicationController
  before_action :authenticate_student!, only: [:edit, :update, :destroy]

  def index
  end

  def new
  end

  def edit
  end

  def show
  end
end

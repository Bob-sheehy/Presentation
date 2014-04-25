class StudentController < ApplicationController
  skip_before_action :authorize

  def index
      @deals = Deal.where(:category => 'Student Deal')

  end

  def show
  end
end

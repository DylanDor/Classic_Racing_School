class DrivingCoursesController < ApplicationController
  before_action :set_driving_course, only: %i[ show edit update destroy ]

  # GET /driving_courses or /driving_courses.json
  def index
    @driving_courses = DrivingCourse.all
  end

  # GET /driving_courses/1 or /driving_courses/1.json
  def show
    @driving_course = DrivingCourse.find(params[:id])
  end

  # GET /driving_courses/new
  def new
    @driving_course = DrivingCourse.new
  end

  # GET /driving_courses/1/edit
  def edit
  end

  # POST /driving_courses or /driving_courses.json
  def create
    @driving_course = DrivingCourse.new(driving_course_params)

    respond_to do |format|
      if @driving_course.save
        format.html { redirect_to driving_course_url(@driving_course), notice: "Driving course was successfully created." }
        format.json { render :show, status: :created, location: @driving_course }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @driving_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /driving_courses/1 or /driving_courses/1.json
  def update
    respond_to do |format|
      if @driving_course.update(driving_course_params)
        format.html { redirect_to driving_course_url(@driving_course), notice: "Driving course was successfully updated." }
        format.json { render :show, status: :ok, location: @driving_course }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @driving_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /driving_courses/1 or /driving_courses/1.json
  def destroy
    @driving_course.destroy

    respond_to do |format|
      format.html { redirect_to driving_courses_url, notice: "Driving course was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_driving_course
      @driving_course = DrivingCourse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def driving_course_params
      params.require(:driving_course).permit(:title, :description, :date, :quantity, :price)
    end
end

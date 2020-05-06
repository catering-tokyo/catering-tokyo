class Shops::CoursesController < ApplicationController
  def index
    @courses = current_shop.courses
  end

  def new
    @courses = Course.new
  end

  def create
    @course = Course.new(course_params)
    @course.shop_id
    @course.shop_id = current_shop.id
    if @course.save
      flash[:notice] = '登録できました'
      redirect_to shops_shop_path(current_shop.id)
    else
      flash[:notice] = '入力し切れていませんでした。'
      @course = current_shop.courses
      redirect_to request.referer
    end
  end

  def show
    @course = Course.find(params[:id])
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    if @course.update(course_params)
      flash[:notice] = '住所を編集しました！'
      redirect_to shops_courses_path(params[:id])
    else
      flash[:notice] = '入力し切れていませんでした。'
      @courses = current_shop.courses
      redirect_to request.referer
    end
  end

  def destroy
    course = Course.find(params[:id])
    course.destroy
    redirect_to shops_courses_path(current_shop.id)
  end

  private

  def course_params
    params.require(:course).permit(:shop_id, :introduction, :name, :course_image_id, :people_number, :maximum_people, :minimum_people, :price)
  end
end

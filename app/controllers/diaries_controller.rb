class DiariesController < ApplicationController
  before_action :authenticate_user!
  def index
    @diaries = Diary.all.order('created_at desc')
    @diaries_count = current_user.diaries.length
  end

  def new
  end

  def create
    @params = params
    @title = params[:diary][:title]
    @content = params[:diary][:content]

    new_diary = Diary.new
    new_diary.user = current_user
    new_diary.title = @title
    new_diary.content = @content
    new_diary.save

    redirect_to diaries_path
  end
  
  def destroy
    Diary.destroy(params[:id])
    redirect_to diaries_path
  end

end

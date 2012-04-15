class StudiesController < ApplicationController
  def index
    @studies = Study.all
  end

  def show
    @study = Study.find(params[:id])
  end

  def new
    @study = Study.new
  end

  def create
    @study = Study.new(params[:study])
    if @study.save
      UserMailer.notice_to_doc(@study).deliver
      redirect_to @study, :notice => "Successfully created study."
    else
      render :action => 'new'
    end
  end

  def edit
    @study = Study.find(params[:id])
  end

  def update
    @study = Study.find(params[:id])
    if @study.update_attributes(params[:study])
      redirect_to @study, :notice  => "Successfully updated study."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @study = Study.find(params[:id])
    @study.destroy
    redirect_to studies_url, :notice => "Successfully destroyed study."
  end
end

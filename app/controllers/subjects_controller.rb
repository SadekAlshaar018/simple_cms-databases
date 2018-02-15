class SubjectsController < ApplicationController
  # reading list
  def index
    @subjects = Subject.sorted
  end

  def show
    @subject = Subject.find(params[:id])
  end

# create a new list or subject
  def new
    @subject = Subject.new(:name => 'default')
  end

  def create
    # to create a new subject we have to follow :
    # instantiate a new object using form parameters
    @subject = Subject.new(subject_params)
    # save the object
    if @subject.save
    # if saving success redirect to index of what ever we want
    flash[:notice] = "Subject '#{@subject.name}' Created a successfully."
    redirect_to(subjects_path)
    else
    # if saving false redisplay the form with errors to fixed door user
    render('new')
    end
  end

  # editing a list or subject
  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    # to Update a new subject we have to follow :
    # find a object using form parameters
    @subject = Subject.find(params[:id])
    # Update the object
    if @subject.update_attributes(subject_params)
    # if saving success redirect to index of what ever we want
    flash[:notice] = "Subject '#{@subject.name}' Updated a successfully."
    redirect_to(subject_path(@subject))
    else
    # if saving false redisplay the form with errors to fixed door user
    render('edit')
    end

  end

# deleting a list or subject
  def delete
    @subject = Subject.find(params[:id])
  end

  def destroy
    @subject = Subject.find(params[:id])

    @subject.destroy
    flash[:notice] = "Subject '#{@subject.name}' Destroyed a successfully."
    redirect_to(subjects_path)

  end

  private

  def subject_params
    params.require(:subject).permit(:name, :position, :visible)

  end
end

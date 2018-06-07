class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new

  end

  def create
    @question = Question.new
    @question.body = params[:question][:body]
    @question.answered = params[:question][:answered]
    @question.name = params[:question][:name]
    @question.save
    redirect_to '/questions'
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @question.body = params[:question][:body]
    @question.answered = params[:question][:answered]
    @question.name = params[:question][:name]
    @question.save
    redirect_to root_path
    # redirect_to questions_path
  end


  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to root_path
  end
end

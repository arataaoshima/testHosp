class QuizzesController < ApplicationController
  before_action :set_quiz, only: [:show, :edit, :update, :destroy]

  # GET /quizzes
  # GET /quizzes.json
  def index
    @quizzes = Quiz.all
  end

  def exam_gate
    @quiz= Quiz.where(material_id:params[:id]).find_by(suborder: params[:suborder]);
  end

  def exam_check
    @quiz = Quiz.find_by(id: params[:id])

      if @quiz.answer_text == params[:answer]
        material_id = @quiz.material_id;
        next_quiz_id = @quiz.suborder + 1;
        if next_quiz_id == 6
         redirect_to ("/quizzes")
      else
        redirect_to("/quizzes/exam_gate/#{material_id}/#{next_quiz_id}");
      end
        #redirect_to("/quizzes")
      else
        #redirect_to("/quizzes/new")
        render "exam_gate"
        #redirect_to("/exam_gate/#{material_id}/#{next_quiz_id}");
      end
  end

  def exam
    @quiz = Quiz.find(params[:id])
  end

  # GET /quizzes/1
  # GET /quizzes/1.json
  def show
  end

  # GET /quizzes/new
  def new
    @quiz = Quiz.new
  end

  # GET /quizzes/1/edit
  def edit
  end

  # POST /quizzes
  # POST /quizzes.json
  def create
    @quiz = Quiz.new(quiz_params)

    respond_to do |format|
      if @quiz.save
        format.html { redirect_to @quiz, notice: 'Quiz was successfully created.' }
        format.json { render :show, status: :created, location: @quiz }
      else
        format.html { render :new }
        format.json { render json: @quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quizzes/1
  # PATCH/PUT /quizzes/1.json
  def update
    respond_to do |format|
      if @quiz.update(quiz_params)
        format.html { redirect_to @quiz, notice: 'Quiz was successfully updated.' }
        format.json { render :show, status: :ok, location: @quiz }
      else
        format.html { render :edit }
        format.json { render json: @quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quizzes/1
  # DELETE /quizzes/1.json
  def destroy
    @quiz.destroy
    respond_to do |format|
      format.html { redirect_to quizzes_url, notice: 'Quiz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz
      @quiz = Quiz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quiz_params
      params.require(:quiz).permit(:title, :content, :answer, :material_id, :suborder, :select1, :select2, :select3, :answer_text)
    end
end

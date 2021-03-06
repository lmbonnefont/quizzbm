class QuestionsController < ApplicationController



  def show
    if questions_available?
      @user = current_user
      answered = @user.answered_questions
      questions = Question.where.not(id: answered) #On trouve une question qui n'a pas encore été répondue par le user
      @question = questions.sample
      @user.current_question = @question.id #On store la question à laquelle est le user pour pouvoir la retrouver dans la méthode check ensuite
      @user.save

      @answer = Answer.new

      employees = Employee.where.not(id: @question.correct_answer.id) #On sélectionne les employees qui ne sont pas la bonne réponse à la question
      employee = employees.sample
      @possible_answers = ["#{@question.correct_answer.surname} #{@question.correct_answer.name}", "#{employee.surname} #{employee.name}"]
      @possible_answers.shuffle! #On mélange le tableau pour que la bonne réponse ne soit pas ts en 1ere position

    else
      flash[:error] = "You have already answered all the questions. Ask the King of ragots for more secrets!"
      redirect_to employees_path
      end


  end

  def new
    @question = Question.new
    @employee = Employee.all
  end

  def create
    question = Question.new
    question.label =  question_params["label"]
    question.correct_answer =  Employee.find(question_params["correct_answer"])
    question.save
    flash[:correct] = "Question created"
    redirect_to employees_path
  end




  def check
    answer_user = params[:answer][:employee]
    current_question = Question.find(current_user.current_question)
    correct_answer = "#{current_question.correct_answer.surname} #{current_question.correct_answer.name}" #On compare la réponse du user avec la réponse correcte. Un peu dégueu. A refacto

    if answer_user == correct_answer
      current_user.answered_questions.push(current_question.id)
      flash[:correct] = "Correct, Good job! Keep going!"

    else
      flash[:incorrect] = "Wrong! Try Again!"
    end

    current_user.total_attempts += 1
    current_user.score = current_user.answered_questions.length.fdiv(current_user.total_attempts) #On update le score du user (1 essai en plus)
    current_user.save

    redirect_to question_path(1)
  end

private

  def questions_available?
    if current_user.answered_questions.length == Question.all.length
      return false
    else
      return true
    end
  end

  def question_params
    params.require(:question).permit(:label, :correct_answer)
  end

end

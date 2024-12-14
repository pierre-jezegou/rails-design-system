# test/components/previews/button_component_preview.rb
class QuizComponentPreview < Lookbook::Preview
  def default
    render QuizAnswerComponent.new(text: "Essai de texte 2") do |quiz_answer|
      quiz_answer.with_status_badge(icon: "check", square: true, type: :success)
    end
  end

  def complete_quiz
    render QuizComponent.new(question: "Essai de question vide pour le moment ?") do |quiz|
      quiz.with_answers([
        { text: "Essai 1" },
        { text: "Essai 2" },
        { text: "Essai 3" },
        { text: "Essai 4" }
          ])
    end
  end

  def image
    render QuizImageComponent.new
  end
end

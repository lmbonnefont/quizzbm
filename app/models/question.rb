class Question < ApplicationRecord
  belongs_to :correct_answer, class_name: 'Employee'
end

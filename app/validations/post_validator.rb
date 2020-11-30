# class PostValidator < ActiveModel::Validator
#   def validate(record)
#     if record.title
#       unless ["Won't Believe", "Secret", "Top", "Guess"].any? { |bait| record.title.include? bait }
#         false
#       end
#     end
#   end
# end
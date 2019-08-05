json.extract! quiz, :id, :title, :content, :answer, :created_at, :updated_at
json.url quiz_url(quiz, format: :json)

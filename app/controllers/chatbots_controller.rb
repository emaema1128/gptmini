class ChatbotsController < ApplicationController

  def index
     @chatbots = Chatbot.all.order("created_at DESC")
  end

  def create
    prompt = params[:prompt]
    service = ChatGptService.new
    response = service.chat(prompt)
    render json: { response: response }
  end
end

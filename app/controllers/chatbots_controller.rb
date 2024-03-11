class ChatbotsController < ApplicationController

  def index
    @chatbot = Chatbot.new
    @chatbots = Chatbot.all.order("created_at DESC")
  end

  def create
    # p params[:chatbot][:content]
    prompt = params[:chatbot][:content]
    service = ChatGptService.new
    response = service.chat(prompt)
    render json: { response: response }
  end
end

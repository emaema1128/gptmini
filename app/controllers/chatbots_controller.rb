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
    # p response
    @chatbot = Chatbot.new(content: prompt, response: response)
    if @chatbot.save
      redirect_to chatbots_path, notice: 'Chatbot was successfully created.'
    else
      redirect_to chatbots_path, alert: 'Failed to create chatbot.'
    end
  end

end
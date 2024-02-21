class ChatbotsController < ApplicationController
  
  def index
    @posts = Post.order(id: "DESC")
  end

  def create
    prompt = params[:prompt]
    service = ChatGptService.new
    response = service.chat(prompt)
    render json: { response: response }
  end
end

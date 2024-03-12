class CreateChatbots < ActiveRecord::Migration[7.0]
  def change
    create_table :chatbots do |t|
      t.text :content
      t.string :response
      t.timestamps
    end
  end
end

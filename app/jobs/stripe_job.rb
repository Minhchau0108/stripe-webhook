class StripeJob < ApplicationJob
  queue_as :default

  def perform(data)
    # Your code to handle the webhook goes here
    # For example, you might want to parse the JSON from the webhook
    puts "Processing Job with data: #{data}"
    # Then, you can do something with the data
    # For example, you might want to create a new record in your database
    # Record.create(data: data)
  end
end
class StripeJob < ApplicationJob
  queue_as "test-stripe-queue"

  def perform(data)
    puts "Processing Stripe data: #{data}"
  end
end
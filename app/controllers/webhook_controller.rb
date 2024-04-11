class WebhookController < ApplicationController
    skip_before_action :verify_authenticity_token

    def receive
        # Your code to handle the webhook goes here
        # For example, you might want to parse the JSON from the webhook
        request_body = request.body.read
        data = JSON.parse(request_body)
        StripeJob.perform_later(data)

        # Then, you can do something with the data
        # For example, you might want to create a new record in your database
        # Record.create(data: data)

        # Finally, you should return a response to acknowledge receipt of the webhook
        head :ok
    end
end
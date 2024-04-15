class WebhookController < ApplicationController
    skip_before_action :verify_authenticity_token

    def receive
        request_body = request.body.read
        data = JSON.parse(request_body)
        StripeJob.perform_later(data)
        head :ok
    end
end
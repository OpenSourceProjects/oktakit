module Oktakit
  class Client
    module Identity
      def userinfo(token, options = {})
        post("/oauth2/#{@auth_server_id}/v1/userinfo", options.merge(headers: {
          authorization: "Bearer #{token}",
        }))
      end
    end
  end
end

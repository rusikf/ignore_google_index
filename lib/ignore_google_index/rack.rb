module IgnoreGoogleIndex
  class Rack
    def initialize(app)
      @app = app
    end

    def call(env)
      status, headers, response = @app.call(env)

      if ENV['IGNORE_GOOGLE_INDEX'] == '1'
        headers['X-Robots-Tag'] = 'none'
      end

      [status, headers, response]
    end
  end
end

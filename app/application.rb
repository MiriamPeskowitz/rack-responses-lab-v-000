require 'pry'
class Application

  # def call(env)
  #   resp = Rack::Response.new
  #   t = Time.now
  #     if t.hour <=12
  #       resp.write "Good Morning!"
  #     else
  #       resp.write "Good Afternoon!"
  #     end
  #
  #   resp.finish
  # end
  def call(env)
    @@items = ["Apples","Carrots","Pears"]
 
      def call(env)
        resp = Rack::Response.new
        req = Rack::Request.new(env)
     
        @@items.each do |item|
          resp.write "#{item}\n"
        end
 
      resp.finish
    end


end

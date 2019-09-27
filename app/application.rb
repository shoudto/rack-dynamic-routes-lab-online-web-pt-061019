class Application

    @@item = ["Apples","Carrots","Pears"]
 
    def call(env)
      resp = Rack::Response.new
      req = Rack::Request.new(env)
      


      if req.path.match(/items/) 
        @@item.each do |item|
          resp.write "#{item}\n"
        end
      else
        resp.write "Route not found"
        resp.status = 404		
      end
   
      resp.finish
    end
  end
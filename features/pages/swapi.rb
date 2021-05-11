module Swapi
  class Methods
    include HTTParty

    headers "Content-Type" => "application/json; charset=UTF-8"

    # base_uri URL[AMBIENTE]["gateway-selo"] + ENDPOINT["selo"]
    base_uri URL[AMBIENTE]["swapi"]

    def consult_swapi(attr)
      case attr
      when "films"
        res = self.class.get("/#{attr.to_sym}/")
      when "planets"
        res = self.class.get("/#{attr.to_sym}/")
      else
        res = self.class.get("/#{attr.to_sym}")
      end
      res
    end
  end
end
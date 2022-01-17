module RegisterService
    include HTTParty
  
    base_uri 'https://portal.vr.com.br/api-web/comum/enumerations/VRPAT'.to_s
    headers 'Content-Type' => 'application/json'
    format :json
end


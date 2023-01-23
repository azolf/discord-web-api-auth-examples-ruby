def process_user_info(request, response)
  result = RubyOuath::ProviderClient.user_info(request.header['authorization'].first)
  render_json(result.to_json, response)
end
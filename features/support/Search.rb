class Search
  include PageObject

  page_url 'http://amazon.com'

  # arg coming from feature?
  text_field(:text, :id => 'twotabsearchtextbox').set "#{arg}"
  send_keys :return
end

class SearchResult
  include PageObject

  select_list(:id => "resut_2").wait_until_present
  # xpath here?
  div(:id => "resultscol", :xpath => "#{arg}")
  # assert is from which library

end
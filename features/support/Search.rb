class Search
  include PageObject

  page_url 'http://amazon.com'

  # arg coming from feature?
  text_field(:search_for_items, :id => 'twotabsearchtextbox')
  button(:submit, :value => 'Go')
  #send_keys :return
end

class SearchResult
  include PageObject

  span(:response, :id => 'editableBreadcrumbContent')
  #select_list(:item_search_results, :id => "result_2")
  # xpath here? how to get 'pens' as arg
  #span(:response, :xpath => '//span[id="editableBreadcrumbContent"]')
  # assert is from which library

end
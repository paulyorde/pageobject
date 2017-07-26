Given(/^a user goes to Amazon$/) do
  visit_page Search
end

When(/^they search for pens$/) do
  # how to use page object here?
  on_page Search do |page|
    page.search_for_items='pens'
    # how to set parameter for return
    #page.send
    page.submit
    sleep 2
  end
end

Then(/^amazon should return results for pens$/) do
    on_page SearchResult do |page|
    #x = page.response
    expect(page.response).to include 'pens'
  end

end

Given(/^using Amazon$/) do
  visit_page Search
end

When(/^search for "([^"]*)"$/) do |arg|
  on_page Search do |page|
    page.search_for_items=arg
    # how to set parameter for return
    #page.send
    page.submit
    sleep 2
    end
end


Then(/^amazon returns results for "([^"]*)"$/) do |arg1|
    on_page SearchResult do |page|
    expect(page.response).to include arg1
  end
end



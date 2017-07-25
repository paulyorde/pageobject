Given(/^a user goes to Amzon$/) do
  visit_page Search
end

When(/^they search for "([^"]*)"$/) do |arg|
  # how to use page object here?
  on_page Search do |page|
    page.text = 'search for'
    # how to set parameter for return
    page.send
    sleep 2
  end
end

Then(/^amazon should return results for "([^"]*)"$/) do |arg|
  on_page SearchResult do |page|
    expect(page.response).to include? "#{arg}"
  end
end
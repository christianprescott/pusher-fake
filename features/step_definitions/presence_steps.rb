Then /^I should see (\d+) clients?(?: with the name "([^"]+)")?$/ do |count, name|
  within("section") do
    expect(page).to have_css("header h1 span", text: count)
    expect(page).to have_css("ul li", count: count.to_i, text: name)
  end
end

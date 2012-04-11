Given /^I am a registed user$/ do
	@user = User.create(:name => "zhuzhe", :pwd => "zhuzhe")
end

Given /^I sign in$/ do
	visit login_path
	within("#session") do
		fill_in 'name', :with => 'zhuzhe'
		fill_in 'pwd', :with => 'zhuzhe'
	end
	click_on 'Sign in'
	current_path.should == root_path
end

Given /^I visit home page$/ do
	visit root_path
end

Given /^I can see favorite assets has favorited$/  do
	page.should have_css('.thumbnails')
end

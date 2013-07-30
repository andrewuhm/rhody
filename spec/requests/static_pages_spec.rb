require 'spec_helper'

describe "StaticPages" do

	let(:base_title) { "Study Guide Quizzes" }

	describe "Home page" do
		it "should have the content 'Quizzes'" do
			visit '/static_pages/home'
			expect(page).to have_content('Quizzes')
		end

		it "should have the title 'Home'" do
			visit '/static_pages/home'
			expect(page).to have_title("#{base_title} | Home")
		end
	end

	describe "Help page" do
		it "should have the content 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_content('Help')
		end

		it "should have the title 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_title("#{base_title} | Help")
		end
	end

	describe "About page" do
		it "should have the content 'About Us'" do
			visit '/static_pages/about'
			expect(page).to have_content('About Us')
		end

		it "should have the title 'About Us'" do
			visit '/static_pages/about'
			expect(page).to have_title("#{base_title} | About Us")
		end
	end

	describe "Contact Us page" do
		it "should have the content 'Contact us'" do
			visit '/static_pages/contact'
			expect(page).to have_content('Contact')
		end

		it "should have the title 'Contact Us'" do
			visit '/static_pages/contact'
			expect(page).to have_title("#{base_title} | Contact Us")
		end
	end
end

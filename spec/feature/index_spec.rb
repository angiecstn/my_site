describe 'Index Page', type: :feature do

    it 'displays project list' do
        visit '/'
        expect(page).to have_css '.projects'
        

        within '.projects' do
          expect(page).to have_content 'My First Website in HTML'
          expect(page).to have_content 'FizzBuzz'
          expect(page).to have_content 'My First Website in React'
          expect(page).to have_content 'Address Book'
        end
    end

it 'displays navbar partial' do

    visit "/"
    expect(page).to have_css '.topnav'
    within '.topnav' do
        expect(page).to have_content 'Home'
        expect(page).to have_content 'About'
        expect(page).to have_content 'Projects'
        expect(page).to have_content 'Contact'
    end
end
end


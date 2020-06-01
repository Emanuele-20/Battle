require 'capybara/Rspec'

# feature 'making sure testing works' do
#   scenario 'web page returns testing infrastrucutre works!' do
#     visit '/'
#
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Rich'
    fill_in :player_2_name, with: 'Ema'
    click_button 'Submit'
    expect(page).to have_content 'Rich vs. Ema'
  end
end

require 'capybara/Rspec'

# feature 'making sure testing works' do
#   scenario 'web page returns testing infrastrucutre works!' do
#     visit '/'
#
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end

feature 'fills names' do
  scenario 'web page returns players name' do
    visit '/'

    fill_in:player_1, with: 'Rich'
    # expect(find_field(‘Player_1’).value).to eq ‘John’
    fill_in :player_2, with: 'Ema'
    click_button 'Submit'
    expect(page).to have_content 'Rich vs. Ema'

  end
end

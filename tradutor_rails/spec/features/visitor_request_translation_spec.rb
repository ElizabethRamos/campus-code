require 'rails_helper'

feature 'Visitor request translation' do
    scenario 'successfully' do


    visit root_path
    click_on 'Solicitar tradução'
    fill_in 'Texto', with: 'Cafeteira'
    click_on 'Enviar'

    expect(page).to have_content('Solicitação de tradução para Cafeteira')

  end
end

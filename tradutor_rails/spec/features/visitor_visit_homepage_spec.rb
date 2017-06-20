require 'rails_helper'

feature 'Visitor visit homepage' do

  scenario 'and view translations' do
    # criar os dados
    translation = Translation.new(portuguese: 'Cachorro',
                                  english: 'Dog')
    translation.save
    #simular a acao
    visit root_path
    #esperar algo acontecer
    expect(page).to have_content('Cachorro')

end

  scenario 'without translations' do
    # criar os dados

    #simular a acao
    visit root_path
    #esperar algo acontecer
    expect(page). to have_content('Nao existem traducoes ainda')

  end
end

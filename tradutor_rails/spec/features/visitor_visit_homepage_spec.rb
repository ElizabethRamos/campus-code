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

  scenario 'and visitor create a translation' do

    translation = Translation.new(portuguese: 'Gato',
                                  english: 'Cat')
    translation.save
    
      visit root_path

      click_on 'Enviar uma tradução'
      fill_in 'Portugues', with: 'Gato'
      fill_in 'Ingles', with: 'Cat'
      click_on 'Enviar'

      expect(page).to have_content('Tradução de Gato A tradução é: Cat')

      end
  end

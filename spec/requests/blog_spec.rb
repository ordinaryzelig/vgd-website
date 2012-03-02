require 'spec_helper'

describe 'Blog' do

  it 'articles are created with form' do
    login
    visit new_article_path
    title = 'hook audience here'
    body = 'wow them'
    fill_in 'Title', with: title
    fill_in 'Body',  with: body
    click_button 'Save'
    article = Article.first
    article.should_not be_nil
    current_path.should == article_path(article)
    page.should have_content(title)
    page.should have_content(body)
  end

  describe 'show page edit link' do

    let(:article) { Article.create!(title: 'asdf', body: 'fdsa') }
    let(:link)    { 'Edit' }

    it 'is visible if authenticated' do
      login
      visit article_path(article)
      page.should have_link(link)
    end

    it 'is hidden if not authenticated' do
      visit article_path(article)
      page.should_not have_link(link)
    end

  end

end

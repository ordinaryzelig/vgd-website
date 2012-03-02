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

  describe 'show page edit/destroy links' do

    let(:article)      { Article.create!(title: 'asdf', body: 'fdsa') }
    let(:edit_link)    { 'Edit' }
    let(:destroy_link) { 'Destroy' }
    let(:links)        { [edit_link, destroy_link] }

    it 'are visible if authenticated' do
      login
      visit article_path(article)
      links.each do |link|
        page.should have_link(link)
      end
    end

    it 'are hidden if not authenticated' do
      visit article_path(article)
      links.each do |link|
        page.should_not have_link(link)
      end
    end

  end

end

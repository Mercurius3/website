require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  setup do
    @page = FactoryGirl.build(:page)
  end

  # test "should get home page" do
  #   @id = "home"
  #   assert_routing({:path => "/", :method => :get}, {:controller => "pages", :action => "show", :id => @id})
  # end

  # test "should get about page" do
  #   @id = "about"
  #   assert_routing({:path => "/pages/about", :method => :get}, {:controller => "pages", :action => "show", :id => "about"})
  # end

  # test "should get contact page" do
  #   assert_routing({:path => "/pages/contact", :method => :get}, {:controller => "pages", :action => "show", :id => "contact"})
  # end

  # test "title should contain Lassche" do
  #   get(:show, {:id =>"home"})
  #   assert_select 'title', /Lassche/
  # end

  # test "title should contain slug" do
  #   get(:show, {:id => "home"})
  #   assert_select 'title', /- Home/
  # end

  # test "title of about page should contain about" do
  #   get(:show, {:id => "about"})
  #   assert_select 'title', /- About/
  # end

  # test "title of contact page should contain contact" do
  #   get(:show, {:id => "contact"})
  #   assert_select 'title', /- Contact/
  # end

  # test "should get new" do
  #   get :new
  #   assert_response :success
  # end

  # test "should create page" do
  #   assert_difference('Page.count') do
  #     post :create, page: { content: @page.content, name: @page.name, permalink: @page.permalink }
  #   end
  #
  #   assert_redirected_to page_path(assigns(:page))
  # end

  # test "should show page" do
  #   get :show, id: @page
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get :edit, id: @page
  #   assert_response :success
  # end

  # test "should update page" do
  #   put :update, id: @page, page: { content: @page.content, name: @page.name, permalink: @page.permalink }
  #   assert_redirected_to page_path(assigns(:page))
  # end

  # test "should destroy page" do
  #   assert_difference('Page.count', -1) do
  #     delete :destroy, id: @page
  #   end
  #
  #   assert_redirected_to pages_path
  # end
end

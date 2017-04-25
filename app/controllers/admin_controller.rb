class AdminController < ApplicationController
  
  def index
    @news = News.all if cookies['selected_category_id']=='news'
    @abouts = About.all if cookies['selected_category_id']=='abouts'
    @certifications = Certification.all if cookies['selected_category_id']=='certifications'
    @contacts = Contact.all if cookies['selected_category_id']=='contacts'
    @memberships = Membership.all if cookies['selected_category_id']=='memberships'
    @articles = Article.all if cookies['selected_category_id']=='articles'
    @events = Event.all if cookies['selected_category_id']=='events'
    @volunteers = Volunteer.all if cookies['selected_category_id']=='volunteers'
    @elections = Election.all if cookies['selected_category_id']=='elections'    
  end

end

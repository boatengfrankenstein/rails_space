module ApplicationHelper
  require 'string'
  require 'object'
  require 'will_paginate_ext'

  # Return a link for use in site navigation.
  def nav_link(text, controller, action="index")
    link_to_unless_current text, :controller => controller, :action => action, :id => nil
  end

  # Return true if some user is logged in, false otherwise
  def logged_in?
    not session[:user_id].nil?
  end

  # Generate text fields for forms
  def text_field_for(form, field, size=HTML_TEXT_FIELD_SIZE, maxlength=DB_STRING_MAX_LENGTH)
    label = content_tag(:label, field.humanize + ":", :for => "field")
    form_field = text_field_tag field, nil, :size => size, :maxlength => maxlength
    content_tag("div", label + form_field, :class => "form_row")
  end

  # Return true if results should be paginated
  def paginated?
    @pages and @pages.length > 1
  end

end

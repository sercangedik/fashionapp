module ApplicationHelper
  def logo
    image_tag("logo.png", :alt => "Fashion App", :class => "round")
  end
end

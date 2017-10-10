module DeviseHelper
  
  def devise_error_messages!
    return '' if resource.errors.empty?

    messages = resource.errors.details.keys.map { |attr|
      content_tag(:li, resource.errors.full_messages_for(attr).first) }.join
    html = <<-HTML
    <div class="alert alert-error alert-danger"> <button type="button" class="close" data-dismiss="alert">x</button>
      #{messages}
    </div>
    HTML

    html.html_safe
  end
  
end
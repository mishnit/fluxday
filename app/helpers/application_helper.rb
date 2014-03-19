module ApplicationHelper
  def build_validated_field(form_name, field, name,message,pattern,type,value)
    html = ""
    html << "<div class='form-row'>"
    html << "<div class='small-3 columns'>"
    html << label_tag("#{form_name}_#{field}", name, :class => 'left inline')
    html << "</div>"
    html << "<div class='small-9 columns'>"
    if type == 'password'
      html << password_field_tag("#{form_name}[#{field}]", value, :class => 'text_field', :required => '',:pattern=>pattern,:placeholder=>name)
    elsif type == 'file'
      html << file_field_tag("#{form_name}[#{field}]", :required => '',:pattern=>pattern,:placeholder=>name)
    elsif type == 'radio'
      html << radio_button_tag("#{form_name}[#{field}]", value, :class => 'text_field', :required => '',:pattern=>pattern,:placeholder=>name)
    elsif type == 'checkbox'
      html << check_box_tag("#{form_name}[#{field}]", value, :class => 'text_field', :required => '',:pattern=>pattern,:placeholder=>name)
    elsif type == 'text_area'
      html << text_area_tag("#{form_name}[#{field}]", value, :class => 'text_field', :required => '',:pattern=>pattern,:placeholder=>name)
    else
      html << text_field_tag("#{form_name}[#{field}]", value, :class => 'text_field', :required => '',:pattern=>pattern,:placeholder=>name)
    end
    #html << "<small class='error'>#{message.blank? ? 'Cannot be blank' : message}</small>"
    html << "</div>"
    html << "</div>"
    return html.html_safe
  end

  def build_field(form_name, field, name,type,value)
    html = ""
    html << "<div class='form-row'>"
    html << "<div class='small-3 columns'>"
    html << label_tag("#{form_name}_#{field}", name, :class => 'left inline')
    html << "</div>"
    html << "<div class='small-9 columns'>"
    if type == 'password'
      html << password_field_tag("#{form_name}[#{field}]", value, :class => 'text_field', :placeholder=>name)
    elsif type == 'file'
      html << file_field_tag("#{form_name}[#{field}]", :class => 'text_field')
    elsif type == 'radio'
      html << radio_button_tag("#{form_name}[#{field}]", value, :class => 'text_field', :placeholder=>name)
    elsif type == 'checkbox'
      html << check_box_tag("#{form_name}[#{field}]", value, :class => 'text_field', :placeholder=>name)
    elsif type == 'text_area'
      html << text_area_tag("#{form_name}[#{field}]", value, :class => 'text_field', :placeholder=>name)
    else
      html << text_field_tag("#{form_name}[#{field}]", value, :class => 'text_field', :placeholder=>name)
    end
    html << "</div>"
    html << "</div>"
    return html.html_safe
  end
end
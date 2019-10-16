module SessionsHelper
  def flash_alert(type)
    if alert
      content_tag :p, type, class: 'flash alert'
    end
  end
end

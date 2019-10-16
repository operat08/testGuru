module SessionsHelper
  def flash_alert(alert)
    if alert
      content_tag :p, alert, class: 'flash alert'
    end
  end
end

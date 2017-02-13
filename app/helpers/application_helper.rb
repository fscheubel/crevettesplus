module ApplicationHelper
  def mobile_device?
    request.user_agent =~ /Mobile|webOS/
  end

  def controller_model_name(count = 1)
    controller_name.classify.constantize.model_name.human(count: count)
  end
end

module ApplicationHelper
  def bootstrap_messages(message)
    return "primary" if message == "notice"
    return message
  end
end

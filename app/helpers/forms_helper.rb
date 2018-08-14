# frozen_string_literal: true

# Helpers for form objects
module FormsHelper
  def error_messages_for(obj)
    render partial: 'shared/error_messages_for', locals: { obj: obj } if obj.errors.any?
  end
end

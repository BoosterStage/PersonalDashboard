# frozen_string_literal: true

module ApplicationHelper
  def flash_class(str)
    { 'notice' => 'is-primary', 'error' => 'is-danger', 'alert' => 'is-warning' }[str]
  end

  def body_class
    str = [@body_class]
    str << params[:controller].split('/') if params[:controller]
    str << params[:action].split('/') if params[:action]
    str.flatten
  end

  def body_id
    params[:id]
  end

  def active_if(bool = false)
    'is-active' if bool
  end

  def controller?(*controller)
    controller.include?(params[:controller])
  end

  def action?(*action)
    action.include?(params[:action])
  end
end

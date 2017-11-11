class ApplicationController < ActionController::Base

  protected

  # Adds a new error object to the request's errors.
  # @param error [Hash] the error object. It must be JSON API-conformant.
  def add_request_error(error = {})
    @errors ||= []
    @errors << error
  end

  def request_has_errors?
    @errors && @errors.any?
  end

  # Checks if the request params include the `:pretty` param. If so, render
  # a "pretty" response instead of the default one. This is intended for
  # debugging purposes.
  def check_pretty_render
    if params.key?(:pretty) && params[:pretty] != '0'
      template = "#{params[:controller]}/#{params[:action]}.json.jbuilder"
      json = render_to_string(template: template)
      render plain: JSON.pretty_generate(JSON.load(json))
    end
  end
end

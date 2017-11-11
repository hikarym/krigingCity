class SchoolsController < ApplicationController

  def index

    if request_has_errors?
      render status: :bad_request
      return
    end

    # Search for spots.
    @schools = School.all

    # Set request metadata.
    @meta = {}.merge(
      count: @schools.count,
      timestamp: Time.now.to_f.to_s
    )

    check_pretty_render
  end

end

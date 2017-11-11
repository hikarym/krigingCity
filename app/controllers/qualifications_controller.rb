class QualificationsController < ApplicationController

  # TODO: there is no way to update a comment or delete it.

  # Retrieve a spot's incidents.
  def index
    @qualifications = Qualification.where(qualification_id: params[:qualification_id])
  end

  # Create a new incident.
  def create
    @Qualification = Qualification.new(parse_qualification_params)

    unless @qualification.save
      @qualification.errors.full_messages.each do |msg|
        add_request_error(title: msg)
      end
      render status: :unprocessable_entity
    end
  end

  private

  ##
  # Parse qualification parameters and convert them to internal values.
  def parse_qualification_params
    create_params = params
                    .require(:qualification)
                    .permit(:qualification_id, :qualified, :comment)

    unless (qualification = Qualification.where(id: create_params[:qualification_id]).first)
      add_request_error(title: I18n.t('api.request.errors.qualification_not_found'))
    end

    {
      user: 1,
      qualification: qualification,
      qualified: create_params[:qualified],
      comment: create_params[:comment]
    }.keep_if { |_, v| v.present? }
  end
end
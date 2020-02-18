class ApplicationController < ActionController::API
  def render_resource(resource)
    if resource.errors.empty?
      render json: resource
    else
      validation_error(resource)
    end
  end

  def validation_error(resource)
    render json: {
      errors: [
        {
          status: '400',
          title: 'Bad Request',
          detail: resource.errors,
          code: '100'
        }
      ]
    }, status: :bad_request
  end
#validates the incoming params to check if it valid
  def validate
    validation = RandomArrayValidation.new(params[:long])
    render json: validation.error, status: 500 unless validation.validate?
  end
end
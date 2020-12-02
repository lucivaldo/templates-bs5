module ErrorsHelper
  def has_error(model, field)
    model.errors.key?(field)
  end

  def invalid_class(model, field)
    has_error(model, field) ? 'is-invalid' : nil
  end

  def error_messages(model, field)
    model.errors[field].map(&:capitalize).join('. ') + '.'
  end
end

class SimpleCalculator
  private_class_method :validate_args
  ALLOWED_OPERATIONS = ["+", "/", "*"].freeze

  class UnsupportedOperation < StandardError
  end

  def self.calculate(first_operand, second_operand, operation)
    validate_args(first_operand, second_operand, operation)

    result = first_operand.send(operation, second_operand)

    "#{first_operand} #{operation} #{second_operand} = #{result}"
  rescue ZeroDivisionError => e
    "Division by zero is not allowed."
  end

  def self.validate_args(first_operand, second_operand, operation)
    raise ArgumentError.new if first_operand.class.name != "Integer"
    raise ArgumentError.new if second_operand.class.name != "Integer"
    raise UnsupportedOperation.new if ALLOWED_OPERATIONS.none?(operation)
  end
end

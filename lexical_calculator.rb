class LexicalCalculator

  #this is simple enough that there is no need to instantiate it.

  def self.calculate(calc)
    operand1, operator, operand2 = parseMathInput calc
    return operand1.to_f.send operator.to_sym, operand2.to_f
  end

  private

  def self.parseMathInput(calc)
    # separate out the calculation components
    # and validate them
    # return array 
    operand1, operator, operand2 = calc.split("\s")
    if valid_operand?(operand1) && valid_operation?(operator) && valid_operand?(operand2)
      return [operand1, operator, operand2]
    else
      raise "Please enter input in this format 'NUM OPER NUM' e.g. \"9 - 4 \". Note: The space between OPER and NUM on either side is IMPORTANT!"
    end

  end

  def self.valid_operand?(operand)
    return operand =~ /^\d+$/ # 1 or any number of digits only
  end

  def self.valid_operation?(operator)
    return operator =~ /^[\+\-\*\/]{1}$/ #one of + - * or /
  end

end

def calc(input)
  LexicalCalculator.calculate(input)
end


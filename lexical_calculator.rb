class LexicalCalculator

  #this is simple enough that there is no need to instantiate it.

  def self.calculate(calc)
    operand1, operator, operand2 = parseMathInput calc
    operand1.to_f.send operator.to_sym, operand2.to_f
  end

  private

  def self.parseMathInput(calc)
    # separate out the calculation components
    # and validate them
    # return array 
    operand1, operator, operand2 = calc.split("\s")
    if valid_operand?(operand1) && valid_operation?(operator) && valid_operand?(operand2)
      [operand1, operator, operand2]
    else
      raise "\nPlease enter input in this format:\n\t 'NUM OPER NUM' e.g. \"9 - 4\".\n Note: The space between OPER and NUM on either side is IMPORTANT!\n"
    end

  end

  def self.valid_operand?(operand)
    operand =~ /^\d+$/ # 1 or any number of digits only
  end

  def self.valid_operation?(operator)
    operator =~ /^[\+\-\*\/]{1}$/ #one of + - * or /
  end

end

#make this tool available on the command line by calling it via the calc method.
def calc(input)
  LexicalCalculator.calculate(input)
end


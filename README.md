# command_line_calculator

run calc command like this in irb:

    #first require lexical_calculator

    irb(main):001:0> require '<path to file>/lexical_calculator.rb'
    
    => true
    
    # calc is now available

    irb(main):002:0> calc "433 + 22"

and like this in shell:

    $ ./<path to file>/calc "433 + 22"

format:

	'NUM OPER NUM' e.g. \"9 - 4\".

Note: The space between OPER and NUM on either side is IMPORTANT!

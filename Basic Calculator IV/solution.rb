def basic_calculator_iv(expression, evalvars, evalints)
  values = Hash[evalvars.zip(evalints)]

  terms = expression.gsub(/\s+/, "").split(/(?=[+-])/).map do |term|
    coef = term.scan(/\d+/).map(&:to_i).reduce(1, :*)
    term.gsub!(/\d+/, "1")
    vars = term.scan(/[a-z]+/).map { |v| values[v] ? values[v].to_s : v }
    term.gsub!(/[a-z]+/, "1")
    coef *= term.count("+") - term.count("-")
    [coef, vars.sort]
  end

  sum_terms = Hash.new(0)
  terms.each do |coef, vars|
    sum_terms[vars] += coef
  end

  sum_terms.map { |vars, coef| "#{coef}#{vars.join('*')}" if coef != 0 }.compact.sort_by { |t| [-t.count('*'), t.gsub(/^\d+/, "")] }
end

expression = "e + 8 - a + 5"
evalvars = ["e"]
evalints = [1]
puts basic_calculator_iv(expression, evalvars, evalints) # ["-1*a","14"]

expression = "(e + 8) * (e - 8)"
evalvars = []
evalints = []
puts basic_calculator_iv(expression, evalvars, evalints) # ["1*e*e","-64"]

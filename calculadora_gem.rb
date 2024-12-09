require 'cpf_faker'

# Gera um CPF válido
cpf = CPF.generate
puts "CPF gerado: #{cpf}"

# Verifica se um CPF fornecido é válido
def validate_cpf(cpf)
  CPF.valid?(cpf)
end

puts "Informe um CPF para validar (apenas números):"
input_cpf = gets.chomp

if validate_cpf(input_cpf)
  puts "#{input_cpf} é um CPF válido."
else
  puts "#{input_cpf} é um CPF inválido."
end

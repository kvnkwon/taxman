require_relative 'taxcalc'
record_list = [
  {
    first_name: 'Johnny',
    last_name: 'Smith',
    annual_income: 120000,
    tax_paid: 28000
  },
  {
    first_name: 'Liz',
    last_name: 'Lemon',
    annual_income: 95000,
    tax_paid: 21000
  },
  {
    first_name: 'Jane',
    last_name: 'Doe',
    annual_income: 140000,
    tax_paid: 30000
  },
  {
    first_name: 'Mike',
    last_name: 'Orsillio',
    annual_income: 40000,
    tax_paid: 8800
  }
]

taxcalc = TaxCalculation.new(record_list)
taxcalc.liability
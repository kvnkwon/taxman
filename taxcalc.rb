require 'pry'
class TaxCalculation

  def initialize(record_list)
    @record_list = record_list
  end

  def liability
    @record_list.each do |person|
      person.merge!(tax: person[:annual_income] * 0.22)
    end
    refund?
  end

  def refund?
    @record_list.each do |person|
      if person[:tax_paid] > person[:tax]
        person.merge!(refund_owed: person[:tax_paid].to_i - person[:tax].to_i)
      elsif person [:tax_paid] < person[:tax]
        person.merge!(amount_owed: person[:tax].to_i - person[:tax_paid].to_i)
      end
    end
    output_message
  end  

  def output_message
    @record_list.each do |person|
      puts "#{person[:first_name]} #{person[:last_name]} has a tax liability of #{person[:tax].to_i}"
      if person[:refund_owed].to_i > 0
        puts "#{person[:first_name]} #{person[:last_name]} will receive a refund of #{person[:refund_owed]}"
      elsif person[:amount_owed].to_i > 0
        puts "#{person[:first_name]} #{person[:last_name]} still needs to pay #{person[:amount_owed]}"
      else
        puts "No refund is needed."
      end
    end
  end

end
require 'date'
class Lesson1
  def sum(val = 0)
    val.to_s.split('').inject(0) { |a, e| a + e.to_i }
  end

  def age(birthday)
    if birthday
      d = (Date.today - Date.parse(birthday)).to_i
      "Я живу #{(d / 365).to_i} или #{d} дней или #{d * 24} часов или
       #{d * 24 * 60} минут или #{d * 24 * 60 * 60} секунд"
    else
      'Invalid Date Format' 
    end
  end

  def name
    "Hello #{gets} #{gets} #{gets}!"
  end
end

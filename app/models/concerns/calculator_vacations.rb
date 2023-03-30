module CalculatorVacations
  extend ActiveSupport::Concern

  included do
  end

  INSS_FIRST = 0..1302.0
  INSS_SECOND = 1302.01..2571.29
  INSS_THIRD = 2571.30..3856.94
  INSS_FOURTH = 3856.95..7507.49

  IRRF_FREE = 0..1903.98 # O
  IRRF_FIRST = 1903.99..2826.65 # 7,5%	142,80
  IRRF_SECOND = 2826.66..3751.05 # 15%	354,80
  IRRF_THIRD = 3751.06..4664.68 # 22,50%	636,13
  IRRF_FOURTH = 4664.68..8000 # 27,50%	869,36
  IRRF_DEDUCTION_DEPENDENTS = 189.59

  class_methods do

    def calculator_inss(amount)
      value = 0

      if INSS_FIRST.include?(amount)
        value = (amount * 0.078) # 7,5%
      elsif INSS_SECOND.include?(amount)
        value = (amount * 0.09) # 9%
      elsif INSS_THIRD.include?(amount)
        value = (amount * 0.12) # 12%
      elsif INSS_FOURTH.include?(amount)
        value = (amount * 0.14) # 14%
      end

      value
    end

    def calculator_irrf(amount)
      value = 0

      if IRRF_FREE.include?(amount)
        value = amount # 0%
      elsif IRRF_FIRST.include?(amount)
        value = (amount * 0.078) # 7,5%
      elsif IRRF_SECOND.include?(amount)
        value = (amount * 0.15) # 15%
      elsif IRRF_THIRD.include?(amount)
        value = (amount * 0.225) # 22,50%
      elsif IRRF_FOURTH.include?(amount)
        value = (amount * 0.275) # 27,50%
      end

      value
    end

  end

end
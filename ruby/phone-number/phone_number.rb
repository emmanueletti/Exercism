# Write your code for the 'Phone Number' exercise in this file. Make the tests
# in `phone_number_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your `ruby/phone-number`
# directory.

class PhoneNumber
  @@digits = []

  class << self
    def clean(digits)
      @@digits = digits.scan(/\d/)

      remove_country_code

      return nil unless digits_is_valid?

      @@digits.join
    end

    private

    def remove_country_code
      if @@digits.first == "1"
        @@digits = @@digits.drop(1)
      end
    end

    def digits_is_valid?
      @@digits.size == 10 &&
        area_code_is_greater_than_1 &&
        exchange_code_is_greater_than_1
    end

    def exchange_code_is_greater_than_1
      @@digits[3].to_i > 1
    end

    def area_code_is_greater_than_1
      @@digits.first.to_i > 1
    end
  end
end

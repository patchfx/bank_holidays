# BankHolidays

Ruby lib for retrieving UK bank holidays

## Installation

Add this line to your application's Gemfile:

    gem 'bank_holidays'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bank_holidays

## Usage

Return all bank holidays
    holidays = BankHolidays.all

    holidays.each do |holiday|
      puts holiday.date
      puts holiday.summary
    end

Use your own url
    holidays = BankHolidays.all('http://example.com/my-own-bank-holidays-file.ics')

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

require "httparty"
require "icalendar"
require "bank_holidays/version"

module BankHolidays
  DEFAULT_URL = "https://www.gov.uk/bank-holidays/england-and-wales.ics"
  def self.all(url=DEFAULT_URL)
    holidays = HTTParty.get(url)
    calendar = Icalendar.parse(holidays)
    calendar.first.events.map do |holiday|
      BankHoliday.new(holiday.dtstart, holiday.summary)
    end
  end

  class BankHoliday
    attr_reader :date, :summary
    def initialize(date, summary='')
      @date = date
      @summary = summary
    end
  end
end

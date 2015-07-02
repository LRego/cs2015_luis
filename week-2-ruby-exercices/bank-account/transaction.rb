class Transaction
    # => Initialize amount and date of transaction
    # => @time = Time.now.strftime("on %d/%m/%y at %l:%M:%S:%L %P")
    def initialize(amount)
        @amount = amount
        @time = Time.now
        @message = message
    end
    def amount
        @amount
    end
    def message
        @message = ""
    end
    # => Nicely print transaction infos using Time#strftime.
    # => "#{@amount} #{@time}\n"
    def to_s
        data = "#{@amount} #{@time.strftime("on %d/%m/%y at %l:%M:%S:%L %P")}\n"
        if amount >= 0
            "You have deposited #{data}"
        else
            "You have withdraw #{data}"
        end
    end
end

class Transaction
    def initialize(amount)
        # Initialize amount and date of transaction
        @amount = amount
        @time = Time.now
        @message = message
        # @time = Time.now.strftime("on %d/%m/%y at %l:%M:%S:%L %P")
    end
    def amount
        @amount
    end
    def message
        @message = ""
    end
    def to_s
        # Nicely print transaction infos using Time#strftime.
        # "#{@amount} #{@time}\n"
        data = "#{@amount} #{@time.strftime("on %d/%m/%y at %l:%M:%S:%L %P")}\n"
        if amount >= 0
            "You have deposited #{data}"
        else
            "You have withdraw #{data}"
        end
    end
end

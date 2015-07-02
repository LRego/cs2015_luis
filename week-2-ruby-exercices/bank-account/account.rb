require_relative "transaction"
# This is how you define your own custom exception classes
class DepositError < StandardError
end

class BankAccount
    # Contract for the BankAccount class
    # - you can access full owner's name and position, but partial IBAN
    # - you cannot access full IBAN
    # - you can print partial account infos
    # - you can print transactions only with a password
    # - you can withdraw or deposit money
    # - You can see the balance of the account (through the position variable)
    attr_reader :name, :position, :iban
    MIN_DEPOSIT =  100

    def initialize(name, iban, initial_deposit, password)
        fail DepositError, "Insufficient deposit" unless initial_deposit > MIN_DEPOSIT
        @password = password
        @transactions = []
        @position = 0
        @name, @iban = name, iban

        add_transaction(initial_deposit)
    end
    # => Call add_transaction with the right argument
    # => returns a string with a message
    def withdraw(amount)
        if amount < @position   #=> If this condition is true return true
            # add_transaction(amount * -1)
            add_transaction(-amount)
             "You've just withdrawn #{amount} euros"
        elsif amount == @position
            # add_transaction(amount * -1)
            add_transaction(-amount)
            "No more Credit"
        else
            "You don't have enough money"
        end
    end
    # => Call add_transaction with the right argument
    # => returns a string with a message
    def deposit(amount)
        add_transaction(amount)
        "You've just deposit #{amount} euros"
    end
    # def transactions_history(args = {})
    # # TODO: Check if there is a password and if so if it is correct
    # # TODO: return a string displaying the transactions, BUT NOT return the transaction array !
    #     if args.empty?
    #         puts "No password given"
    #     elsif args == @password
    #         puts "Last transactions: #{@transactions}"
    #     else
    #         puts "Wrong Password"
    #     end
    # end
    # => Check if there is a password and if so if it is correct
    # => return a string displaying the transactions, BUT NOT return the transaction array !
    def transactions_history(args = {})
        if args[:password] == nil
            "no password given"
        elsif args[:password] != @password
            "wrong password"
        else
            @transactions.join(",")
        end
    end
    # => Hide the middle of the IBAN like FR14**************606 and return it
    def iban
        @iban[0..3] + "*" * 26 + @iban[-3..-1]
    end
    # => Method used when printing account object as string (also used for string interpolation)
    def to_s
      "Owner: #{@name}\n" + "#{iban}\n" + "#{@position}\n"
    end

    private
    # => add the amount in the transactions array
    # => update the current position (which represents the balance of the account)
    # => @position = @position + amount => É o mesmo que @position += amount
    def add_transaction(amount)
        @position += amount
        @transactions << Transaction.new(amount)
    end
end

account = BankAccount.new("Bruce Lee", "FR14-2004-1010-0505-0001-3M02-606", 200, "brucelit")


# puts account.iban
# account.deposit(300)
# account.deposit(400)
# account.withdraw(200)
# account.withdraw(200)
# sleep 2
# puts account.withdraw(200)
# puts account.withdraw(200)
# puts account.withdraw(200)
# puts account.transactions_history({ :password => "brucelit" })
# # puts account.to_s
# # puts account

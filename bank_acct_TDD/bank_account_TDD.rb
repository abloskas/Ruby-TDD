class BankAccount
    attr_accessor :account_number, :checking_account, :savings_account
    @@bank_accounts = 0
    def initialize
        @@bank_accounts += 2
        @account_number = generate_number()
        @checking_account = 0
        @savings_account = 0
        @interest_rate = 0.01
    end

    def deposit(account_type, amount)
        if account_type == "checking"
            @checking_account += amount
        elsif account_type == 'savings'
            @savings_account += amount
        end 
        return self
    end        

    def withdraw(account_type, amount)
        if account_type == "checking"
            balance = @checking_account
            balance -= amount
            if balance < 0
                raise "Insufficient Funds: Error"
            else
                @checking_account -= amount   
            end
        elsif account_type == "savings"
            balance = @savings_account
            balance -= amount
            if balance < 0
                raise "Insufficient Funds: Error"
            else
                @savings_account -= amount   
            end
        end
        return self        

    end
    
    def print_balance
        puts "Checking Account Balance: $ #{@checking_account}"
      
        puts "Savings Account Balance: $ #{@savings_account}"
       
        puts"Total Monies: $ #{@checking_account + @savings_account}"
       
    end

    def balance
        return (@checking_account + @savings_account)
    end

    def accounts 
        return "Account Number: #{@account_number}"
        balance
        return "Interest Rate: #{@interest_rate}"
    end

    private 
        def generate_number
            return rand (1..1000000)
        end
    
end



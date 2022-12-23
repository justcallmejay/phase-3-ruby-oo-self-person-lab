# your code goes here
require 'pry'

class Person

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(happiness)
            @happiness = happiness
        if happiness >=10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        end
    end

    def hygiene=(hygiene)
            @hygiene = hygiene
            if hygiene >=10
                @hygiene = 10
            elsif hygiene < 0
                @hygiene = 0
            end
    end

    def clean?
        if self.hygiene > 7
        return true
    else
        return false
        end
    end

    def happy?
        if happiness > 7
            return true
        elsif happiness <= 7
            return false
        end
    end

    def get_paid(amount)
        add_money = self.bank_account += amount
        puts add_money
        return "all about the benjamins"
    end

    def take_bath
        if self.hygiene != 10
            self.hygiene += 4 
            return "♪ Rub-a-dub just relaxing in the tub ♫"
        end
    end

    def work_out
        self.hygiene -=3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            if self.happiness != 0 || friend.happiness != 0
                self.happiness -= 2
                friend.happiness -= 2
                return "blah blah partisan blah lobbyist"
            end
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness +=1
            return "blah blah sun blah rain"
        elsif topic != "weather" || topic != "politics"
            return "blah blah blah blah blah"
        end
    end
end

binding.pry

# ruby lib/person.rb
fido = Person.new("Fred", 30, 8, 6)
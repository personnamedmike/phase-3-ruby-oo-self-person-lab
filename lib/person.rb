# your code goes here
require 'pry'

class Person

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name=name
        @bank_account=bank_account
        @happiness=happiness
        @hygiene=hygiene
    end

    def happiness=(value)
        if (value > 10)
            @happiness=10
        elsif (value <= 0)
            @happiness = 0
        elsif
            @happiness=value
        end
    end
    
    def hygiene=(value)
        if (value > 10)
            @hygiene=10
        elsif (value <= 0)
            @hygiene=0
        elsif
            @hygiene=value
        end
    end

    def clean
        if (@hygiene > 7)
            "true"
        elsif (@hygiene <=7 )
            "false"
        end
    end

    def happy?
        if (self.happiness > 7)
            true
        elsif (self.happiness <= 7)
            false
        end
    end

    def clean?
        if (self.hygiene > 7)
            true
        else
            false
        end
    end
    
    def get_paid salary
        self.bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if (topic == "politics")
            self.happiness -= 2
            friend.happiness -=2
            "blah blah partisan blah lobbyist"
        elsif (topic == "weather")
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

    # binding.pry
end
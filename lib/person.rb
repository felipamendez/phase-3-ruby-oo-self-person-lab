# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    #getter and setter happiness to keep it from going above 10 and below zero
    
    def happiness
        @happiness
    end

    def happiness=(happiness)
        if happiness < 0 
            @happiness = 0
        elsif happiness > 10
            @happiness = 10
        else
            @happiness = happiness
        end
    end

    def hygiene
        @hygiene
    end

    def hygiene=(hygiene)
        if hygiene < 0 
            @hygiene = 0
        elsif hygiene > 10
            @hygiene = 10
        else
            @hygiene = hygiene
        end
    end

    def happy?
        if @happiness > 7 
         true  
        else 
         false
      end
    end

    def clean? 
        if @hygiene > 7
            true
        else
            false 
        end
    end
# have to call on setter method, @ to get it to increment 
    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end
    #  every object is aware of itself and we can define methods in which we tell objects to operate on themselves.
    #   use self keywork inside the body of instance method to refer to very same object the method is being called on 
    #  in sanmits words, calling the setter method - so had to use self
    # called the setter with self and set it to the class variable 
    def take_bath
        self.hygiene = @hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = @hygiene - 3
        self.happiness = @happiness + 2
        '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        self.happiness = @happiness + 3
        friend.happiness = friend.happiness + 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics" 
            self.happiness = @happiness - 2
            friend.happiness = friend.happiness - 2
            'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness = @happiness + 1
            friend.happiness = friend.happiness + 1
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end

    end



end



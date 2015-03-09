class Queue
    def initialize
        @queueName = []
    end

    def addToQueue(itemToAdd)
        @queueName.unshift(itemToAdd)
    end

    def removeFromQueue
        @queueName.pop
    end

    def peakAtQueue
        @queueName.last
    end
end

tickets = Queue.new
tickets.addToQueue("movie")
tickets.addToQueue("concert")
tickets.addToQueue("reading")
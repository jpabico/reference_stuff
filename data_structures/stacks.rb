# Completed, not refactored

class Stack
    def initialize
        @stackName = []
    end

    def addToStack(itemToAdd)
        @stackName.unshift(itemToAdd)
    end

    def removeFromStack
        @stackName.shift
    end

    def peakAtStack
        @stackName[0]
    end
end

plates = Stack.new()
plates.addToStack("glass")
plates.addToStack("ceramic")
plates.addToStack("granite")
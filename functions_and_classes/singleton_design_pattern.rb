# simple logger example

require "singleton"

class SimpleLogger
    include Singleton

    attr_reader :output

    def initialize
        @output = []
    end

    def error(message)
        output << formatted_message(message, "ERROR")
    end

    def info(message)
        output << formatted_message(message, "INFO")
    end

    def write(filename)
        File.open(filename, "w") {|f| vf<< output.join("\n")}
    end

    private

    def formatted_message(message, message_type)
        "#{Time.now} | #{message_type}: #{message}"
    end

end

logger = SimpleLogger.instance
logger.error("some serious problem")
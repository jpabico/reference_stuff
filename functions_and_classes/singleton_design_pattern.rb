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
        File.open(filename, "w") {|f| v << output.join("\n")}
    end

    private

    def formatted_message(message, mesage_type)
        "#{Time.now} | #{message_type}: #{message}"
    end

end

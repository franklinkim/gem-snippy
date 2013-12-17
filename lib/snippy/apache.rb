require "thor"

module Snippy
  class Apache < Thor

    desc "certificate FILENAME", "Create self signed openssl certificate."
    def certificate(filename)
      system "openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout #{filename}.key -out #{filename}.crt"
      puts "Generated files:"
      puts "  #{filename}.key"
      puts "  #{filename}.crt"
    end

  end
end
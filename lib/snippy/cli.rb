require "thor"
require "snippy/apache"

module Snippy
  class Cli < Thor
    class_option :verbose, :type => :boolean

    desc "apache SUBCOMMAND ...ARGS", "Snippets & Tools for apache"
    subcommand "apache", Apache
  end
end
require "thor"
require "snippy/git"
require "snippy/apache"

module Snippy
  class Cli < Thor
    class_option :verbose, :type => :boolean

    desc "apache SUBCOMMAND ...ARGS", "Apache shortcuts and helper."
    subcommand "apache", ApacheTasks

    desc "git SUBCOMMAND ...ARGS", "Git shortcuts and helper."
    subcommand "git", GitTasks

  end
end
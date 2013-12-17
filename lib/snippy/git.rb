require "git"
require "thor"

module Snippy
  class Git < Thor

    desc "retag", "Retag the latest git tag."
    def retag
      raise Thor::Error, "No git repository." unless Dir.exists?(".git")
      g = Git.open(working_dir, :log => Logger.new(STDOUT))
      puts g.tag
      # raise Thor::Error, "No git tag found." if tag == ""
    end

  end
end
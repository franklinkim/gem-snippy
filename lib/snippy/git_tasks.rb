require "git"
require "thor"

module Snippy
  class GitTasks < Thor

    desc "retag", "Retag the latest git tag."
    def retag
      raise Thor::Error, "Not a git repository!" unless Dir.exists?(".git")
      g = Git.open(".")
      puts g.tag
      # raise Thor::Error, "No git tag found." if tag == ""
    end

  end
end
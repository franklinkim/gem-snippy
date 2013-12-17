Test = require "git"
require "thor"

module Snippy
  class GitTasks < Thor

    desc "retag", "Redo the lastest git tag."
    method_option %w( push -p ) => :boolean, :default => true
    def retag
      raise Thor::Error, "Not a git repository!" unless Dir.exists?(".git")
      g = Test.open(".")
      tags = g.tags
      raise Thor::Error, "No tag found!" if tags.empty?
      tag = tags.pop.name
      system "git tag -d #{tag}"
      g.add_tag(tag)
      g.push if options[:push]
    end

  end
end
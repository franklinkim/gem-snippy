require "git"
require "thor"

module Snippy
  class Git < Thor

    desc "retag", "Redo the lastest git tag."
    method_option :push, :type => :boolean, :default => true, :aliases => "-p"
    def retag
      raise Thor::Error, "Not a git repository!" unless Dir.exists?(".git")
      g = ::Git.open(".")
      tags = g.tags
      raise Thor::Error, "No tag found!" if tags.empty?
      tag = tags.pop.name
      puts "Deleting tag: #{tag}"
      system "git tag -d #{tag}"
      puts "Creating tag: #{tag}"
      g.add_tag(tag)
      if options[:push]
        raise Thor::Error, "No remote!" if g.branches.remote.empty?
        puts "Pushing files"
        g.push
      end
    end

  end
end
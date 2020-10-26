# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem 'cocoapods', '1.10.0'
gem 'xcpretty', '0.3.0'
gem 'fastlane', '2.165.0'
gem 'danger-swiftlint', '0.24.4'

plugins_path = File.join(File.dirname(__FILE__), 'fastlane', 'Pluginfile')
eval_gemfile(plugins_path) if File.exist?(plugins_path)

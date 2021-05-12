require "allure-cucumber"
require "faker"
require "ffaker"
require "httparty"
require "pry"
require "rspec"
require 'string_pattern'

AMBIENTE = ENV["AMBIENTE"]

URL = YAML.load_file(File.expand_path(File.dirname(__FILE__) + "/config/url.yml"))

Dir[File.join(File.dirname(__FILE__), "spec_helper/*.rb")].sort.each { |file| require file }

World(INSTANCIAS)

AllureCucumber.configure do |c|
  c.results_directory = "allure-results"
  c.clean_results_directory = true
  c.logging_level = Logger::INFO
  c.link_tms_pattern = "http://www.hiptest.com/browse/{}"
  c.link_issue_pattern = "http://www.jenkins.com/browse/{}"
end

AllureCucumber.configure do |c|
  c.tms_prefix = "HIPTEST--"
  c.issue_prefix = "JENKINS"
  c.severity_prefix = "SEVERITY:"
end
# frozen_string_literal: true

require 'figma_moji/configuration'

module FigmaMoji
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration) if block_given?
  end
end

module FigmaMoji
  class Configuration
    attr_accessor :access_token, :file_id, :other_config_param

    def initialize
      @access_token = nil
      @file_id = nil
      @other_config_param = nil
    end
  end
end

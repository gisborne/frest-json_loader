require "frest/json_loader/version"
require 'json'

module Frest
  module JsonLoader
    def load content:, id:, **c
      JSON.parse content
    end

    module_function :load
  end
end

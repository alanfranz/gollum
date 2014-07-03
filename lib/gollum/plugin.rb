module Precious
  class Plugin
    def self.plugins
      @plugins ||= []
    end

    def self.inherited(klass)
      @plugins ||= []

      @plugins << klass
    end

    # Usually a good idea for debugging if you have lots of methods
    def perform
      raise "#{self.class.name} doesn't implement `perform`!"
    end
  end
end
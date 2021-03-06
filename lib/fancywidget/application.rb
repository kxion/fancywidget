require 'singleton'

module FancyWidget
  class Application
    include Singleton
    attr_reader :main_window

    def initialize
    end

    def run(window)
      @main_window = window
      window.update_layout
      window.paint
      self.mainloop
    end

  end
end
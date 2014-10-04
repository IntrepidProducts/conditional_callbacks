module IntrepidProducts
  class ConditionalCallbacks
    def initialize(block)
      @callbacks = {}
      block.call(self)
    end

    def call_proc_for(callback_key, *args)
      @callbacks[callback_key].call(*args)
    end

    def has_proc?(key)
      @callbacks.has_key?(key)
    end

    private

    def method_missing(m, *args, &block)
      block ? @callbacks[m] = block : super
      self
    end
  end
end

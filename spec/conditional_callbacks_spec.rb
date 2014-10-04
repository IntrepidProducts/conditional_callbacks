require 'spec_helper'

describe IntrepidProducts::ConditionalCallbacks do
  describe '#call_proc_for' do
    result = nil

    let(:callbacks_instance) do
      instantiate_callbacks do |on|
        on.success do
          result = :success
        end

        on.failure do
          result = :failure
        end
      end
    end

    it 'invokes the named proc' do
      callbacks_instance.call_proc_for(:success)
      expect(result).to eq(:success)

      callbacks_instance.call_proc_for(:failure)
      expect(result).to eq(:failure)
    end
  end

  describe '#has_proc?' do
    let(:callbacks_instance) do
      instantiate_callbacks do |on|
        on.eeny do
        end

        on.meeny do
        end

        on.miny do
        end

        on.moe do
        end
      end
    end

    it 'indicates if a named proc is available' do
      expect(callbacks_instance.has_proc?(:eeny)).to be true
      expect(callbacks_instance.has_proc?(:meeny)).to be true
      expect(callbacks_instance.has_proc?(:miny)).to be true
      expect(callbacks_instance.has_proc?(:moe)).to be true
      expect(callbacks_instance.has_proc?(:foo)).to be false
    end
  end

  def instantiate_callbacks(&block)
    IntrepidProducts::ConditionalCallbacks.new(block)
  end
end

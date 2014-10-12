ConditionalCallbacks
====================

This gem enables conventional ruby blocks to be partitioned into name callbacks.
You can segment the logic in a block into named sub-blocks that serve as
callbacks that can be invoked by the called method.

## How to Use

For example, given a method call with a block like this:

```ruby
some_method do |on|
  on.success do
    puts 'Operation succeeded'
  end

  on.failure do
    puts 'Operation failed'
  end
end
```

The called method can then invoke the appropriate callback for :success as follows

```ruby
def some_method(&block)
  callbacks = IntrepidProducts::ConditionalCallbacks.new(block)
  callbacks.call_proc_for(:success)
end
```
To call the :failure block just use the :failure symbol argument when invoking the
```call_proc_for``` method.


## Open-ended Number of Named Callbacks
You are not required to use :success and :failure callbacks.  You can name callbacks
anything.  You are also not limited to just two callbacks.  So, this would work:

```ruby
some_method do |on|
  on.eeny do
    puts 'Eeny'
  end

  on.meeny do
    puts 'Meeny'
  end

  on.miny do
    puts 'Miny'
  end

  on.moe do
    puts 'Moe'
  end
end
```
The only caveat is that the called function must know which callback to invoke
and only one callback can be invoked.

The called method can inquire if a particular callback is available with the
```has_proc?``` method as follows:

```ruby
def some_method(&block)
  callbacks = IntrepidProducts::ConditionalCallbacks.new(block)
  if callbacks.has_proc?(:some_key)
    callbacks.call_proc_for(:some_key)
  end
end
```

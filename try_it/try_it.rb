# example.rb

require 'rubygems'
require 'sinatra'
require 'rack/codehighlighter'
require 'coderay'  # get one of supported highlighters

get "/" do
  erb :hello
end

__END__
@@ hello
<h3>Fibonacci numbers in Ruby</h3>
<pre>
:::ruby
def fib(n)
  if n &lt; 2
    1
  else
    fib(n-2) + fib(n-1)
  end
end
</pre>


#  The point of this is that we are accessing something in native
# erlang?
:crypto.strong_rand_bytes 3


x = 0.1 + 0.2

IO.puts("whaat");
IO.puts("whaat");
IO.puts("whaat");
IO.puts('whaat');
# why does the doc indicate that only double quotes will work
IO.puts('dziękuję')

# this will go ahead and print the whole word out to the screen
IO.puts('hełło')


# I wonder what this will do then
IO.inspect('hełło')
# looks like we get back the array


IO.inspect('whaat');
# this outputs 'whaat' which kind of seems inconsistent to me

IO.puts(List.first('hello')); # this will work
# IO.puts(List.first("hello")); # this will not

# Ha looks like not even the mighty elixir can escape this issue
IO.puts(x);
IO.inspect(MyModule.MyApp)

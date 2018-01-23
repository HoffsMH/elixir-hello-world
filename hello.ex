
#  The point of this is that we are accessing something in native
# erlang?
:crypto.strong_rand_bytes 3


x = 0.1 + 0.2

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

# IO.puts(to_string(:crypto.strong_rand_bytes(3)))
# this will error half the time because not all bytes are valid characters


IO.puts(2/1)
IO.puts(3/1.5)


# An important feature of Elixir is that any two types can be compared;
# this is particularly useful in sorting.
# We don’t need to memorize the sort order, but it is important to be aware of it:
#
# number < atom < reference < function < port < pid < tuple < map < list < bitstring

IO.puts(:hello > 999)
IO.puts({:hello, :world} > [1, 2, 3])

name = "Sean"
IO.puts("Hello #{name}");


a = [3.14, :pie, "Apple"];
# IO.puts(a);
# IO.inspect(a);
# no easy convient way to output a list

[foo: "bar", hello: "world"]

key = "hello"
stuff = %{key => "world"}

%{stuff | foo: "baz"}

IO.puts(stuff["hello"])
IO.puts(stuff[:foo]) # nothing

# Ha looks like not even the mighty elixir can escape this issue
IO.puts(x);
IO.inspect(MyModule.MyApp)


Enum.__info__(:functions) |> Enum.each(fn({function, arity}) ->
   IO.puts "#{function}/#{arity}"
 end)






IO.puts("----------------------------------------------")
user = %{first: "Sean", last: "Callan"}

output = with \
  {:ok, first} <- Map.fetch(user, :first), # do something and with the result of the expression
  {:ok, last} <- Map.fetch(user, :last),
  do: last <> ", " <> first;

IO.puts(output)



#  algebra huh?

y = 4

# y = (g) + 1 # wont work isn't really that algebraic

# IO.puts('---------------------------------------------------')
# IO.puts(g);


pinned1 = 4

{^pinned, a} = { 4, 25 }

# this alone could introduce alot of complexity

IO.puts(a);

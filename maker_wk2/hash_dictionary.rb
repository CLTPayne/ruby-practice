=begin
Using the technique above, implement a program to the following specification
without using a conditional.
I want a simple dictionary. I put in the word, and I get out the definition of
that word. Here are the definitions I want:
bear: a creature that fishes in the river for salmon.
river: a body of water that contains salmon, and sometimes bears.
salmon: a fish, sometimes in a river, sometimes in a bear, and sometimes in
both.
In general, programmers try to minimise the amount of conditionals in a program.
This is because such pathways can quickly multiply in number (especially if a
lot of programmers are working on the codebase). Each pathway can lead to a new
program state, which results in more program states than any one programmer can
reason about. This article is a fantastic recent case study into what happens
when programmers can no longer reason about the complexity of their codebases.
Lookup tables are one way to reduce conditional complexity in a program, by
centralising possible program states. In Chapter 9, we'll see that we can use
procedures as values to lookup tables, which allows us to control program state
even more tightly.

Hash method would look like this:
word = :salmon

dictonary = {
  :bear => "a creature that fishes in the river for salmon.",
  :river => "a body of water that contains salmon, and sometimes bears.",
  :salmon => "a fish, sometimes in a river, sometimes in a bear, and sometimes in
  both."
}

puts dictonary[word]
=end

# A working dictionary programme
# Look up a user input to see if it matches a key in a Hash
# Return the value for that corresponding key 

dictonary = {
  "bear" => "a creature that fishes in the river for salmon.",
  "river" => "a body of water that contains salmon, and sometimes bears.",
  "salmon" => "a fish, sometimes in a river, sometimes in a bear, and sometimes in
  both."
}

puts "Please enter a word:"
lookup = gets.chomp
puts dictonary[lookup]

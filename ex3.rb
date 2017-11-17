# For each of the methods listed below
#
# Read the docs
# Try out the method in irb using a few different values
# Once you feel like you understand how it works, write down
# its arguments (name, data type, optional/required, default value if any)
# its return type
# Write an example (in code) of how to use the method
# run your code to make sure your example is valid

# String

length
length returns the character length of a String

a = "hello"
a.length #returns 5


strip
Returns a copy of the string with leading and trailing whitespace removed

"    hello    ".strip   #=> "hello"
"\tgoodbye\r\n".strip   #=> "goodbye"

"hello".string! --- returns nil
Removes leading and trailing whitespace from str. Returns nil if str was not altered.



split
Divides strings into sub-strings based on how the strings are separated by spaces
split will break up the string and put it into an array

" now's  the time".split        #=> ["now's", "the", "time"]
" now's  the time".split(' ')   #=> ["now's", "the", "time"]
" now's  the time".split(/ /)   #=> ["", "now's", "", "the", "time"]
"1, 2.34,56, 7".split(%r{,\s*}) #=> ["1", "2.34", "56", "7"]
"hello".split(//)               #=> ["h", "e", "l", "l", "o"]
"hello".split(//, 3)            #=> ["h", "e", "llo"]
"hi mom".split(%r{\s*})         #=> ["h", "i", "m", "o", "m"]

start_with?
Returns true if string with one of the prefixes given.
Helps if you want to generate a true/false statement

"hello".start_with?("hell")               #=> true

# returns true if one of the prefixes matches.
"hello".start_with?("heaven", "hell")     #=> true
"hello".start_with?("heaven", "paradise") #=> false


Array - first

first → obj or nil click to toggle source
first(n) → new_ary
Returns the first element, or the first n elements, of the array. If the array is empty, the first form returns nil, and the second form returns an empty array. See also #last for the opposite effect.

a = [ "q", "r", "s", "t" ]
a.first     #=> "q"
a.first(2)  #=> ["q", "r"]

To delete an element at a particular index:

arr #=> [2, 3, 4, 5]
arr.delete_at(2) #=> 4 -- remeber that 2 represents the index number and the index starts at zero!
arr #=> [2, 3, 5]

delete
Returns the last deleted item, or nil if no matching item is found.

If the optional code block is given, the result of the block is returned if the item is not found. (To remove nil elements and get an informative return value, use #compact!)

a = [ "a", "b", "b", "b", "c" ]
a.delete("b")                   #=> "b"
a                               #=> ["a", "c"]
a.delete("z")                   #=> nil
a.delete("z") { "not found" }   #=> "not found"

pop

pop → obj or nil click to toggle source
pop(n) → new_ary
Removes the last element from self and returns it, or nil if the array is empty.

If a number n is given, returns an array of the last n elements (or less) just like array.slice!(-n, n) does. See also #push for the opposite effect.

a = [ "a", "b", "c", "d" ]
a.pop     #=> "d"
a.pop(2)  #=> ["b", "c"]
a         #=> ["a"]


Hash - to_a

o_a → array click to toggle source
Converts hsh to a nested array of [ key, value ] arrays.

h = { "c" => 300, "a" => 100, "d" => 400, "c" => 300  }
h.to_a   #=> [["c", 300], ["a", 100], ["d", 400]]

Therefore, the key:value pairs become their own array and are all grouped together in an overlapping array

has_key? -- returns true if the key is present in the hash
has_key?(key) → true or false click to toggle source
Returns true if the given key is present in hsh.

h = { "a" => 100, "b" => 200 }
h.has_key?("a")   #=> true
h.has_key?("z")   #=> false

has_value?(value) → true or false click to toggle source
Returns true if the given value is present for some key in hsh.

h = { "a" => 100, "b" => 200 }
h.has_value?(100)   #=> true
h.has_value?(999)   #=> false

Time- now

now → time click to toggle source
Creates a new Time object for the current time. This is same as ::new without arguments.

Time.now            #=> 2009-06-24 12:39:54 +0900


ime + numeric → time click to toggle source
Addition — Adds some number of seconds (possibly fractional) to time and returns that value as a new Time object.

t = Time.now         #=> 2007-11-19 08:22:21 -0600
t + (60 * 60 * 24)   #=> 2007-11-20 08:22:21 -0600


File: exist

extname(path) → string click to toggle source
Returns the extension (the portion of file name in path starting from the last period).

If path is a dotfile, or starts with a period, then the starting dot is not dealt with the start of the extension.

An empty string will also be returned when the period is the last character in path.

File.extname("test.rb")         #=> ".rb"
File.extname("a/b/d/test.rb")   #=> ".rb"
File.extname("foo.")            #=> ""
File.extname("test")            #=> ""
File.extname(".profile")        #=> ""
File.extname(".profile.sh")     #=> ".sh"

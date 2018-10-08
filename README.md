# Roman Numeral Convertor
This was a kata that I did for fun. The end result was one that worked, but was
not perfect.

While the code is dry and well tested, it would be difficult to reduce it further
without compromising legibility/how easy to understand it is. What's more there
are probably more simplistic ways of solving this problem.

The key to this solution is on lines 36 and 37. An inverted standard numeral which
has been reversed and converted into an array is enumerated over with its index.
Both the value and the index of each entry is then used with an array of
arrays to access the correct roman numerals.

This idea is simple to use with small numbers, but becomes increasingly complex
the bigger number becomes. Although it works, a more simplistic solution might
be to use the % operator. 

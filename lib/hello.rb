def hello_t(array)
   # our methods will break if they are called without an accompanying block. 
#   if we want our code to be flexible and accommodating, we should refactor 
#   our method to optionally take a block. 
    if block_given?
    # this ^ method returns true if the method that contains block_given? 
    # is called with a block and false if it is not.
    i = 0 

    while i < array.length 
        yield array[i]
        i += 1 
        end 
    # Whatever is evaluated last in a method will be the return value for the whole method.
        # tests will return nil unless you explicitly state return of array below: 
        array
    else
        puts "Hey! No block was given!"
        # Our #hello_t method will yield each element of the array to the block if a block 
        # is present. Otherwise, it will puts out a helpful phrase.
    end 
end 


# We're calling our method with the array of names as an argument and 
# accompanying that method call with a block that accepts a |name| parameter. 
# If the passed-in name begins with the letter "T", the block will puts out a greeting. 

# hello_t(["Tim", "Tom", "Jim"]) do |name|
#     if name.start_with?("T")
#       puts "Hi, #{name}"
#     end
#   end


=begin
   Learning Goals
      - Practice building methods that use iteration 
      and controlling their return values
      - Practice manipulating arrays 
      (adding elements, removing elements, etc.)
   Code Goals
      1. Build the -- line method -- that shows everyone their
      current place in the line. If there is nobody in line, it
      should say "The line is currently empty."
      2. Build a method that a new customer will use when entering the deli.
      #take_a_number method should accept 2 arguments, the array for the current line 
      of people (katz_deli), and a string containing the name of the person 
      joining the end of the line. The method should call out (puts) the person's name
      along with their position in line. 
      Top-Tip: Remember that people like to count from 1, not from 0 like computers.
      3. Build the #now_serving method which should call out (i.e. puts) the next person 
      in line and then remove them from the front. If there is nobody in line, 
      it should call out (puts) that "There is nobody waiting to be served!".
=end

def line(deli)
   if deli.empty?
      puts 'The line is currently empty.'
   else
      current_line = "The line is currently:"
      deli.each.with_index(1) do |person , i|
         current_line << " #{i}. #{person}"
      end
      puts current_line
   end
end

def take_a_number(deli, name)
  deli << name
  puts "Welcome, #{name}. You are number #{deli.length} in line."
end

def now_serving(deli)
  if deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli.first}."
    deli.shift
  end
end

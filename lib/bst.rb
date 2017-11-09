class Node
	def initialize(data)
		@data = data
		@left_child = nil
		@right_child = nil
	end

	def insert(data)
		if @data == data
			puts "#{data} already exists"
		elsif @data > data
			if @left_child
				@left_child.insert(data)
			elsif 
				@left_child = Node.new(data)
				puts "#{data} was inserted"
			end
		else
			if @right_child
				@right_child.insert(data)
			elsif 
				@right_child = Node.new(data)
				puts "#{data} was inserted"
			end		
		end
	end

	def find(data)
		if data == @data
			puts "#{data} is present"
		elsif data < @data
			@left_child ? @left_child.find(data) : (puts "#{data} not found")
		else data > @data 
			@right_child ? @right_child.find(data) : (puts "#{data} not found")
		end
	end
end

class Tree

	def initialize()
		@parent = nil 
	end

	def insert(data)
		if @parent 
			@parent.insert(data)
		else
			@parent = Node.new(data)
			puts "#{data} was inserted"
		end
	end

	def find(data)
		@parent ? @parent.find(data) : (puts "#{data} not found") 
	end
end


bst = Tree.new()
input = 0
while input != 3
	puts "\n1) Press 1 to insert\n2) Press 2 to search\n3) Press 3 to Quit"
	input = gets.to_i 
	case input
	when 1
		puts "\nEnter number to insert"
		data = gets.to_i
		bst.insert(data)
	when 2
		puts "\nEnter number to search"		
		data = gets.to_i
		bst.find(data)
	when 3
		input = 3
	end
end
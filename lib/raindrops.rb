class Raindrops
  def initialize(number)
    @number = number
  end

  def speak
  	lang=""
  	sounds = { 3 =>"Pling", 5 => "Plang", 7 => "Plong" }
  	(2..@number).each{ |n| lang+= sounds[n] if @number%n==0 && ( n==3 || n==5 || n==7)}
  	lang=="" ? (return @number) : (return lang)
  end
end
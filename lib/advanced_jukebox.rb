#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => 'home/nanyramirez0-34216/code/labs/jukebox-cli-web-0217/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/home/nanyramirez0-34216/code/labs/jukeboxs-cli-web-0217/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/home/nanyramirez0-34216/code/labs/jukeboxs-cli-web-0217/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/home/nanyramirez0-34216/code/labs/jukeboxs-cli-web-0217/audio/Emerald-Park/04.mp3',
"Wolf" => '/home/nanyramirez0-34216/code/labs/jukeboxs-cli-web-0217/audio/Emerald-Park/05.mp3',
"Blue" => '/home/nanyramirez0-34216/code/labs/jukeboxs-cli-web-0217/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/home/nanyramirez0-34216/code/labs/jukeboxs-cli-web-0217/audio/Emerald-Park/07.mp3'
}

def help
  #this method should be the same as in jukebox.rb
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  my_songs.each_key do |key|
    puts "#{key}"
  end
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  requested_song=nil
  puts "Please enter a song name:"
  user_input= gets.chomp
  my_songs.each do |key, value|
    if user_input.downcase==key.downcase
      requested_song= keys
      system "open #{value}"
    end
  end
  if requested_song=nil
    puts "Invalid song, please enter a song from the list"
  end
end

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb
  help
  puts "Please enter a command:"
  command= gets.chomp.downcase
  unless command=="exit"
    case command
      when "help"
        help
      when "list"
        list(my_songs)
      when "play"
        play(my_songs)
      end
      run(my_songs)
    end
    exit
end

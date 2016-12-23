songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]




def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(songs_array)
  songs_array.each_index do |num|
    puts "#{num+1}. #{songs_array[num]}"
  end
end

def play(songs_array)
  playing="Playing "
  playing_song=nil
  puts "Please enter a song name or number:"
  user_input= gets.chomp
  if user_input.to_i!=0 && songs_array[user_input.to_i-1]!=nil
    playing_song=songs_array[user_input.to_i-1]
  else
     songs_array.each do |artist_song|
       if artist_song.downcase == user_input.downcase
         playing_song= artist_song
        end#  if song is input
      end# each
  end# if/else input is a valid number
  if playing_song== nil
    puts "Invalid input, please try again"
  else
    playing+=playing_song
    puts playing
  end
end#end play

def exit_jukebox
  puts "Goodbye"
end

def run(songs_array)
  help
  puts "Please enter a command:"
  command= gets.chomp.downcase
  unless command=="exit"
    case command
      when "help"
        help
      when "list"
        list(songs)
      when "play"
        play(songs)
      end
    end
    exit
end

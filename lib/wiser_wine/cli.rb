class WiserWine::CLI

  def call
    menu
  end

  def welcome
    puts "Welcome to Wiser Wine"
  end

  def list_regions
    WiserWine::Region.all #should return all regions
  end

  def menu
    welcome
    input = nil
    while input != "exit"
      puts "Enter the number for a wine region from the list provided to get more info or exit to quit."
      list_regions
      input = gets.strip.downcase
      case input
        when "1"
          puts "More info on USA"
        when "2"
          puts "More info on France"
        when "3"
          puts "More info on Germany"
        when "exit"
          puts "Goodbye friend!"
        else
          puts "I didn't understand what you wanted."
      end
    end

  end




end

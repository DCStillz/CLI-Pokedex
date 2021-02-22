class Cli

    def welcome
        puts "Welcome to my movie locator! This app will allow you to find which theaters are playing what movies within 10 miles of your zip code!"
    end

    def ask_for_zip
        puts "Please enter your zip code."
        input = gets.strip
        #call the API
    end


end
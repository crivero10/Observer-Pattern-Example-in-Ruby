# File name: twitter.rb

# Observer Pattern
# Date: 04-Feb-2019
# Authors:
#          A01371368 Carlos Rivero

#Class that models a twitter account
class Twitter

  #Initializes instance variables.
  def initialize(name)
    @name = name
    @followers = []
  end

  #Returns the name of the user.
  def name
    @name
  end

  #Sends a follow request to the object user. Returns self.
  def follow(user)
    user.add_follower(self)
    self
  end

  #Appends user to the list of current followers.
  def add_follower(user)
    @followers.push(user)
  end

  #Notifies each follower of a new tweet.
  def tweet(message)
    @followers.each { |follower|  follower.update(self, message)}
  end

  #Prints a recieved tweet notification to STDOUT.
  def update(sender, message)
    puts "#{self.name} received a tweet from #{sender.name}: #{message}"
  end

end

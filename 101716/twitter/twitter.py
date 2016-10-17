# Twitter OOP in python
# Add questions and comments using python comments # (single line) and """ (multi-line)
#thanks John for this environment, you the bomb...

class TwitterUser:
  def __init__ (self, firstname, lastname, age, gender, username, password, email):
    #nice but we can add location and email address
    
    if age >= 13:
      self.firstname = firstname
      self.lastname = lastname
      self.gender = gender
      self.username = username
      self.password = password
      self.email = email
      self.age = age
      self.number_of_following = 0
      self.number_of_followers = 0
      self.following = [] # A list of following
      self.followers = [] # A list of follwers
      self.tweets = {} # A dictionary of {tweet_id : tweets}
      self.replies = {} # A dictionary of replies i.e {tweet_id : {replies : user}}
      self.likes = {} # A dicitonary of likes of a particular
    else:
      return "Sorry, you are not old enough to open a twitter account"
  

  # Method to log in
  def log_in(self, user_name, pass_word):
    if username == self.username & pass_word == self.password:
      print("You have successfully logged in")
    else:
      print("Please type a verifiable username and password")


  # Method to add to following
  def follow(self, other):
    self.number_of_following += 1
    self.following.append(other)
    other.number_of_followers += 1
    other.followers.append(self)


  # Method to remove follower
  def unfollow(self, other):
    self.number_of_following -= 1
    self.following.remove(other)
    other.number_of_followers -= 1
    other.followers.remove(self)


  # Method to submit tweet
  def submit_tweet(self, tweet):
    if len(tweet) <= 140:
      self.tweets[tweet_id] = tweets
    else:
      return "Cannot post tweet due to character limit."


  # Method to submit replies on tweets
  def submit_reply(self, tweet_id, reply):
    self.replies[tweet_id] = reply


  # Method to store likes for users
  def store_likes(self, tweet_id, likes):
    self.likes[tweet_id] = likes
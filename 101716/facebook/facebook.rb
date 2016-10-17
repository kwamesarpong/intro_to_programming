# Facebook OOP using Ruby
# Add questions and comments using python comments # (single line) and """ (multi-line)
#thanks John for this environment, you the bomb...


class FacebookUser
  @@number_of_users = 0
  
  def initialize (firstname, lastname, age, gender, email, location)
    if age >= 13
      @@number_of_users += 1
      @firstname = firstname
      @lastname = lastname
      @gender = gender
      @age = age
      @number_of_friends = 0
      @friends = [] # An array of friends
      @posts_detail = {} # A hash of post_id => post
      @posts_data = Hash.new {|post_id, author| post_id[author] = {}}
      @posts_likes = {}
      @comments_detail = {}
      @comments_data = Hash.new {|post_id, comment_id| post_id[comment_id] = {}} # An array of hash [[post_id, {comment : user}]]
      @comments_likes = {}
      @email = email
    else
      return "Sorry, you are not old enough to open an individual Facebook Account"
    end
  end
  
  # Method to add friend  
  def add_friend friend
    @number_of_friends += 1
    @friends.push("#{friend.firstname} #{friend.lastname}")
    friend.number_of_friends += 1
    friend.friends.push("#{@firstname} #{@lastname}")
  end

  # Method to remove friend
  def remove_friend friend
    @number_of_friends -= 1
    @friends.delete("#{friend.firstname} #{friend.lastname}")
    friend.number_of_friends -= 1
    friend.friends.delete("#{@firstname} #{@lastname}")
  end

  # Method to submit post
  def submit_post post
    @posts_detail[post_id] = post
    @posts_data[post_id][author] = "#{@firstname} #{@lastname}"
  end

  # Method to comment on posts
  def submit_comment post_id, comment
    @comments_detail[comment_id] = comment
    @comments_data[post_id][comment_id] = "#{@firstname} #{@lastname}"
  end

  # Method to like post
  def like_post post_id
    if @posts_likes.key?(post_id)
      @posts_likes[post_id] += 1
      return
    else
      @posts_likes[post_id] = 0
    end
    @posts_likes[post_id] += 1
  end

  # Method to like comment
  def like_comment comment_id
    if @comments_likes.key?(comment_id)
      @comments_likes[comment_id] += 1
      return
    else
      @comments_likes[comment_id] = 0
    end
  end
end
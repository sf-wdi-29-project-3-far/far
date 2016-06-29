class User < ActiveRecord::Base
  belongs_to :art
  belongs_to :music
  belongs_to :sport
  belongs_to :food

  validates :email, presence: true, confirmation: true, uniqueness: true
  validates :password, presence: true

  has_secure_password
  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end

  has_friendship

  def friend_request?(user)
   user && !friends_with?(user) && user.id.in?(requested_friend_ids)
  end

  def requested_friend_ids
    requested_friends.pluck(:id)
  end

  def friend_pending?(user)
   user && !friends_with?(user) && user.id.in?(pending_friend_ids)
  end

  def pending_friend_ids
    pending_friends.pluck(:id)
  end

  # def friend_blocked?(user)
  #  user && !friends_with?(user) && user.id.in?(blocked_friend_ids)
  # end

  # def blocked_friend_ids
  #   blocked_friends.pluck(:id)
  # end

  def search_conversation (conversation)
    $i = 0
    $j = 0
    matches = []
    users = User.all
    
    #finds all the users that match the form language and pushes them to matches array
    while $i < users.count do 
      while $j < users[$i].languages.count do
        if conversation.language == users[$i].languages[$j]
          matches.push(users[$i])
        end
        $j += 1
      end
      p "finished with user #{$i}"
      $j = 0
      $i+=1
    end

    $i = 0
    while $i < matches.count do 
      if conversation.age != nil
        if conversation.age == matches[$i].age
          matches[$i].count += 2
        end
      end
      if conversation.origin_country != ""
        if conversation.origin_country == matches[$i].origin_country
          matches[$i].count += 2
        end
      end
      # if conversation.current_country != nil
      #   if conversation.current_country == matches[$i].current_country
      #     matches[$i].count += 2
      #   end
      # end
      if conversation.male != nil
        if conversation.male == matches[$i].male
          matches[$i].count += 2
        end
      end
      if conversation.female != nil
        if conversation.female == matches[$i].female
          matches[$i].count += 2
        end
      end
      if conversation.other_gender != nil
        if conversation.other_gender == matches[$i].other_gender
          matches[$i].count += 2
        end
      end

      if conversation.interests != []
        $j = 0
        $k = 0
        while $j < conversation.interests.count do
          while $k < matches[$i].interests.count do
            if conversation.interests[$j] == matches[$i].interests[$k]
              matches[$i].count += 1
            end
            $k += 1
          end
          $k = 0
          $j += 1
        end
      end
      $i += 1
    end

    return matches


  end

end

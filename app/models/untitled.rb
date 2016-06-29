    # $i = 0
    # until $i < matches.count do 
    #   if conversation.age != nil
    #     if conversation.age == matches[$i].age
    #       matches[$i].count += 2
    #     end
    #   end
    #   if conversation.origin_country != ""
    #     if conversation.origin_country == matches[$i].origin_country
    #       matches[$i].count += 2
    #     end
    #   end
    #   # if conversation.current_country != nil
    #   #   if conversation.current_country == matches[$i].current_country
    #   #     matches[$i].count += 2
    #   #   end
    #   # end
    #   if conversation.male != nil
    #     if conversation.male == matches[$i].male
    #       matches[$i].count += 2
    #     end
    #   end
    #   if conversation.female != nil
    #     if conversation.female == matches[$i].female
    #       matches[$i].count += 2
    #     end
    #   end
    #   if conversation.other_gender != nil
    #     if conversation.other_gender == matches[$i].other_gender
    #       matches[$i].count += 2
    #     end
    #   end

    #   if conversation.interests != []
    #     $j = 0
    #     $k = 0
    #     until $j < conversation.interests.count do
    #       until $k < matches[$i].interests.count do
    #         if conversation.interests[$j] == matches[$i].interests[$k]
    #           matches[$i].count += 1
    #         end
    #         $k += 1
    #       end
    #       $k = 0
    #       $j += 1
    #     end
    #   end
    #   p "finished with user #{$i}"
    #   $i += 1
    # end

    # return matches.order(count: :asc)
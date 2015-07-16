class Packer
  
  attr_accessor :traveldestination, :dates, :quantity, :activities, :sentences, :sentence_hash
  
  def initialize(traveldestination, dates, quantity, activities, sentence_hash)
    @traveldestination = traveldestination
    @dates = dates
    @quantity = quantity
    @activities = activities
    @sentences = "Essentials include: #{@quantity} pairs of underwear, #{@quantity} casual shirts, #{@quantity} casual bottoms, belt, sunglasses, wallet, passport, keys, ID, watch, books, camera, phone, umbrella, phone, phone charger, disinfectant, contacts, perfume, cologne, blemish stick, makeup, deoderant, toothpaste, toothbrush, floss, razor, shaving cream, q-tips, moisturizer, cleanser."
    @sentence_hash = sentence_hash
  end
  
  def add_activity
    @activities.each do |activity, objects|
      @sentences+="\n #{@sentence_hash[activity, objects]}"
      end 
  end
end



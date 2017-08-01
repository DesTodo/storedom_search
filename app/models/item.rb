class Item < ActiveRecord::Base
  has_many :order_items
  has_many :orders, through: :order_items

  # def self.search(search_term)
  #   if search_term
  #     where('name LIKE ?', "%#{search_term}%")
  #     #where('name LIKE ?', "%#{search_term}%").limit(10)
  #     #where('name LIKE ?', "%#{search_term}%").order('id DESC')
  #   else
  #     order('id DESC')
  #   end
  # end
end

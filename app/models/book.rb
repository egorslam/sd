require 'prime'

class Book < ActiveRecord::Base

  has_many :single_sorts
  has_many :lists, through: :single_sorts


  def self.all_prime
    all.select{|book| Prime.prime?(book.name.length)}
  end  
  
end

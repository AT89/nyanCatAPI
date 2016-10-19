class Score < ApplicationRecord
  before_save { self.name = name.downcase.capitalize }

  # rubular.com
  VALID_NAME_REGEX = /\A[a-zA-Z]{2,30}($|\s[a-zA-Z]{2,30})\z/i

  validates :name, length: { maximum: 20 }, format: { with: VALID_NAME_REGEX }, uniqueness: { case_sensitive: false }

  validate :allowed_name

private

  def allowed_name
    self.name = name.downcase.capitalize

    disallowed_words = ["Rat", "John", "Juan"]

    disallowed_words.each do |word|
      if self.name == word
        errors.add(:base, "Please choose a different name.")
        return false
      end #end if
    end #end enumerator
  end #end method

end #end class

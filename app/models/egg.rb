class Egg < ApplicationRecord

  SIZES = %w(small medium large)
  COLORS = %w(white brown blue)
  SHAPES = %w(round oval square)
  
  enum size: { small: 'small', medium: 'medium', large: 'large' }
  enum color: { white: 'white', brown: 'brown', blue: 'blue' }
  enum shape: { round: 'round', oval: 'oval', square: 'square' }

  def initialize(*args)
    super(*args)
    self.uuid = SecureRandom.uuid
    self.size = SIZES.sample
    self.color = COLORS.sample
    self.shape = SHAPES.sample
  end
end
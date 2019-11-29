class Player
  DEFAULT_HIT_POINTS = 60
  DEFAULT_HIT_DAMAGE = 10

  attr_reader :name, :hit_points

  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def receive_damage
    @hit_points -= DEFAULT_HIT_DAMAGE
  end

end
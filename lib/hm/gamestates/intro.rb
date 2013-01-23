class Intro < Chingu::GameState
  def initialize
    super
    @title = Chingu::Text.create(:text => "Harvest Monsters v0.0", :x => 100, :y => 100, :size => 100)
    self.input =  { :escape => :exit,
                    :enter => MainMenu
    }
  end
end


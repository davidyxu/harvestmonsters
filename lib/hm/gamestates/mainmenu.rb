class MainMenu < Chingu::GameState
  def initialize
    super
    @current_selection = :play #TODO: create selection objects which will push different game states
    @title = Chingu::Text.create(:text => "Main Menu", :x => 100, :y => 100, :size => 75)
    self.input =  { :enter => enter_selection
                    :up => selection_up
                    :w => selection_up
                    :down => selection_down
                    :s => selection_down
    }
  end

  def selection_up
  end

  def selection_down
  end

  def enter_selection
    case @current_selection
    when :play
      push_game_state(Play)
    when :continue
      #TODO: continue from most recent save state
    when :load
      push_game_state(LoadMenu)
    when :options
    end
  end
end

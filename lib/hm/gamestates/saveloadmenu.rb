class SaveLoadMenu < Chingu::GameState
  def initialize
    super
  end

  def setup
    super
    #TODO: Create save slot and load slot object assets
    @save1 ||= SaveSlot.create(:x => WINDOW_W/2, :y => 2 * WINDOW_H/7)
    @save2 ||= SaveSlot.create(:x => WINDOW_W/2, :y => 4 * WINDOW_H/7)
    @save3 ||= SaveSlot.create(:x => WINDOW_W/2, :y => 6 * WINDOW_H/7)
  end
end

class DressPre

  attr_accessor :pre

  # Get the next cloth
  def initialize(nextProcess)
    @nextProcess = nextProcess
  end

  public

  # For different cloth, pre-request is different
  def getPre
    # hat = 1
    if @nextProcess == 1
      @pre = [3]
    # pants = 2
    elsif @nextProcess == 2
      @pre = [2]
    # shirt = 3
    elsif @nextProcess == 3
      @pre = [3]
    # shoes = 4
    elsif @nextProcess == 4
      @pre = [5, 2]
    # socks = 5
    elsif @nextProcess == 5
      @pre = [5]
    # leave = 6
    elsif @nextProcess == 6
      @pre = [2, 3, 4, 5]
    else
      @pre = []
    end
  end
end
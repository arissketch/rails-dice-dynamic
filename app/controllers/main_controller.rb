class MainController < ApplicationController
  def home
    render({:template=>"layouts/homepage"})
  end

  def d2_6page
    @no_dice="2"
    @no_side="6"
    @result=[]
    2.times do
      @side_result=rand(1..6)
      @result.push(@side_result)
    end
    render({:template=>"layouts/dice"})
  end
  def d2_10page
    @no_dice="2"
    @no_side="10"
    @result=[]
    2.times do
      @side_result=rand(1..10)
      @result.push(@side_result)
    end
    render({:template=>"layouts/dice"})
  end
  def d1_20page
    @no_dice="1"
    @no_side="20"
    @result=[]
    1.times do
      @side_result=rand(1..20)
      @result.push(@side_result)
    end
    render({:template=>"layouts/dice"})
  end
  def d5_4page
    @no_dice="5"
    @no_side="4"
    @result=[]
    5.times do
      @side_result=rand(1..4)
      @result.push(@side_result)
    end
    render({:template=>"layouts/dice"})
  end

  def random
    @no_dice=params.fetch("random_dice").to_i
    @no_side=params.fetch("random_sides").to_i
    @result=[]
    @no_dice.times do
      @side_result=rand(1..@no_side)
      @result.push(@side_result)
    end
    render({:template => "layouts/dice"})
  end

end

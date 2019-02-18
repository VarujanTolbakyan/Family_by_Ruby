require_relative './person'

class Parent < Person

  def initialize(name, surname, mam_or_ded)
    if mam_or_ded == :mam || mam_or_ded == :ded
      @mam_or_ded = mam_or_ded
    end
    super(name, surname)
  end

  def child=(child)
    init_children
    child.send "#{@mam_or_ded}=", self
    unless @children.any? {|el| el == child}
      @children << child
    end
  end

  def find_child(name, surname = nil)
    suitable = nil
    children.each do |el|
      if el.name == name && (!surname || el.surname == surname) 
        suitable = el
      end
    end
    suitable
  end

  def children
    init_children
    @children
  end

  private
  def init_children
    @children = [] if @children.nil?
  end
end

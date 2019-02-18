require_relative './person'

class Child < Person
  def mam=(parent)
    if !parent.nil? 
      @mam = parent
    end
  end
  def ded=(parent)
    if !parent.nil?
      @ded = parent
    end
  end

  def mam
    @mam
  end

  def ded
    @ded
  end
end

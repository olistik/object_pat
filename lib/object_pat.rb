require "object_pat/version"

module ObjectPat
end

class Object
  def pat
    if block_given?
      yield self
    else
      self
    end
  end
end

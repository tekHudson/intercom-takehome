class Array
  def squash
    return self if self.length == 1 && !self[0].is_a?(Array)

    self.reduce([]) { |results, obj| results.push *(obj.is_a?(Array) ? obj.squash : obj) }
  end
end

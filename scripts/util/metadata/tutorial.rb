class Tutorial
  class Step
    attr_reader :description, :steps, :title

    def initialize(hash)
      @description = hash.fetch("description")

      @steps =
        if (hash["steps"] || []).any?
          hash.fetch("steps").collect { |e| self.class.new(e) }
        else
          []
        end

      @title = hash.fetch("title")
    end
  end

  attr_reader :image, :steps, :tutorials

  def initialize(hash)
    @image = hash["image"]
    @steps = (hash["steps"] || []).collect { |e| Step.new(e) }
    @tutorials = (hash["tutorials"] || {}).to_struct_with_name(self.class, should_have_keys: ["steps"])
  end
end

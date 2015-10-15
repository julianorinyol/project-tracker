module CustomHelpers
  def create_x_many_objects(num, factory)
    num.to_i.times do
      create(factory.to_sym)
    end
  end
end
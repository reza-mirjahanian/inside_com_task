class CostService

  def initialize(classroom_operation_hours, fluorescent_units_count, tubes_in_unit, tube_price)
    @classroom_operation_hours = classroom_operation_hours
    @fluorescent_units_count = fluorescent_units_count
    @tubes_in_unit = tubes_in_unit
    @tube_price = tube_price
  end

  def calculate
    total_required_fluorescent_units = 0
    @fluorescent_units_count.times do
      total_required_fluorescent_units += single_unit_repair_times(@classroom_operation_hours)
    end

    total_required_fluorescent_tubes = total_required_fluorescent_units * 4

    {
      total_required_fluorescent_units: total_required_fluorescent_units,
      total_required_fluorescent_tubes: total_required_fluorescent_tubes,
      total_required_fluorescent_tubes_cost: total_required_fluorescent_tubes * @tube_price
    }
  end

  # How many times do I need to replace a fluorescent unit in a classroom?
  # We include the first one too
  def single_unit_repair_times(used_hours)
    replace_counter = 0
    while used_hours > 0
      used_hours -= life_of_new_fluorescent_unit
      replace_counter += 1
    end

    replace_counter
  end

  # Generate four random numbers between 100 and 200 and return the second one.
  def life_of_new_fluorescent_unit
    random_numbers = Array.new(4) { SecureRandom.rand(100..200) }.sort
    random_numbers[1]
  end

end
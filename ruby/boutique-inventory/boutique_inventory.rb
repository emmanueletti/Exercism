class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    items.map { |item| item[:name] }.sort
  end

  def cheap
    items.select { |item| item[:price] < 30.00 }
  end

  def out_of_stock
    items.select { |item| item[:quantity_by_size].empty? }
  end

  def stock_for_item(name)
    selected = items.select { |item| item[:name] === name }
    selected.first[:quantity_by_size]
  end

  def total_stock
    items.map { |item|
      item[:quantity_by_size].map { |_, quantity| quantity }
    }.flatten.sum
  end

  private
  attr_reader :items
end

cclass CashRegister

  def initialize(discount=0)
    self.total = 0
    self.discount = discount
    self.items = []
    self.last_transaction_amount = 0
  end
  attr_accessor :items, :discount, :total, :last_transaction

  def total=(value)
    @total = value
  end

  def discount=(value)
    @discount = value
  end

  def discount
    @discount
  end

  def total
    @total
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, amount, quantity=1)
    self.total += amount * quantity
    quantity.times do
      items << title
    end

    self.last_transaction_amount = amount * quantity
    self.last_transaction = amount * quantity
  end

  def apply_discount
  
    end
  end

  def items=(list)
    @items = list
  end

  def items
    @items
  end

  def last_transaction_amount=(amount)
    @last_transaction_amount = amount
  end

  def last_transaction_amount
    @last_transaction_amount
  end

  def void_last_transaction
    self.total -= last_transaction_amount
    self.total = self.total - self.last_transaction
  end

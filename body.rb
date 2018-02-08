class Body

  def initialize(name, mass)
    @name = name
    @mass = mass
  end

  def name
    @name
  end

  def mass
    @mass
  end

end

class Planet < Body

  def initialize(name, mass, day, year)
    super(name, mass)
    @day = day
    @year = year
  end

  def day
    @day
  end

  def year
    @year
  end

end

class Star < Body

  def initialize(name, mass, type)
    super(name, mass)
    @type = type
  end

  def type
    @type
  end

end

class Moon < Body

  def initialize(name, mass, month, planet)
    super(name, mass)
    @month = month
    @planet = planet
  end

  def month
    @month
  end

  def planet
    @planet
  end

end

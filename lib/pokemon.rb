class Pokemon
  #attr_accessor :name, :type, :db
  attr_accessor :id, :name, :type, :db, :hp

 #  @@all =[]

<<<<<<< HEAD
  def initialize id:, name:, db:, type:, hp: ""
    @id = id
    @name =name
    @type = type
    @db = db
    @hp = hp
=======
  def initialize(keywords)
    # @id = id
    # @name =name
    # @type = type
    # @db = db
    # @hp = hp
>>>>>>> ce368c43c8a80f38ef6a739ec87705a1d3d2007a

  end


  def self.save(name, type, db)
      db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end

  def self.find id, db
    result = db.execute("SELECT * FROM pokemon WHERE id = ?",id)[0]
    id_, name, type, hp = result

    new(id: id_, name: name, type: type,db: db, hp: hp)
  end

  def alter_hp (hp, db)
   db.execute("UPDATE pokemon SET hp = ? WHERE id = ?",hp,id)
 end

end

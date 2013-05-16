class CreateTraits < ActiveRecord::Migration
  def change
    create_table :traits do |t|
      t.string :name
      
      t.timestamps
      
    end
    add_index :traits, [:name], :unique => true
    Trait.create :name => ""
    Trait.create :name => "Bird"
    Trait.create :name => "Bird Dinosaur"
    Trait.create :name => "Bird Spirit"
    Trait.create :name => "Coyote Warlock"
    Trait.create :name => "Dinosaur"
    Trait.create :name => "Dwarf Cleric"
    Trait.create :name => "Dwarf Mage"
    Trait.create :name => "Dwarf Ranger"
    Trait.create :name => "Elemental"
    Trait.create :name => "Elf Mage"
    Trait.create :name => "Elf Ranger"
    Trait.create :name => "Factory"
    Trait.create :name => "Human"
    Trait.create :name => "Human Cleric"
    Trait.create :name => "Human Mage"
    Trait.create :name => "Human Princess"
    Trait.create :name => "Human Rogue"
    Trait.create :name => "Human Warrior"
    Trait.create :name => "Insect"
    Trait.create :name => "Necrotic Warlock"
    Trait.create :name => "Orc Cleric"
    Trait.create :name => "Orc Gladiator"
    Trait.create :name => "Orc High Cleric"
    Trait.create :name => "Orc Ranger"
    Trait.create :name => "Orc Warlock"
    Trait.create :name => "Orc Warrior"
    Trait.create :name => "Plant"
    Trait.create :name => "Robot"
    Trait.create :name => "Rock Beast"
    Trait.create :name => "Shin'hare"
    Trait.create :name => "Shroomkin Mutant"
    Trait.create :name => "Skeleton"
    Trait.create :name => "Tiger"
    Trait.create :name => "Voidtouched"
    Trait.create :name => "Wall"
    Trait.create :name => "Witch"
  end
end

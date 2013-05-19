class CreateTraits < ActiveRecord::Migration
  def self.up
    create_table :traits do |t|
      t.string :trait_name
      
      t.timestamps
      
    end
    add_index :traits, [:trait_name], :unique => true
    Trait.create :trait_name => ""
    Trait.create :trait_name => "Bird"
    Trait.create :trait_name => "Bird Dinosaur"
    Trait.create :trait_name => "Bird Spirit"
    Trait.create :trait_name => "Coyotle Warlock"
    Trait.create :trait_name => "Dinosaur"
    Trait.create :trait_name => "Dwarf Cleric"
    Trait.create :trait_name => "Dwarf Mage"
    Trait.create :trait_name => "Dwarf Ranger"
    Trait.create :trait_name => "Elemental"
    Trait.create :trait_name => "Elf Mage"
    Trait.create :trait_name => "Elf Ranger"
    Trait.create :trait_name => "Factory"
    Trait.create :trait_name => "Human"
    Trait.create :trait_name => "Human Cleric"
    Trait.create :trait_name => "Human Mage"
    Trait.create :trait_name => "Human Princess"
    Trait.create :trait_name => "Human Rogue"
    Trait.create :trait_name => "Human Warrior"
    Trait.create :trait_name => "Insect"
    Trait.create :trait_name => "Necrotic Warlock"
    Trait.create :trait_name => "Orc Cleric"
    Trait.create :trait_name => "Orc Gladiator"
    Trait.create :trait_name => "Orc High Cleric"
    Trait.create :trait_name => "Orc Ranger"
    Trait.create :trait_name => "Orc Warlock"
    Trait.create :trait_name => "Orc Warrior"
    Trait.create :trait_name => "Plant"
    Trait.create :trait_name => "Robot"
    Trait.create :trait_name => "Rock Beast"
    Trait.create :trait_name => "Shin'hare"
    Trait.create :trait_name => "Shroomkin Mutant"
    Trait.create :trait_name => "Skeleton"
    Trait.create :trait_name => "Tiger"
    Trait.create :trait_name => "Voidtouched"
    Trait.create :trait_name => "Wall"
    Trait.create :trait_name => "Witch"
  end


  def self.down
    drop_table :traits
  end
end

class Hero < ApplicationRecord
    has_many :fight
    connects_to database: { writing: :primary, reading: :secondary}
    def self.create_db(params, db=:primary)
        Hero.connected_to(database: db) do
            Hero.create(params)
        end
    end

    def self.read_db(params, db=:primary)
        Hero.connected_to(database: db) do
            Hero.where(params)
        end
    end

    def self.update_db(params, attributes, db=:primary)
        Hero.connected_to(database: db) do
            hero = Hero.where(params).first
            hero.update_attributes(attributes)
        end
    end

    def self.delete_db(params, db=:primary)
        Hero.connected_to(database: db) do
            Hero.where(params).first.delete
        end
    end

    def self.list
        list = Hero.read_db("").pluck(:id, :name, :role)
        list.each do |hero|
            puts hero[0].to_s + " " + hero[1] + " " + hero[2]
        end
        return 0
    end

    def self.tips(name, db= :primary)
        Hero.connected_to(database: db) do
            puts Hero.where(name: name).pick(:tips)
        end
    end

    def self.update_natalia
        # 2 saber assasin
        # 5 fanny assasin
        # 9 selena assasin
        # 14 chou fighter
        # 29 kaja fighter
        # 42 gusion mage
        tips = {:tips => ("1. lastpick, 
        2. no counters, 
        3. patroling, 
        4. recover HP fast, 
        5. fast thinking no impulsive, 
        6. commanding, 
        7. rescue friends, 
        8. kill mage, 
        9. kill mm, 
        10. bush fast, 
        11. no lags, 
        12. sprint, 
        13. find alone mage mm, 
        14. find quiet spots, 
        15. steal buffs, 
        16. ignore slow kill (tanks fighters)").split("\n        ").join("").split(", ").join(", \n")}
        params = {:name => "natalia"}
        Hero.update_db(params, tips, :primary)
    end

    def self.update_johnson
        tips = {:tips => ("1. firstpick, 
        2. communications, 
        3. LEVEL 4 FAST, 
        4. patroling, 
        5. commanding, 
        6. coldown ULTI ITEMS, 
        7. rescue friends, 
        8. fast thinking no impulsive, 
        9. kill mm, 
        10. recover HP fast, 
        11. no lags, 
        12. sprint, 
        13. kill mage, 
        14. find CROWDED spots, 
        15. steal buffs FANNY, 
        16. ignore slow kill (tanks fighters)").split("\n        ").join("").split(", ").join(", \n")}
        params = {:name => "johnson"}
        Hero.update_db(params, tips, :primary)
    end
end

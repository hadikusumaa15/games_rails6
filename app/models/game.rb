class Game < ApplicationRecord
    connects_to database: { writing: :primary, reading: :secondary}
    # params = {title: "super mario bross", price: 20000, description: "Nintendo games", studio: "Madhouse", website: "www.nintendo.com"}
    # params = {title: "game of thrones", price: 10000, description: "permainan tahta", studio: "hbo", website: "www.hbo.com"}
    # db = :primary || :secondary || :thirdary
    # params = {title: "Dragon ball Heroes", price: 30000, description: "Console Games", studio: "Bandai Namco Picture", website: "www.DBH.com"}
    def self.create_db(params, db)
        Game.connected_to(database: db) do
            Game.create(params)
        end
    end

    # params = {id: 1}
    def self.read_db(params, db)
        Game.connected_to(database: db) do
            Game.where(params)
        end
    end

    # params = {id: 1}
    def self.delete_db(params, db)
        Game.connected_to(database: db) do
            Game.where(params).first.delete
        end
    end

end
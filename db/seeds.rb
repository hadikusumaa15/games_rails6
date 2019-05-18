# roles
roles = ["assasin", "fighter", "mage", "marksman", "support", "tank"]
roles.each do |name|
    Role.create(name: name)
end

# heros
def create_hero(names, role)
    names.each do |name|
        Hero.create(name: name, role: role)
    end
end
# name, role
assasins = ["natalia", "saber", "karina", "zilong", "fanny", "hayabusa", "lancelot", "helcurt", "selena", "hanzo"]
create_hero(assasins, "assasin")

fighters = ["alucard", "bane", "freya", "chou", "sun", "alpha", "ruby", "lapu-lapu", "roger", "argus", "aldous", "leomord", "guinevere", "jawhead", "martis", "thamuz", "minsitthar", "badang", "kaja"]
create_hero(fighters, "fighter")

mages = ["alice", "nana", "karina", "eudora", "gord", "kagura", "cyclops", "aurora", "vexana", "odette", "zhask", "pharsa", "gusion", "valir", "harith", "kadita", "harley", "change", "vale", "lunox"]
create_hero(mages, "mage")

marksmans = ["miya", "bruno", "clint", "layla", "yishunshin", "kimmy", "granger", "moskov", "irithel", "hanabi"]
create_hero(marksmans, "marksman")

supports = ["rafaela", "estes", "diggie", "angela"]
create_hero(supports, "support")

tanks = ["balmond", "tigreal", "akai", "franco", "minotaur", "lolita", "johnson", "hilda", "gatotkaca", "uranus", "belerick", "grock", "hylos", "khufra", "esmeralda"]
create_hero(tanks, "tank")

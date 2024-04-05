// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let cardResponse = try? JSONDecoder().decode(CardResponse.self, from: jsonData)

import Foundation

// MARK: - CardResponse
struct CardResponse: Codable {
    var basic, classic: [AshesOfOutland]?
    var hallOfFame: [JSONAny]?
    var missions: [AshesOfOutland]?
    var demo, system, debug, promo: [JSONAny]?
    var naxxramas, goblinsVsGnomes, blackrockMountain, theGrandTournament: [AshesOfOutland]?
    var credits: [Credit]?
    var heroSkins, tavernBrawl, theLeagueOfExplorers, whispersOfTheOldGods: [AshesOfOutland]?
    var oneNightInKarazhan, meanStreetsOfGadgetzan, journeyToUnGoro, knightsOfTheFrozenThrone: [AshesOfOutland]?
    var koboldsCatacombs, theWitchwood, theBoomsdayProject, rastakhanSRumble: [AshesOfOutland]?
    var riseOfShadows, tavernsOfTime, saviorsOfUldum, descentOfDragons: [AshesOfOutland]?
    var galakrondSAwakening, ashesOfOutland: [AshesOfOutland]?
    var wildEvent: [JSONAny]?
    var scholomanceAcademy, battlegrounds, demonHunterInitiate, madnessAtTheDarkmoonFaire: [AshesOfOutland]?
    var forgedInTheBarrens, legacy, core, vanilla: [AshesOfOutland]?
    var wailingCaverns: [JSONAny]?
    var unitedInStormwind, mercenaries, fracturedInAlteracValley, voyageToTheSunkenCity: [AshesOfOutland]?
    var unknown, murderAtCastleNathria, marchOfTheLichKing, pathOfArthas: [AshesOfOutland]?
    var festivalOfLegends, titans, cavernsOfTime, showdownInTheBadlands: [AshesOfOutland]?
    var tutorial, whizbangSWorkshop, event: [AshesOfOutland]?

    enum CodingKeys: String, CodingKey {
        case basic = "Basic"
        case classic = "Classic"
        case hallOfFame = "Hall of Fame"
        case missions = "Missions"
        case demo = "Demo"
        case system = "System"
        case debug = "Debug"
        case promo = "Promo"
        case naxxramas = "Naxxramas"
        case goblinsVsGnomes = "Goblins vs Gnomes"
        case blackrockMountain = "Blackrock Mountain"
        case theGrandTournament = "The Grand Tournament"
        case credits = "Credits"
        case heroSkins = "Hero Skins"
        case tavernBrawl = "Tavern Brawl"
        case theLeagueOfExplorers = "The League of Explorers"
        case whispersOfTheOldGods = "Whispers of the Old Gods"
        case oneNightInKarazhan = "One Night in Karazhan"
        case meanStreetsOfGadgetzan = "Mean Streets of Gadgetzan"
        case journeyToUnGoro = "Journey to Un'Goro"
        case knightsOfTheFrozenThrone = "Knights of the Frozen Throne"
        case koboldsCatacombs = "Kobolds & Catacombs"
        case theWitchwood = "The Witchwood"
        case theBoomsdayProject = "The Boomsday Project"
        case rastakhanSRumble = "Rastakhan's Rumble"
        case riseOfShadows = "Rise of Shadows"
        case tavernsOfTime = "Taverns of Time"
        case saviorsOfUldum = "Saviors of Uldum"
        case descentOfDragons = "Descent of Dragons"
        case galakrondSAwakening = "Galakrond's Awakening"
        case ashesOfOutland = "Ashes of Outland"
        case wildEvent = "Wild Event"
        case scholomanceAcademy = "Scholomance Academy"
        case battlegrounds = "Battlegrounds"
        case demonHunterInitiate = "Demon Hunter Initiate"
        case madnessAtTheDarkmoonFaire = "Madness At The Darkmoon Faire"
        case forgedInTheBarrens = "Forged in the Barrens"
        case legacy = "Legacy"
        case core = "Core"
        case vanilla = "Vanilla"
        case wailingCaverns = "Wailing Caverns"
        case unitedInStormwind = "United in Stormwind"
        case mercenaries = "Mercenaries"
        case fracturedInAlteracValley = "Fractured in Alterac Valley"
        case voyageToTheSunkenCity = "Voyage to the Sunken City"
        case unknown = "Unknown"
        case murderAtCastleNathria = "Murder at Castle Nathria"
        case marchOfTheLichKing = "March of the Lich King"
        case pathOfArthas = "Path of Arthas"
        case festivalOfLegends = "Festival of Legends"
        case titans = "TITANS"
        case cavernsOfTime = "Caverns of Time"
        case showdownInTheBadlands = "Showdown in the Badlands"
        case tutorial = "Tutorial"
        case whizbangSWorkshop = "Whizbang's Workshop"
        case event = "Event"
    }
    
    public func mergeAshesOfOutland() -> [Array<AshesOfOutland>] {
        return Mirror(reflecting: self).children.compactMap({ $0.value as? Array<AshesOfOutland> })
    }
}

// MARK: - AshesOfOutland
struct AshesOfOutland: Codable {
    var cardID: String?
    var dbfID: Int?
    var name: String?
    var cardSet: AshesOfOutlandCardSet?
    var type: TypeEnum?
    var text: String?
    var playerClass: Class?
    var locale: Locale?
    var health: Int?
    var rarity: Rarity?
    var faction: Faction?
    var mechanics: [Mechanic]?
    var elite: Bool?
    var cost: Int?
    var flavor, artist: String?
    var attack: Int?
    var spellSchool: SpellSchool?
    var race: Race?
    var img: String?
    var collectible: Bool?
    var imgGold: String?
    var durability: Int?
    var otherRaces: [Race]?
    var howToGetGold, armor, howToGet, multiClassGroup: String?
    var classes: [Class]?
    var howToGetDiamond, howToGetSignature: String?
    var runeCost: RuneCost?

    enum CodingKeys: String, CodingKey {
        case cardID = "cardId"
        case dbfID = "dbfId"
        case name, cardSet, type, text, playerClass, locale, health, rarity, faction, mechanics, elite, cost, flavor, artist, attack, spellSchool, race, img, collectible, imgGold, durability, otherRaces, howToGetGold, armor, howToGet, multiClassGroup, classes, howToGetDiamond, howToGetSignature, runeCost
    }
}

enum AshesOfOutlandCardSet: String, Codable {
    case ashesOfOutland = "Ashes of Outland"
    case basic = "Basic"
    case battlegrounds = "Battlegrounds"
    case blackrockMountain = "Blackrock Mountain"
    case cavernsOfTime = "Caverns of Time"
    case classic = "Classic"
    case core = "Core"
    case demonHunterInitiate = "Demon Hunter Initiate"
    case descentOfDragons = "Descent of Dragons"
    case event = "Event"
    case festivalOfLegends = "Festival of Legends"
    case forgedInTheBarrens = "Forged in the Barrens"
    case fracturedInAlteracValley = "Fractured in Alterac Valley"
    case galakrondSAwakening = "Galakrond's Awakening"
    case goblinsVsGnomes = "Goblins vs Gnomes"
    case heroSkins = "Hero Skins"
    case journeyToUnGoro = "Journey to Un'Goro"
    case knightsOfTheFrozenThrone = "Knights of the Frozen Throne"
    case koboldsCatacombs = "Kobolds & Catacombs"
    case legacy = "Legacy"
    case madnessAtTheDarkmoonFaire = "Madness At The Darkmoon Faire"
    case marchOfTheLichKing = "March of the Lich King"
    case meanStreetsOfGadgetzan = "Mean Streets of Gadgetzan"
    case mercenaries = "Mercenaries"
    case missions = "Missions"
    case murderAtCastleNathria = "Murder at Castle Nathria"
    case naxxramas = "Naxxramas"
    case oneNightInKarazhan = "One Night in Karazhan"
    case pathOfArthas = "Path of Arthas"
    case rastakhanSRumble = "Rastakhan's Rumble"
    case riseOfShadows = "Rise of Shadows"
    case saviorsOfUldum = "Saviors of Uldum"
    case scholomanceAcademy = "Scholomance Academy"
    case showdownInTheBadlands = "Showdown in the Badlands"
    case tavernBrawl = "Tavern Brawl"
    case tavernsOfTime = "Taverns of Time"
    case theBoomsdayProject = "The Boomsday Project"
    case theGrandTournament = "The Grand Tournament"
    case theLeagueOfExplorers = "The League of Explorers"
    case theWitchwood = "The Witchwood"
    case titans = "TITANS"
    case tutorial = "Tutorial"
    case unitedInStormwind = "United in Stormwind"
    case unknown = "Unknown"
    case vanilla = "Vanilla"
    case voyageToTheSunkenCity = "Voyage to the Sunken City"
    case whispersOfTheOldGods = "Whispers of the Old Gods"
    case whizbangSWorkshop = "Whizbang's Workshop"
}

enum Class: String, Codable {
    case deathKnight = "Death Knight"
    case demonHunter = "Demon Hunter"
    case dream = "Dream"
    case druid = "Druid"
    case hunter = "Hunter"
    case mage = "Mage"
    case neutral = "Neutral"
    case paladin = "Paladin"
    case priest = "Priest"
    case rogue = "Rogue"
    case shaman = "Shaman"
    case warlock = "Warlock"
    case warrior = "Warrior"
    case whizbang = "Whizbang"
}

enum Faction: String, Codable {
    case alliance = "Alliance"
    case horde = "Horde"
    case neutral = "Neutral"
}

enum Locale: String, Codable {
    case ptBR = "ptBR"
}

// MARK: - Mechanic
struct Mechanic: Codable {
    var name: Name?
}

enum Name: String, Codable {
    case abateHonroso = "Abate Honroso"
    case adapteSE = "Adapte‑se"
    case adjacentBuff = "AdjacentBuff"
    case adormecido = "Adormecido"
    case affectedBySpellPower = "AffectedBySpellPower"
    case aiMustPlay = "AIMustPlay"
    case aura = "Aura"
    case cadáver = "Cadáver"
    case colossalX = "Colossal +X"
    case combo = "Combo"
    case congelar = "Congelar"
    case corromper = "Corromper"
    case curaExcessiva = "Cura Excessiva"
    case danoMágico = "Dano Mágico"
    case danoMágicoDeNatureza = "Dano Mágico de Natureza"
    case descubra = "Descubra"
    case dragar = "Dragar"
    case eco = "Eco"
    case elusivo = "Elusivo"
    case escavar = "Escavar"
    case escudoDivino = "Escudo Divino"
    case exilar = "Exilar"
    case feitiçaria = "Feitiçaria"
    case feitiçoDuplo = "Feitiço Duplo"
    case finale = "Finale"
    case forjar = "Forjar"
    case frenesi = "Frenesi"
    case furtividade = "Furtividade"
    case fúriaDOSVentos = "Fúria dos Ventos"
    case gemaSangrenta = "Gema Sangrenta"
    case golemDeJade = "Golem de Jade"
    case gritoDeGuerra = "Grito de Guerra"
    case imbuir = "Imbuir"
    case immuneToSpellpower = "ImmuneToSpellpower"
    case inspirar = "Inspirar"
    case investida = "Investida"
    case invisibleDeathrattle = "InvisibleDeathrattle"
    case invocar = "Invocar"
    case lançadoAoComprar = "Lançado ao Comprar"
    case lifesteal = "Lifesteal"
    case magnético = "Magnético"
    case massacre = "Massacre"
    case mini = "Mini"
    case miniaturizar = "Miniaturizar"
    case missão = "Missão"
    case morph = "Morph"
    case oneTurnEffect = "OneTurnEffect"
    case peçonhento = "Peçonhento"
    case provocar = "Provocar"
    case rapidez = "Rapidez"
    case recruta = "Recruta"
    case renascer = "Renascer"
    case saqueRápido = "Saque Rápido"
    case sedeDeManaX = "Sede de Mana (X)"
    case segredo = "Segredo"
    case silêncio = "Silêncio"
    case sobrecarga = "Sobrecarga"
    case sortilégio = "Sortilégio"
    case summoned = "Summoned"
    case sérieDeMissões = "Série de Missões"
    case tarefa = "Tarefa"
    case titã = "Titã"
    case trocável = "Trocável"
    case venenoso = "Venenoso"
    case vingarX = "Vingar (X)"
    case últimoSuspiro = "Último Suspiro"
}

enum Race: String, Codable {
    case all = "All"
    case beast = "Beast"
    case demon = "Demon"
    case dragon = "Dragon"
    case elemental = "Elemental"
    case mech = "Mech"
    case murloc = "Murloc"
    case naga = "Naga"
    case orc = "Orc"
    case pirate = "Pirate"
    case quilboar = "Quilboar"
    case totem = "Totem"
    case undead = "Undead"
}

enum Rarity: String, Codable {
    case common = "Common"
    case epic = "Epic"
    case free = "Free"
    case legendary = "Legendary"
    case rare = "Rare"
}

// MARK: - RuneCost
struct RuneCost: Codable {
    var blood, frost, unholy: Int?
}

enum SpellSchool: String, Codable {
    case arcane = "Arcane"
    case fel = "Fel"
    case fire = "Fire"
    case frost = "Frost"
    case holy = "Holy"
    case nature = "Nature"
    case shadow = "Shadow"
}

enum TypeEnum: String, Codable {
    case enchantment = "Enchantment"
    case hero = "Hero"
    case heroPower = "Hero Power"
    case location = "Location"
    case minion = "Minion"
    case spell = "Spell"
    case weapon = "Weapon"
}

// MARK: - Credit
struct Credit: Codable {
    var cardID: String?
    var dbfID: Int?
    var name: String?
    var cardSet: CreditCardSet?
    var type: TypeEnum?
    var rarity: Rarity?
    var cost, attack, health: Int?
    var text: String?
    var elite: Bool?
    var playerClass: Class?
    var locale: Locale?
    var race: Race?
    var mechanics: [Mechanic]?

    enum CodingKeys: String, CodingKey {
        case cardID = "cardId"
        case dbfID = "dbfId"
        case name, cardSet, type, rarity, cost, attack, health, text, elite, playerClass, locale, race, mechanics
    }
}

enum CreditCardSet: String, Codable {
    case credits = "Credits"
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}




//struct CardResponse: Codable {
//    var cardsByType: [String: [Card]]
//}

struct Card: Codable {
    var cardId: String?
    var name: String?
    var img: String?
    var type: String?
    var rarity: String?
    var attack: Int?
    var cost: Int?
    var health: Int?
    var text: String?
    var flavor: String?
    var cardSet: String?
    var mechanics: String?
    var playerClass: String?
    var spellSchool: String?
    var durability: Int?
    
    init(from ashesOutOfLand: AshesOfOutland) {
        self.cardId = ashesOutOfLand.cardID
        self.img = ashesOutOfLand.img
        self.name = ashesOutOfLand.name
        self.type = ashesOutOfLand.type?.rawValue
        self.rarity = ashesOutOfLand.rarity?.rawValue
        self.attack = ashesOutOfLand.attack
        self.cost = ashesOutOfLand.cost
        self.health = ashesOutOfLand.health
        self.text = ashesOutOfLand.text
        self.flavor = ashesOutOfLand.flavor
        self.cardSet = ashesOutOfLand.cardSet?.rawValue
        self.mechanics = ashesOutOfLand.mechanics?.reduce("", { $0 + "\($1.name?.rawValue ?? ""), " })
        self.playerClass = ashesOutOfLand.playerClass?.rawValue
        self.spellSchool = ashesOutOfLand.spellSchool?.rawValue
        self.durability = ashesOutOfLand.durability
    }
}

struct CardUI: Identifiable {
    var id: ObjectIdentifier
    var img: String?
    var flavor: String?
    var text: String?
}

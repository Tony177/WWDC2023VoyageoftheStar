//
//  StarModel.swift
//  Voyage of the Star
//
//  Created by Antonio Avolio on 02/04/23.
//

import Foundation

struct Star: Identifiable, Equatable {
    init() {
        self.id = -1
        self.nameEng = ""
        self.nameLat = ""
        self.age = 0
        self.distance = 0
        self.appMagnitude = 0
        self.desc = ""
        self.imageName = "sun"
    }
    init(id: Int, nameEng: String, nameLat: String, age: Float, distance: Float, appMagnitude: Float, desc: String, imageName: String) {
        self.id = id
        self.nameEng = nameEng
        self.nameLat = nameLat
        self.age = age
        self.distance = distance
        self.appMagnitude = appMagnitude
        self.desc = desc
        self.imageName = imageName
    }
    var id : Int
    var nameEng: String
    var nameLat: String
    var age: Float // expressed in milions (10^6)
    var distance: Float
    var appMagnitude: Float // brighteness from Earth
    var desc: String
    var imageName: String
}



let starList : [Star] =
    [
        Star(
            id: 1,
            nameEng: "Sun",
            nameLat: "Sol",
            age: 4600.0,
            distance: 0.0,
            appMagnitude: -26.74,
            desc: "The Sun is the only star in our solar system. It is the center of our solar system, and its gravity holds the solar system together.\nThe Sun is about 100 times wider than Earth and about 10 times wider than Jupiter, the biggest planet. If the Sun were as tall as a typical front door, Earth would be about the size of a nickel.",
            imageName: "sun"
        ),
        Star(
            id: 2,
            nameEng: "Sirius",
            nameLat: "Alpha Canis Majoris",
            age: 242.0,
            distance: 8.6,
            appMagnitude: -1.46,
            desc: "Sirius is colloquially known as the 'Dog Star', reflecting its prominence in its constellation, Canis Major (the Greater Dog).\nSirius is the brightest star in the night sky, almost twice as bright as the second-brightest star, Canopus. From Earth, Sirius always appears dimmer than Jupiter and Venus and is visible from almost everywhere on Earth",
            imageName: "sirius"
        ),
        Star(
            id: 3,
            nameEng: "Canopus",
            nameLat: "Alpha Carinae",
            age: 25.0,
            distance: 310.0,
            appMagnitude: -0.74,
            desc: "The name has two possible derivations:\n1.The star was given the name of a ship's pilot from another Greek legend: Canopus, pilot of Menelaus' ship on his quest to retrieve Helen of Troy after she was taken by Paris.\n2. A ruined ancient Egyptian port named Canopus lies near the mouth of the Nile, site of the Battle of the Nile.",
            imageName: "canopus"
        ),
        Star(
            id: 4,
            nameEng: "Hadar",
            nameLat: "Beta Centauri",
            age: 14.1,
            distance: 390.0,
            appMagnitude: 0.61,
            desc: "It bore the traditional names Hadar and Agena. Hadar comes from the Arabic حضار (the root's meaning is 'to be present' or 'on the ground' or 'settled, civilized area'), while the name Agena is thought to be derived from the Latin genua, meaning 'knees', from the star's position on the left knee of the centaur depicted in the constellation Centaurus",
            imageName: "hadar"
        ),
        Star(
            id: 5,
            nameEng: "Altair",
            nameLat: "Alpha Aquilae",
            age: 100.0,
            distance: 16.7,
            appMagnitude: 0.76,
            desc: "The traditional name Altair (Latinised to Alpha Aquilae) has been used since medieval times.\nIt is an abbreviation of the Arabic phrase النسر الطائر Al-Nisr Al-Ta'ir, 'the flying eagle'.",
            imageName: "altair"
        ),
        Star(
            id: 6,
            nameEng: "Pollux",
            nameLat: "Beta Geminorum",
            age: 724.0,
            distance: 33.7,
            appMagnitude: 1.16,
            desc: "The traditional name Pollux refers to the twins Castor and Pollux in Greek and Roman mythology.\nIn Chinese, 北河 (Běi Hé), meaning North River, refers to an asterism consisting of Pollux, ρ Geminorum, and Castor.[26] Consequently, Pollux itself is known as 北河三 (Běi Hé sān, English: the Third Star of North River.)",
            imageName: "pollux"
        ),
        Star(
            id: 7,
            nameEng: "Vega",
            nameLat: "Alpha Lyrae",
            age: 455.0,
            distance: 25.0,
            appMagnitude: 0.03,
            desc: "The name is believed to be derived from the Arabic term Al Nesr al Waki النسر الواقع which appeared in the Al Achsasi al Mouakket star catalogue and was translated into Latin as Vultur Cadens, 'the falling eagle/vulture'.\nIn Zoroastrianism, Vega was sometimes associated with Vanant, a minor divinity whose name means 'conqueror'",
            imageName: "vega"
        ),
        Star(
            id: 8,
            nameEng: "Edasich",
            nameLat: "Iota Draconis",
            age: 12400.0,
            distance: 101.2,
            appMagnitude: 3.3,
            desc: "It bore the traditional name Edasich, derived from the Arabic Al Ḍhiba' of Ulug Beg and the Dresden Globe, or Al dhīlī 'Male hyena' by Kazwini, with Eldsich being recorded in the Century Cyclopedia.\nIn Chinese the name for Iota Draconis is 紫微左垣一 (Zǐ Wēi Zuǒ Yuán yī, English: the First Star of Left Wall of Purple Forbidden Enclosure.)",
            imageName: "edasich"
        ),
        Star(
            id: 9,
            nameEng: "Bellatrix",
            nameLat: "Gammma Orionis",
            age: 25.2,
            distance: 250.0,
            appMagnitude: 1.64,
            desc: "The traditional name Bellatrix is from the Latin bellātrix 'female warrior'.\nTo the Inuit, the appearance of Betelgeuse and Bellatrix high in the southern sky after sunset marked the beginning of spring and lengthening days in late February and early March.\nThe Wardaman people of northern Australia know Bellatrix as Banjan, the sparkling pigment used in ceremonies conducted by Rigel the Red Kangaroo Leader in a songline when Orion is high in the sky.",
            imageName: "bellatrix"
        ),
        Star(
            id: 10,
            nameEng: "Rukbat",
            nameLat: "Alpha Sagittarii",
            age: 33.0,
            distance: 182.0,
            appMagnitude: 3.97,
            desc: "The star bore the traditional names Rukbat and Alrami, derived from the Arabic rukbat al-rāmī 'the knee of the archer'.\nIn Chinese the name for Alpha Sagittarii is 天淵三 (Tiān Yuān sān, English: the Third Star of Celestial Spring.)",
            imageName: "rukbat"
        ),
        Star(
            id: 11,
            nameEng: "Spica",
            nameLat: "Alpha Virgis",
            age: 12.5,
            distance: 250.0,
            appMagnitude: 0.97,
            desc: "The name is derived from the Latin spīca virginis 'the virgin's ear of [wheat] grain'. It was also anglicized as Virgin's Spike.\nIn Chinese the name for Spica is 角宿一 (Jiǎo Sù yī, English: the First Star of Horn)\nIn Hindu astronomy, Spica corresponds to the Nakshatra Chitrā.",
            imageName: "spica"
        )
    ]

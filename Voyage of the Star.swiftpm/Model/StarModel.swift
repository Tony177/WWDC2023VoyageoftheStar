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
            desc: "",
            imageName: "canopus"
        ),
        Star(
            id: 4,
            nameEng: "Hadar",
            nameLat: "Beta Centauri",
            age: 14.1,
            distance: 390.0,
            appMagnitude: 0.61,
            desc: "",
            imageName: "hadar"
        ),
        Star(
            id: 5,
            nameEng: "Altair",
            nameLat: "Alpha Aquilae",
            age: 100.0,
            distance: 16.7,
            appMagnitude: 0.76,
            desc: "",
            imageName: "altair"
        ),
        Star(
            id: 6,
            nameEng: "Pollux",
            nameLat: "Beta Geminorum",
            age: 724.0,
            distance: 33.7,
            appMagnitude: 1.16,
            desc: "",
            imageName: "pollux"
        ),
        Star(
            id: 7,
            nameEng: "Vega",
            nameLat: "Alpha Lyrae",
            age: 455.0,
            distance: 25.0,
            appMagnitude: 0.03,
            desc: "",
            imageName: "vega"
        ),
        Star(
            id: 8,
            nameEng: "Edasich",
            nameLat: "Iota Draconis",
            age: 12400.0,
            distance: 101.2,
            appMagnitude: 3.3,
            desc: "",
            imageName: "edasich"
        ),
        Star(
            id: 9,
            nameEng: "Bellatrix",
            nameLat: "Gammma Orionis",
            age: 25.2,
            distance: 250.0,
            appMagnitude: 1.64,
            desc: "",
            imageName: "bellatrix"
        ),
        Star(
            id: 10,
            nameEng: "Rukbat",
            nameLat: "Alpha Sagittarii",
            age: 33.0,
            distance: 182.0,
            appMagnitude: 3.97,
            desc: "",
            imageName: "rukbat"
        ),
        Star(
            id: 11,
            nameEng: "Spica",
            nameLat: "Alpha Virgis",
            age: 12.5,
            distance: 250.0,
            appMagnitude: 0.97,
            desc: "",
            imageName: "spica"
        )
    ]

//
//  Data.swift
//  Carlos
//
//  Created by Pablo Carrega on 2/1/21.
//
//import SwiftUI
//import Foundation
//import CoreLocation
//import UIKit
//
//struct tiposdeservicios: Hashable, Codable, Identifiable {
//    var id = UUID()
//    var urgencias: String
//    var urgenciasimage: String
//    var pruebas:String
//    var pruebasImages: String
//    var vacuna: String
//    var vacunaImage: String
//}
//
//struct eventosasociados: Hashable, Codable, Identifiable {
//    var id = UUID()
//    var tipodeEvento: String
//    var informaciondeEvento: String
//    var fecha:String
//}
//
//struct EventosIndepen: Hashable, Codable, Identifiable {
//    var id = UUID()
//    var tipodeEvento: String
//    var fecha:String
//}
//
//
//
////struct Food: Identifiable, Codable {
//struct Oragnizacionses: Hashable, Codable, Identifiable {
//    var id = UUID()
//    var image: String
//    var nombredeOrganizacion: String
//    var logoimage: String
//    var ratings: String
//    var numerodeTelefono: String
//    var direccion: String
//    var informacion: String
//    var horario: String
//    var ubicacion: String
//    var paginaWeb: String
//    var email: String
//    var categoriadeNuestrosServicios: [tiposdeservicios]
//    var queNecesitamos: String
//    var eventosAsociadosaServicios: [eventosasociados]
//    var EventosIndependientes: [EventosIndepen]
//    var isFavorite: Bool
//    var isFeatured: Bool
//    fileprivate var coordinates: Coordinates
//    var locationCoordinate: CLLocationCoordinate2D {
//        CLLocationCoordinate2D(
//            latitude: coordinates.latitude,
//            longitude: coordinates.longitude)
//    }
//}
//
//struct Coordinates: Hashable, Codable {
//    var longitude: Double
//    var latitude: Double
//
//}





//class ClassesdeOrganizaciones: ObservableObject{
//    @Published var orga = Oragnizacionses()
//
////    @Published var orga = [Oragnizacionses]()
//}

//var organizaciones = [
//    Oragnizacionses (id: UUID(), image: "building 1", nombredeOrganizacion: "Santa Clara Medical center", logoimage: "logo 1", ratings: "5 stars", numerodeTelefono: "650-876-7543", direccion: "1989 Lihue street, Santa Clara", informacion: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam", horario: "8:00am - 18:00pm", ubicacion: "Santa Clara", paginaWeb: "www.nytimes.com", email: "sanatclara@medicalcenter.com", categoriadeNuestrosServicios: [tiposdeservicios(id: UUID(), urgencias: "Urgencias", urgenciasimage: "logoemergency", pruebas: "Pruebas de Covid-19", pruebasImages: "covid", vacuna: "Vacunas COVID-19", vacunaImage: "vacuna")], queNecesitamos: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim", eventosAsociadosaServicios: [eventosasociados(id: UUID(), tipodeEvento: "Puesto de Vacunacion", informaciondeEvento: "Vacunas contra el COVID-19", fecha: "2/2/21 - 12/12/21")], EventosIndependientes: [EventosIndepen(id: UUID(), tipodeEvento: "Charla sobre el virus Corona", fecha: "2/23/21")], isFavorite: false, isFeatured: false, coordinates: Coordinates (longitude: -152.665167, latitude: 59.980167)),
//
//    Oragnizacionses (id: UUID(), image: "building 2", nombredeOrganizacion: "Palo Alto Medical center", logoimage: "logo 1", ratings: "5 stars", numerodeTelefono: "650-876-7543", direccion: "1989 Lihue street, Santa Clara", informacion: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam", horario: "8:00am - 18:00pm", ubicacion: "Santa Clara", paginaWeb: "www.nytimes.com", email: "sanatclara@medicalcenter.com", categoriadeNuestrosServicios: [tiposdeservicios(id: UUID(), urgencias: "Urgencias", urgenciasimage: "logoemergency", pruebas: "Pruebas de Covid-19", pruebasImages: "covid", vacuna: "Vacunas COVID-19", vacunaImage: "vacuna")], queNecesitamos: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim", eventosAsociadosaServicios: [eventosasociados(id: UUID(), tipodeEvento: "Puesto de Vacunacion", informaciondeEvento: "Vacunas contra el COVID-19", fecha: "2/2/21 - 12/12/21")], EventosIndependientes: [EventosIndepen(id: UUID(), tipodeEvento: "Charla sobre el virus Corona", fecha: "2/23/21")], isFavorite: false, isFeatured: false, coordinates: Coordinates (longitude: -152.665167, latitude: 59.980167)),
//]




    
    
    
    
    
    
   

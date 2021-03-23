////
////  data4.swift
////  Carlos
////
////  Created by Pablo Carrega on 2/8/21.
////
//
//import SwiftUI
//
//class Organization {
//    var id = UUID()
//    var name: String
//    var phone: String
//    var webPage: String
//    var description: String
//    var servicesDesc: String
//    var iconName: String
//    var urlIcon: String
//    var ranking: Int
//    var hourHand: String
//    var createdAt: String
//    var updatedAt: String
//    var services: String
//    var serviceCategories: String
//    var plan: String
//    var isIn: String
//}
//    
//    
//    
//    
//    
//    
//  id: { type: 'string', primary: true, default: uuid },
//  name: { type: 'string', required: true },
//  phone: { type: 'string', required: false, default: 'Not Assigned' },
//  webPage: { type: 'string', required: false, default: 'Not Assigned' },
//  description: { type: 'string', required: false, default: 'Not Assigned' },
//  servicesDesc: { type: 'string', required: false, default: 'Not Assigned' },
//  iconName: { type: 'string', required: false, default: 'Not Assigned' },
//  urlIcon: { type: 'string', required: false, default: 'Not Assigned' },
//  ranking: { type: 'number', required: false, default: 0 },
//  hourHand: { type: 'string', required: false, default: 'Not Assigned' },
//  createdAt: { type: 'string', isoDate: true, default: () => new Date().toISOString() },
//  updatedAt: {
//    type: 'string',
//    isoDate: true,
//    required: true,
//    default: () => new Date().toISOString(),
//  },
//  services: {
//    type: 'relationship',
//    relationship: 'PROVIDES',
//    target: 'Service',
//    direction: 'out',
//    properties: {
//      createdAt: { type: 'string', isoDate: true, default: () => new Date().toISOString() },
//      updatedAt: { type: 'string', isoDate: true, default: () => new Date().toISOString() },
//    },
//  },
//  serviceCategories: {
//    type: 'relationship',
//    relationship: 'SCATEGORIES',
//    target: 'ServiceCategory',
//    direction: 'out',
//    properties: {
//      createdAt: { type: 'string', isoDate: true, default: () => new Date().toISOString() },
//      updatedAt: { type: 'string', isoDate: true, default: () => new Date().toISOString() },
//    },
//  },
//  plan: {
//    type: 'relationship',
//    relationship: 'SUBSCRIBED',
//    target: 'Plan',
//    direction: 'out',
//    properties: {
//      createdAt: { type: 'string', isoDate: true, default: () => new Date().toISOString() },
//      updatedAt: { type: 'string', isoDate: true, default: () => new Date().toISOString() },
//    },
//  },
//  isIn: {
//    type: 'relationship',
//    relationship: 'IS_IN',
//    target: 'Location',
//    direction: 'out',
//  },
//}
//}

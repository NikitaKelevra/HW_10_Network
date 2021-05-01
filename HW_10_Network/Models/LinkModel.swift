//
//  LinkModel.swift
//  HW_10_Network
//
//  Created by Admin on 01.05.2021.
//

struct Link: Decodable {
       
    /*let categories: String
    let createdAt: String
    let iconUrl: String
    let id: String
    let updatedAt: String
    let url: String
    let value: String*/
    
    let number: Int
    let language: String
    let insult: String
    let created: String
    let shown: Int
    let createdby: String
    let active: Int
    let comment: String

    
}

/*
 {"categories":[],
 "created_at":"2020-01-05 13:42:29.569033",
 "icon_url":"https://assets.chucknorris.host/img/avatar/chuck-norris.png",
 "id":"daK4rsXMQYSOyV9r2W-iRw",
 "updated_at":"2020-01-05 13:42:29.569033",
 "url":"https://api.chucknorris.io/jokes/daK4rsXMQYSOyV9r2W-iRw",
 "value":"When Chuck Norris lived in Jamaica in the early 70's, he killed literally hundreds of people with his chucklocks alone."}
*/

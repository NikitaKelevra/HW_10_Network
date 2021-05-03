//
//  LinkModel.swift
//  HW_10_Network
//
//  Created by Admin on 01.05.2021.
//

struct Link: Decodable {
          
    let number: String
    let language: String
    let insult: String
    let created: String
    let shown: String
    let createdby: String
    let active: String
    let comment: String
}

/*
{
  "number": "123",
  "language": "en",
  "insult": "You're a failed abortion whose birth certificate is an apology from the condom factory.",
  "created": "2018-10-24 06:52:02",
  "shown": "2688",
  "createdby": "someone",
  "active": "1",
  "comment": "Sourced from some website"
}
*/

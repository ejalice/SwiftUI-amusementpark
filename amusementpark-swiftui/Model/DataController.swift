//
//  Datacontroller.swift
//  amusementpark-swiftui
//
//  Created by eunji on 2022/05/03.
//

import Foundation
import CoreData
import SwiftUI

class AttractionDataController: ObservableObject{
    
    //define
    let container = NSPersistentContainer(name: "AttractionModel")
    
    //init
    init(){
        container.loadPersistentStores{
            desc, error in
            if let error = error {
                print("FAILED TO LOAD DATA \(error.localizedDescription)")
            }
        }
    }
    
    //save
    func save(context: NSManagedObjectContext){
        do {
            try context.save()
            print("DATA SAVED")
        } catch {
            print("FAILED TO SAVE DATA")
        }
    }
    
    func CreateAttraction(name: String, want: Int64, done: Int64, like: Bool, height: String, place: String, descript: String, context: NSManagedObjectContext) {
        let attraction = Attraction(context: context)
        attraction.id = UUID()
        attraction.want = want
        attraction.done = done
        attraction.like = like
        attraction.height = height
        attraction.place = place
        attraction.descript = descript
        
        save(context: context)
    }
    
    func DeleteAttraction(attraction: Attraction, context: NSManagedObjectContext) {
        context.delete(attraction)
        do {
            try context.save()
        } catch {
            print("FAILED TO DELETE ATTRACTION")
        }
    }
    
    func PlusWant(attraction: Attraction, want: Int64, context: NSManagedObjectContext) {
        attraction.want += 1
        save(context: context)
    }
    
    func MinusWant(attraction: Attraction, want: Int64, context: NSManagedObjectContext) {
        attraction.want -= 1
        save(context: context)
    }
    
    func ChangeLike(attraction: Attraction, like: Bool, context: NSManagedObjectContext) {
        if attraction.like == true {
            attraction.like = false
        } else {
            attraction.like = true
        }
        
        save(context: context)
    }
    

}

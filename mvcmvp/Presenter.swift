//
//  Presenter.swift
//  mvcmvp
//
//  Created by Swati Rout on 27/06/20.
//  Copyright © 2020 Swati Rout. All rights reserved.
//

import Foundation

class Presenter{
    private var myModel = Model<Date>()
    
    func addEntry(){
        myModel.insert(element: Date())
    }
    var count:Int{
        return myModel.count
    }
    func removeAt( at index:Int){
        myModel.remove(at: index)
    }
    subscript(index:Int)-> String?{
        guard let date = myModel[index] else{
            return nil
        }
        return date.description
        
    }
}

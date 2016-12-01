//
//  Iterator.swift
//  Playground
//
//  Created by color_box on 2016/12/01.
//  Copyright © 2016年 color_box. All rights reserved.
//

import Foundation

class Iterator {
    var index:Int = 0
    let array:[Any] = []

    func hasNext()-> Bool {
        return (index + 1 < array.count)
    }

    func next()->Any {
        let value:Any = array[index]
        index = index+1
        return value
    }

}


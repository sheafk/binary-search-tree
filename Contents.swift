//: Playground - noun: a place where people can play

import UIKit

var sampleArray = [3, 6, 8, 24, 100]
var sampleNeedle = 8

func findTheNeedle(haystack: [Int], needle: Int) -> Int {
    
    var midWay = haystack.count / 2
    var lastItemIndex = haystack.count
    var firstItemIndex = 0
    
    while lastItemIndex != firstItemIndex {
        
        do {
            
            if needle == haystack[midWay] {
                
                return haystack[midWay]
                
            } else if needle > haystack[midWay] {
                
                firstItemIndex = midWay
                
            } else if needle < haystack[midWay] {
                
                lastItemIndex = midWay
                
            }
           
            midWay = (lastItemIndex + firstItemIndex) / 2
        }
        
    }

    return -1
}



findTheNeedle(haystack: sampleArray, needle: sampleNeedle)


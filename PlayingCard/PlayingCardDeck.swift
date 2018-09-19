//
//  PlayingCardDeck.swift
//  PlayingCard
//
//  Created by MATTEW MA on 19/9/18.
//  Copyright © 2018 Mathhew Workshop. All rights reserved.
//

import Foundation

struct PlayingCardDeck {
    
    private(set) var cards = [PlayingCard]()
    
    init() {
        for suit in PlayingCard.Suit.all{
            for rank in PlayingCard.Rank.all{
                cards.append(PlayingCard(suit: suit, rank : rank))
            }
        }
    }
    
    mutating func draw() -> PlayingCard? {
        if cards.count > 0 {
            return cards.remove(at: cards.count.randomInt)
        } else {
            return nil
        }
    }
    
}

extension Int{
    var randomInt: Int{
        if self>0{
            return Int(arc4random_uniform(UInt32(self)))
        }else if self<0{
            return -Int(arc4random_uniform(UInt32(abs(self))))
        }else{
            return 0
        }
    }
}

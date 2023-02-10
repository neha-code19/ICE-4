//
//  Plane.swift
//  ICE1
//
//  Created by Neha Patel on 2023-02-10.
//

import GameplayKit
import SpriteKit

class Plane : Gameobject
{
    init()
    {
    super.init(imageString: "plane", initialScale: 2.0)
Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func CheckBounds() {
        if(position.x <= -310)
        {
            position.x = -310
        }
        if(position.x >= 310)
        {
            position.x = 310
        }
    }
    override func Start()
    {
        zPosition = 2
    }
    override func Update()
    {
        CheckBounds()
    }
    func TouchMove(newPos: CGPoint)
    {
        position = newPos
    }
}

//
//  Cloud.swift
//  ICE2
//
//  Created by Neha Patel on 2023-02-10.
//

import GameplayKit
import SpriteKit

class Cloud : Gameobject
{
    
    init()
    {
        super.init(imageString: "cloud", initialScale: 1.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func CheckBounds()
    {
        if(position.y <= -756)
        {
            Reset()
        }
    }
    override func Reset()
    {
        
        verticalSpeed = CGFloat((randomSource?.nextUniform())! * 5.0) + 5.0
        
        horizontalSpeed = CGFloat((randomSource?.nextUniform())! * -4.0) + 2.0
        
        let randomX:Int = (randomSource?.nextInt(upperBound: 524))! - 262
        position.x = CGFloat(randomX)
        let randomY:Int = (randomSource?.nextInt(upperBound: 20))! + 756
        position.y = CGFloat(randomY)
        isColliding = false
    }
    
    override func Start()
    {
        Reset()
        zPosition = 3
        alpha = 0.5
    }
    override func Update()
    {
        Move()
        CheckBounds()
    }
    func Move()
    {
        position.x -= horizontalSpeed!
        position.y -= verticalSpeed!
        
    }
}


//
//  GameObject.swift
//  ICE1
//
//  Created by Neha Patel on 2023-02-10.
//

import GameplayKit
import SpriteKit

class Gameobject : SKSpriteNode, GameProtocol
{
    var width: CGFloat?
    var height: CGFloat?
    var scale: CGFloat?
    var horizontalSpeed: CGFloat?
    var verticalSpeed: CGFloat?
    var halfwidth: CGFloat?
    var halfheight: CGFloat?
    var isColliding: Bool?
    var randomSource: GKARC4RandomSource?
    var randomDist: GKRandomDistribution?
    
    
    init(imageString: String, initialScale:CGFloat)
    {
        let texture = SKTexture(imageNamed: imageString)
        let color = UIColor.clear
        super.init(texture: texture, color: color, size: texture.size())
        scale = initialScale
        setScale(scale!)
        width = texture.size().width * scale!
        height = texture.size().height * scale!
        halfwidth = width! * 0.5
        halfheight = height! * 0.5
        isColliding = false
        name = imageString
        randomSource = GKARC4RandomSource()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func CheckBounds()
    {
        
    }
    
    func Reset()
    {
        
    }
    
    func Start()
    {
        
    }
    
    func Update()
    {
        
    }
    
    
}

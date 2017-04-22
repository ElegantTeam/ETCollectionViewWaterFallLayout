//
//  ViewController.swift
//  ETCollectionViewWaterFallLayout
//
//  Created by Volley on 2017/4/22.
//  Copyright © 2017年 Elegant Team. All rights reserved.
//

import UIKit

struct WaterFallData {
    var size: CGSize!
    var color: UIColor!
}

extension UIColor {
    class func randomColor() -> UIColor {
        let red = CGFloat(arc4random_uniform(255))/CGFloat(255.0)
        let green = CGFloat( arc4random_uniform(255))/CGFloat(255.0)
        let blue = CGFloat(arc4random_uniform(255))/CGFloat(255.0)
        
        let color = UIColor.init(red:red, green:green, blue:blue , alpha: 1)
        return color
    }
}

let screen_width = UIScreen.main.bounds.size.width

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    
    lazy var waterFallData: [WaterFallData] = {
        var dataSource = [WaterFallData]()
        for _ in 0...100 {
            var data = WaterFallData()
            let random = CGFloat(arc4random_uniform((UInt32(100))))
            data.size = CGSize(width: 100, height: random)
            data.color = UIColor.randomColor()
            dataSource.append(data)
        }
        return dataSource
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let layout = ETCollectionViewWaterfallLayout()
        layout.minimumColumnSpacing = 15
        layout.minimumInteritemSpacing = 10
        layout.sectionInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        
        collectionView.collectionViewLayout = layout
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate, ETCollectionViewDelegateWaterfallLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return waterFallData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = waterFallData[indexPath.item].color
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return waterFallData[indexPath.item].size
    }
    
}

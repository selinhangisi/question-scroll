//
//  Controller1.swift
//  DemoFramework
//


//

import UIKit

@objc class myController: UIViewController,UIScrollViewDelegate,UICollectionViewDelegate,UITableViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("something happens")
    }
}

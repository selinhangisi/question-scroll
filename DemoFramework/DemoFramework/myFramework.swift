//
//  myFramework.swift
//  DemoFramework
//
//  Created by Fatma Selin Hangişi on 11.12.2018.
//  Copyright © 2018 Fatma Selin Hangişi. All rights reserved.
//

import UIKit

public class myFramework : NSObject {
    public func execute(view:UIViewController){
        let event = myController()
        view.addChild(event)
        let tuple = Util().isContainScrollView(array: Util().listOfSubView(parent: view))
        let tupleflg = tuple.0
        let tupletype = tuple.1
        if(tupleflg){
            let scrollView:UIScrollView = Util().returnScrollView(parent: view,type:tupletype) as! UIScrollView
        
            scrollView.delegate = event as UIScrollViewDelegate
        }
    }
}

//
//  util.swift
//  DemoFramework
//

//


import UIKit

@objc class Util : NSObject {
    func isContainScrollView(array:[String])-> (Bool,String){
        var flag : Bool = false
        var type : String = ""
        for item in array{
            if(item == "UIScrollView" || item == "UITableView" || item == "UICollectionView"){
            //if(item == "UIScrollView"){
                flag = true
                type = item
                break
            }
        }
        return (flag,type)
    }
    func returnScrollView(parent:UIViewController,type:String)-> UIView{
        let parentview:UIView = parent.view
        let subviews: [UIView] = parentview.subviews
        var returnView = UIScrollView()
        let parent_mirror = Mirror(reflecting: parentview)
        if(String(describing: parent_mirror.subjectType) == type){
            returnView = parentview as! UIScrollView
        }
        for subview: UIView in subviews {
            let mirror = Mirror(reflecting: subview)
            if(String(describing: mirror.subjectType) == type){
                returnView = subview as! UIScrollView
                if(type == "UIScrollView"){
                    returnView = subview as! UIScrollView
                 }else if(type == "UITableView"){
                    returnView = subview as! UITableView
                 }else if(type == "UICollectionView"){
                    returnView = subview as! UICollectionView
                 }
            }
            // List the subviews of subview
        }
        return returnView
    }
    func listOfSubView(parent:UIViewController)-> [String]{
        var arraySubviewType : [String] = []
        let parentview:UIView = parent.view
        let parent_mirror = Mirror(reflecting: parentview)
        arraySubviewType.append(String(describing: parent_mirror.subjectType))
        let subviews: [UIView] = parentview.subviews
        // COUNT CHECK LINE
        for subview: UIView in subviews {
            let mirror = Mirror(reflecting: subview)
            arraySubviewType.append(String(describing: mirror.subjectType))
        }
        return arraySubviewType
    }
}


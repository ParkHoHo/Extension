// The Swift Programming Language
// https://docs.swift.org/swift-book


#if canImport(UIKit)
import UIKit


public extension UIView {
    func anchor(top: NSLayoutYAxisAnchor? = nil,left : NSLayoutXAxisAnchor? = nil, bottom : NSLayoutYAxisAnchor? = nil, right : NSLayoutXAxisAnchor? = nil, paddingTop : CGFloat = 0, paddingLeft : CGFloat = 0, paddingBottom : CGFloat = 0, paddingRight : CGFloat = 0, width : CGFloat? = nil, height : CGFloat? = nil)
    {
        translatesAutoresizingMaskIntoConstraints = false
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        if let left = left {
            leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: paddingBottom).isActive = true
        }
        if let right = right {
            rightAnchor.constraint(equalTo: right, constant: paddingRight).isActive = true
        }
    }
    
    func centerY(inview view : UIView,leftAnchor: NSLayoutXAxisAnchor? = nil,paddingLeft: CGFloat = 0, constant : CGFloat = 0)
        {
            translatesAutoresizingMaskIntoConstraints = false
            centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: constant).isActive = true
            if let left = leftAnchor {
                anchor(left: leftAnchor,paddingLeft: paddingLeft)
            }
        }
        
        func centerX(inview view : UIView,topAnchor:NSLayoutYAxisAnchor? = nil,paddingTop:CGFloat? = 0)
        {
            translatesAutoresizingMaskIntoConstraints = false
            centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            
            if let topAnchor = topAnchor {
                self.topAnchor.constraint(equalTo: topAnchor, constant: paddingTop!).isActive = true
            }
        }
        
        func setDimension(height : CGFloat,width : CGFloat) {
            translatesAutoresizingMaskIntoConstraints = false
            heightAnchor.constraint(equalToConstant: height).isActive = true
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        func setHeight(_ height : CGFloat){
            translatesAutoresizingMaskIntoConstraints = false
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
        
        func setWidth(_ width : CGFloat) {
            translatesAutoresizingMaskIntoConstraints = false
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        func fillSuperView() {
            translatesAutoresizingMaskIntoConstraints = false
            guard let view = superview else { return }
            anchor(top:view.topAnchor,left: view.leftAnchor,bottom: view.bottomAnchor,right:view.rightAnchor)
        }
    
}

#endif

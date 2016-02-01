import UIKit
import XCPlayground

class ViewController: UIViewController {
    
    let button = UIButton()
    let label = UILabel()
    let image = UIImage()
    
    override func viewDidLoad() {
    
        self.view.addSubview(button)
        button.setTitle("Hello", forState: .Normal)
        button.frame = CGRect(x: 0, y: 0, width: 50, height: 30)
        button.center = self.view.center
        button.backgroundColor = UIColor.redColor()
     
    
        self.view.addSubview(label)
        
    }
    func addNewSubViews(views: [UIView]) {
       
        for view in views {
            self.view.addSubview(view)
        }
        
    }
    
}

let newController = ViewController()
newController.view.backgroundColor = UIColor.lightGrayColor()
print(newController.label.center)

var viewsToAdd = [UIView]()

let view1 = UIView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
view1.backgroundColor = UIColor.redColor()
viewsToAdd.append(view1)

let view2 = UIView(frame: CGRect(x: 200, y: 200, width: 40, height: 40))
view2.backgroundColor = UIColor.blueColor()
viewsToAdd.append(view2)

newController.addNewSubViews(viewsToAdd)

XCPlaygroundPage.currentPage.liveView = newController.view


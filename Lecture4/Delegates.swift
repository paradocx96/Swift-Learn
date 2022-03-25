import Foundation

// Delegates

protocol ClassBVCDelegate: class {
    func changeBackgroundColor(_ color: UIColor?)
}

class ClassAVC: UIViewController, ClassBVCDelegate {
    // class A view controller here
    func changeBackgroundColor(_ color: UIColor?) {
        view.backgroundColor = color
    }
}

weak var delegate: ClassBVCDelegate?
delegate?.changeBackgroundColor(tapGesture.view?.backgroundColor)
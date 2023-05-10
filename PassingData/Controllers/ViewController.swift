import UIKit
import SnapKit

class ViewController : UIViewController, DataDelegate {
    
    // MARK: Variables
    var text: String = ""
    
    lazy var field: UITextField = {
        let field = UITextField()
        field.backgroundColor = .red
        field.placeholder = "Write something"
        return field
    }()
    
    lazy var button: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .black
        btn.setTitle("Click Me", for: .normal)
        btn.addTarget(self, action: #selector(advance), for: .touchUpInside)
        return btn
    }()
    
    
    // MARK: Main Method
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(field)
        field.snp.makeConstraints { maker in
            maker.width.equalTo(150)
            maker.height.equalTo(50)
            maker.center.equalToSuperview()
        }
        
        view.addSubview(button)
        button.snp.makeConstraints { maker in
            maker.width.equalTo(150)
            maker.height.equalTo(50)
            maker.top.equalTo(field.snp.bottom).offset(20)
            maker.centerX.equalToSuperview()
        }
    }
    

    
    @objc func advance() {
        let vc = DestinationViewController()
        vc.delegate = self
        vc.label1.text = field.text
        vc.label2.text = field.text
        present(vc, animated: true, completion: nil)
    }
    
    
}

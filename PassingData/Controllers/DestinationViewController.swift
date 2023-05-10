import UIKit
import SnapKit

class DestinationViewController : UIViewController {
    
    var delegate: DataDelegate?
    
    // MARK: Variables
    
    lazy var label1 : UILabel = {
        let label = UILabel()
        label.backgroundColor = .white
        label.textAlignment = .center
        return label
    }()
    
    lazy var label2 : UILabel = {
        let label = UILabel()
        label.backgroundColor = .white
        label.textAlignment = .center
        return label
    }()
    
    var stackView : UIStackView = {
       let view = UIStackView()
        view.axis = .vertical
        view.spacing = 10
        view.distribution = .fillEqually
        view.alignment = .center
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .cyan
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(stackView)
        stackView.addArrangedSubview(label1)
        stackView.addArrangedSubview(label2)
        
        stackView.snp.makeConstraints { maker in
            maker.leading.equalToSuperview().offset(50)
            maker.trailing.equalToSuperview().offset(-50)
            maker.center.equalToSuperview()
        }
        
        label1.snp.makeConstraints {maker in
            maker.width.equalTo(stackView.snp.width)
            maker.height.equalTo(50)
        }
        
        label2.snp.makeConstraints {maker in
            maker.width.equalTo(stackView.snp.width)
            maker.height.equalTo(50)
        }
    }
}

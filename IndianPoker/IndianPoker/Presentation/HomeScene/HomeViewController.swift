//
//  ViewController.swift
//  IndianPocker
//
//  Created by 장석우 on 2023/07/11.
//

import UIKit

import SnapKit

final class HomeViewController: UIViewController {
    
    
    
    //MARK: - UI Components
    
    private lazy var createButton: UIButton = {
        
        var title = AttributedString.init("방 만들기")
        title.font = .systemFont(ofSize: 18.0, weight: .heavy)
        
        var subTitle = AttributedString.init("소켓 생성")
        subTitle.font = .systemFont(ofSize: 16.0, weight: .light)
        
        
        var config = UIButton.Configuration.filled()
        
        
        config.attributedTitle = title
        config.attributedSubtitle = subTitle
        
        config.image = UIImage(systemName: "plus.app.fill")
        
        
        config.baseBackgroundColor = .systemBlue
        config.baseForegroundColor = .systemBackground
        config.buttonSize = .large
        
        config.imagePadding = 15
        config.titlePadding = 5
        
        let button = UIButton(configuration: config,
                              primaryAction: UIAction(handler: { _ in
            self.createButtonDidTap()
        }))
        return button
    }()
    
    private lazy var joinButton: UIButton = {
        var title = AttributedString.init("접속하기")
        title.font = .systemFont(ofSize: 18.0, weight: .heavy)
        
        var subTitle = AttributedString.init("소켓 접속")
        subTitle.font = .systemFont(ofSize: 16.0, weight: .light)
        
        
        var config = UIButton.Configuration.filled()
        
        
        config.attributedTitle = title
        config.attributedSubtitle = subTitle
        config.image = UIImage(systemName: "play.fill")
        
        config.baseBackgroundColor = .systemBlue
        config.baseForegroundColor = .systemBackground
        config.buttonSize = .large
        
        config.imagePadding = 15
        config.titlePadding = 5
        
        let button = UIButton(configuration: config,
                              primaryAction: UIAction(handler: { _ in
            self.createButtonDidTap()
        }))
        return button
    }()
    
    private lazy var hStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [createButton, joinButton])
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fill
        stackView.spacing = 40
        return stackView
    }()
    
    //MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        style()
        hierarchy()
        layout()
        
    }
    
    //MARK: - Action Method

    private func createButtonDidTap() {
        
    }
    
    private func joinButtonDidTap() {
        
    }


}

extension HomeViewController {
    
    private func style() {
        view.backgroundColor = .white
    }
    
    private func hierarchy() {
        view.addSubview(hStackView)
    }
    
    private func layout() {
        hStackView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(40)
            $0.horizontalEdges.equalToSuperview().inset(20)
        }
    }
}

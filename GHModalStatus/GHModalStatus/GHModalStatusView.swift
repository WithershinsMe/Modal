//
//  GHModalStatusView.swift
//  GHModalStatus
//
//  Created by GK on 2018/5/15.
//  Copyright © 2018年 GK. All rights reserved.
//

import UIKit

public class GHModalStatusView: UIView {

    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var headerLabel: UILabel!

    let nibName = "GHModalStatusView"
    var contentView: UIView!
    var timer: Timer?
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
        setUpView()
    }
    
    public func  set(_ image: UIImage) {
        self.imageView.image = image
    }
    public func  set(headline text: String ) {
        self.headerLabel.text = text
    }
    public func  set(subTitleLabel text: String ) {
        self.subTitleLabel.text = text
    }
    
    override public func didMoveToSuperview() {
        self.contentView.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        
        UIView.animate(withDuration: 0.15, animations: {
            self.contentView.alpha = 1.0
            self.contentView.transform = CGAffineTransform.identity
        }) { _ in
            self.timer = Timer.scheduledTimer(
                timeInterval: TimeInterval(3.0),
                target: self,
                selector: #selector(self.removeSelf),
                userInfo: nil,
                repeats: false)
        }
    }
    @objc private func removeSelf() {
        UIView.animate(
            withDuration: 0.15,
            animations: {
                self.contentView.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
                self.contentView.alpha = 0.0
        }) { _ in
            self.removeFromSuperview()
        }
    }
    override public func layoutSubviews() {
        self.layoutIfNeeded()
        self.contentView.layer.masksToBounds = true
        self.contentView.clipsToBounds = true
        self.contentView.layer.cornerRadius = 10
    }
    func setUpView()  {
        let bundle = Bundle(for: GHModalStatusView.self)
        let nib = UINib(nibName: nibName, bundle: bundle)
        self.contentView = nib.instantiate(withOwner: self, options: nil).first as! UIView
        addSubview(self.contentView)
        contentView.autoresizingMask = []
        contentView.translatesAutoresizingMaskIntoConstraints = true
        
        headerLabel.text = ""
        subTitleLabel.text = ""
    }
    
}

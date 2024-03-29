//
//  ViewController.swift
//  Splash
//
//

import UIKit

class ViewController: UIViewController {
    
    let twitterImage = UIImageView(image: UIImage(named: "twitter")!)
    
    let splashView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        splashView.backgroundColor = UIColor(red: 0/255, green: 172/255, blue: 237/255, alpha: 1.0)
        
        view.addSubview(splashView)
        
        splashView.frame = CGRect(x:0, y:0, width: view.bounds.width, height: view.bounds.height)
        
        twitterImage.contentMode = .scaleAspectFit
        
        splashView.addSubview(twitterImage)
        
        twitterImage.frame = CGRect(x: splashView.frame.midX - 35, y: splashView.frame.midY - 35, width: 70, height: 70)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            
            self.scaleDownAnimation()
            
        }
        scaleDownAnimation()
        
        
    }
    
    func scaleDownAnimation() {
        
        UIView.animate(withDuration: 0.5, animations: {
            
            self.twitterImage.transform = CGAffineTransform(scaleX: 0.7, y: 0.7)
            
        }) { (success) in
            
            self.scaleUpAnimation()
            
        }
        
    }
    
    func scaleUpAnimation() {
        
        UIView.animate(withDuration: 0.15, delay: 0.1, options: .curveEaseIn, animations: {
            
            self.twitterImage.transform = CGAffineTransform(scaleX: 5, y: 5)
            
        }) { (success) in
            
            self.removeSplashScreen()
            
            
        }
        
    }
    
    func removeSplashScreen () {
        
        splashView.removeFromSuperview()
        
    }
    
    

}


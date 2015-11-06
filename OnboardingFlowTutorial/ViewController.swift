import UIKit

class ViewController: UIViewController {
  
  @IBAction func startAppIntro() {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let onboardingFlow = storyboard.instantiateViewControllerWithIdentifier("onboardingFlow") as! OnboardingMasterViewController
    let screen1 = storyboard.instantiateViewControllerWithIdentifier("screen1")
    let screen2 = storyboard.instantiateViewControllerWithIdentifier("screen2")
    let screen3 = storyboard.instantiateViewControllerWithIdentifier("screen3")
    
    onboardingFlow.addViewController(screen1)
    onboardingFlow.addViewController(screen2)
    onboardingFlow.addViewController(screen3)
    
    self.presentViewController(onboardingFlow, animated: true, completion: nil)
  }
  
}
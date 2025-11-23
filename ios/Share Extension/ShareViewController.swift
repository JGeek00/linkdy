// If you get no such module 'listen_sharing_intent' error. 
// Go to Build Phases of your Runner target and
// move `Embed Foundation Extension` to the top of `Thin Binary`. 
import listen_sharing_intent

class ShareViewController: RSIShareViewController {
      
    // Use this method to return false if you don't want to redirect to host app automatically.
    // Default is true
    override func shouldAutoRedirect() -> Bool {
        return false
    }
    
}
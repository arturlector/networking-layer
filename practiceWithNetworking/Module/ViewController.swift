
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        API.request(endpoint: PostEndpoint.putData) { (result: Result<Posts, Error>) in
            switch result {
            case .failure(let error):
                print(error.localizedDescription)
            case .success(let comments):
                print(comments)
            }
        }
    }


}


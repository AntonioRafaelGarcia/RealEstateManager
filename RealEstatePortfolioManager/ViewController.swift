import UIKit

class ViewController: UIViewController, UITableViewDataSource {
  var allProperties = [Property]()
  @IBOutlet weak var tableView: UITableView!

//MARK - life cycle methods
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.dataSource = self

  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()

  }

//MARK - other methods
  // numberOfRowsInSection method to conform to protocol
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return allProperties.count
  }
  
  // cellForRowAtIndexPath
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    //part 1: dequeue cell
    let cell = tableView.dequeueReusableCellWithIdentifier("thisPropertyCell", forIndexPath: indexPath) as! PropertyTableViewCell
    
    //part 2: configure cell
    //cell.textLabel?.text
    let propertyInfo = allProperties[indexPath.row]
    cell.propertyCellAddressLabel?.text = propertyInfo.address
    
    //part 3: return cell
    return cell
  }

}


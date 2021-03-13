import UIKit

class Loanee: NSObject, NSCoding {

    var name: String
    var contactNumber: String?

    // Protocol requires having Keys for our variables
    enum Keys: String {
        case name = "name"
        case contactNumber = "contactNumber"
    }

    init(name: String, contactNumber: String?) {

        /** For Future Feature: Ability to access Contacts app:
         init(name: String, profileImage: UIImage, contactNumber: String?) {

         self.profileImage = profileImage
         **/

        self.name = name
        self.contactNumber = contactNumber
    }

    // Protocol requires an encode method to encode our variables based on the Key
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: "name")
        aCoder.encode(contactNumber, forKey: "contactNumber")
    }

    // Protocol requires an init method which acts as a decoder for our variables based on the Key
    required init?(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObject(forKey: "name") as! String
        contactNumber = aDecoder.decodeObject(forKey: "contactNumber") as? String
        super.init()
    }
}

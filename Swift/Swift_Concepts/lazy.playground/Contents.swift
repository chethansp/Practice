import UIKit

class Master {
    lazy var detail: Detail = Detail(master: self)
    
    init() {
        print("Master init")
    }
    
    deinit {
        print("Master deinit")
    }
}

class Detail {
    unowned var master: Master
    
    init(master: Master) {
        print("Detail init")
        self.master = master
    }
    
    deinit {
        print("Detail deinit")
    }
}

func createMaster() {
    var master: Master = Master()
    var detail = master.detail
}
   
createMaster()

//Should use unowned/weak

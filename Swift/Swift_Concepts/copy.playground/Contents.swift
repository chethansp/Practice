import UIKit

class Author {
    var name = "Anonymous"
}

var dickens = Author()
dickens.name = "Charles Dickens"

var austen = dickens
austen.name = "Jane Austen"

print(dickens.name)
print(austen.name)


class Hater {
    var isHating = true
}
var hater1 = Hater()
var hater2 = hater1
hater1.isHating = false
print(hater1.isHating)
print(hater2.isHating)


class Hospital {
    var onCallStaff = [String]()
}

var londonCentral = Hospital()
var londonWest = londonCentral

londonCentral.onCallStaff.append("Dr Harlan")
londonWest.onCallStaff.append("Dr Haskins")

print(londonCentral.onCallStaff.count)
print(londonWest.onCallStaff.count)


class Ewok {
    var fluffinessPercentage = 100
}
var chirpa = Ewok()
var wicket = Ewok()
chirpa.fluffinessPercentage = 90
print(wicket.fluffinessPercentage)
print(chirpa.fluffinessPercentage)

class Queen {
    var isMotherOfDragons = false
}
var elizabeth = Queen()
var daenerys = Queen()
daenerys.isMotherOfDragons = true
print(elizabeth.isMotherOfDragons)
print(daenerys.isMotherOfDragons)



class BasketballPlayer {
    var height = 200.0
}
var lebron = BasketballPlayer()
lebron.height = 203.0
var curry = BasketballPlayer()
curry.height = 190
print(lebron.height)
print(curry.height)


class Magazine {
    var pageCount = 132
}
var example = Magazine()
var wired = example
wired.pageCount = 164
var vogue = example
vogue.pageCount = 128
print(wired.pageCount)
print(vogue.pageCount)


class Hairdresser {
    var clients = [String]()
}
var tim = Hairdresser()
tim.clients.append("Jess")
var dave = tim
dave.clients.append("Sam")
print(tim.clients.count)
print(dave.clients.count)

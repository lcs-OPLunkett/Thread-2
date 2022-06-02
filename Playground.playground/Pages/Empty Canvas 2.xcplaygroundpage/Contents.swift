//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */

/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Set canvas size
let preferredWidth = 400
let preferredHeight = 400

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

let t =  Tortoise(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */
canvas.translate(to: Point(x: 100, y: 100))


// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
let scale = 20
let diagnol = Int(sqrt(2)*Double(scale))

t.drawSelf()
t.penUp()
t.left(by: 90)
t.forward(steps: 1*scale)
t.right(by: 90)
t.penDown()
t.forward(steps: 3*scale)
t.right(by: 90)
t.forward(steps: 1*scale)
t.left(by: 135)
t.forward(steps: 2*diagnol)
t.left(by: 90)
t.forward(steps: 2*diagnol)
t.left(by: 135)
t.forward(steps: 1*scale)
t.right(by: 90)
t.forward(steps: 3*scale)
t.left(by: 90)
t.forward(steps: 2*scale)
t.left(by: 90)

/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */

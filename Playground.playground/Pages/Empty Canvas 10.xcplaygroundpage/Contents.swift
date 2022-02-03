//: [Previous](@previous) / [Next](@next)
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 400
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas


/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 
 */
canvas.highPerformance = false

// Black background
canvas.fillColor = .black
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

//Create dark blue colour
let darkBlue = Color(hue: 240, saturation: 100, brightness: 55, alpha: 100)
let darkBlue2 = Color(hue: 240, saturation: 100, brightness: 35, alpha: 100)

// Draw top line
canvas.drawLine(from: Point(x: 0, y: 400), to: Point(x: 400, y: 400))

// Draw first set of triangles
canvas.drawShapesWithFill = true
canvas.fillColor = darkBlue

for xpositionTriangle1 in stride(from: 0, through: 400, by: 100) {
    for ypositionTriangle1 in stride(from: 100, through: 400, by: 200) {
        
        var triangle1: [Point] = []
        triangle1.append(Point(x: xpositionTriangle1 + 50, y: ypositionTriangle1 + 0))
        triangle1.append(Point(x: xpositionTriangle1 + 0, y: ypositionTriangle1 + 100))
        triangle1.append(Point(x: xpositionTriangle1 + 100, y: ypositionTriangle1 + 100))
        canvas.drawCustomShape(with: triangle1)
        
    }
}

// Draw second set of triangles
canvas.fillColor = darkBlue
for xpositionTriangle2 in stride(from: 0, through: 400, by: 100) {
    for ypositionTriangle2 in stride(from: 0, through: 300, by: 200) {
        
        var triangle2: [Point] = []
        triangle2.append(Point(x: xpositionTriangle2 + 0, y: ypositionTriangle2 + 0))
        triangle2.append(Point(x: xpositionTriangle2 + 50, y: ypositionTriangle2 + 100))
        triangle2.append(Point(x: xpositionTriangle2 + 100, y: ypositionTriangle2 + 0))
        canvas.drawCustomShape(with: triangle2)
        
    }
}

// Write Fivio Foreign
canvas.textColor = .white
canvas.drawText(message: "Fivio Foreign", at: Point(x: 50, y: 427), size: 35, kerning: 0)

// Write the location of concert
canvas.drawText(message: "Barclays Centre", at: Point(x: 50, y: 555), size: 8, kerning: 0)

// Write the state and city
canvas.drawText(message: "New York, NY", at: Point(x: 100, y: 535), size: 8, kerning: 0)

// Write the Date of concert
canvas.drawText(message: "Dec 13, 2019", at: Point(x: 150, y: 515), size: 8, kerning: 0)

// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .blue)
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

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
import Foundation
import AppKit

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */





/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 
 */
//Create new colors

let neworange = Color(hue: 17, saturation: 95, brightness: 95, alpha: 100)

let palewhhite = Color(hue: 79, saturation: 5, brightness: 88, alpha: 100)

let newyellow = Color(hue: 49, saturation: 100, brightness: 100, alpha: 100)

//Create Background

canvas.fillColor = neworange// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

//Express pattern for grid

for vertical in stride(from: 244.444, through: 600, by: 44.44){
    for horizontal in stride(from: 0, through: 400 , by: 44.44){
        
        
        //Draw yellow triangles
       
        canvas.fillColor = newyellow
        var Triangle: [Point] = []
        Triangle.append(Point(x: horizontal - 44.44444, y: vertical - 44.44444 ))
        Triangle.append(Point(x: horizontal - 0, y: vertical - 44.4444))
        Triangle.append(Point(x: horizontal - 0, y: vertical - 0))
        canvas.drawCustomShape(with: Triangle)
        
        
        
        
        //Draw white triangles
        
        if vertical - horizontal <= 240 {
            canvas.fillColor = newyellow
        }
        else {
            canvas.fillColor = palewhhite
        }
        canvas.drawCustomShape(with: Triangle)
    }
    
    
    
}



//Draw the custom figure

canvas.drawAxes(withScale: true, by: 50, color: .black)


//Draw text
canvas.textColor = .white
canvas.drawText(message: "talking heads", at: Point(x: 20, y: 140), size: 40, kerning: 0)
canvas.drawText(message: "friday, saturday, sunday", at: Point(x: 20, y: 35), size: 8, kerning: 0)
canvas.drawText(message: "september 12, 13, 14, 1975", at: Point(x: 20, y: 20), size: 8, kerning: 0)
canvas.drawText(message: "at cbgb and omfug", at: Point(x: 175, y: 35), size: 8, kerning: 0)
canvas.drawText(message: "315 bowery, new york city", at: Point(x: 175, y: 20), size: 8, kerning: 0)

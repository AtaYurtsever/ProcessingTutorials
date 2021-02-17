from Brick import *
from Ball import *

p = Paddle(200,600,150,50)
b = Ball(300,400,20,6,5)
bricks = []


def setup():
    size(800,800)
    global bricks
    for x in range(5,805,100):
        for y in range(30,165,45):
            bricks.append(Brick(x,y,90,40))
def draw():
    background(0)
    #check 
    b.collideWithSides()
    b.collideWithBrick(p)
    j = b.collideWithBricks(bricks)
    if(j!= None):
        bricks.remove(j)
    
    # update
    p.update()
    b.update()
    
    #render
    p.render()
    b.render()
    for i in bricks:
        i.render()

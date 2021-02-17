class Brick:
    def __init__(self,x,y,w,h):
        self.x = x
        self.y = y
        self.w = w
        self.h = h
        self.c = color(random(255),random(255),random(255))
    
    def render(self):
        fill(self.c)
        noStroke()
        rect(self.x,self.y,self.w,self.h)
        
class Paddle(Brick):
    def __init__(self,x,y,w,h):
        Brick.__init__(self,x,y,w,h)
        self.c = color(255,50,255)
        
    def update(self):
        self.x = mouseX-self.w/2
        

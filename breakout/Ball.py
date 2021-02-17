class Ball:
    def __init__(self,x,y,r,xSpeed,ySpeed):
        self.x = x
        self.y = y
        self.r = r
        self.xSpeed = xSpeed
        self.ySpeed = ySpeed
        
    def render(self):
        fill(200)
        noStroke()
        ellipse(self.x,self.y,self.r,self.r,)
        
    def update(self):
        self.x += self.xSpeed
        self.y += self.ySpeed
        
    def collideWithSides(self):
        nx = self.x + self.xSpeed
        ny = self.y + self.ySpeed
        if(nx > width or nx < 0):
            self.xSpeed *= -1
        if(ny > height or ny < 0):
            self.ySpeed *= -1
            
    def collideWithBrick(self,brick):
        nx = self.x + self.xSpeed
        ny = self.y + self.ySpeed
        if(    nx > brick.x
           and nx < brick.x + brick.w
           and ny > brick.y
           and ny < brick.y + brick.h):
            self.bounceOffBrick(brick)
            return True
        else:
            return False
        
    def collideWithBricks(self,bricks):
        for b in bricks:
            if(self.collideWithBrick(b)):
                return b
        return None
            
            
    def bounceOffBrick(self, brick):
        nx = self.x + self.xSpeed
        ny = self.y + self.ySpeed
        if(    nx < brick.x
           and nx > brick.x + brick.w):
            self.xSpeed *= -1
        if(    ny > brick.y
           and ny < brick.y + brick.h):
            self.ySpeed *= -1

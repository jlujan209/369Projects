
class Zigzag:

    # works up to n = 31

    def __init__(self, n):
    
        self.x = 0
        self.y = 0
        self.n = n
        self.result = []

    def run(self):
        self.store()
        self.x += 1
        self.right()

    def right(self):
        self.store()

        if self.y == 0:
            self.x -= 1
            self.y += 1
            self.downleft()
        elif self.x < self.n - 1:
            self.x += 1
            self.y -= 1
            self.upright()

    def down(self):
        self.store()   

        if self.x ==  0:
            self.x += 1
            self.y -= 1
            self.upright()
        else:
            self.x -= 1
            self.y += 1
            self.downleft()

    def downleft(self):
        self.store()

        if self.y == self.n - 1:
            self.x += 1
            self.right()
        elif self.x == 0:
            self.y += 1
            self.down()
        else:
            self.x -= 1
            self.y += 1        
            self.downleft()
    
    def upright(self):
        self.store()

        if self.x == self.n - 1:
            self.y += 1
            self.down()
        elif self.y == 0:
            self.x += 1
            self.right()
        else:
            self.x += 1
            self.y -= 1
            self.upright()
    
    def store(self):
        self.result.append((self.x, self.y))
    
    def print(self):

        string = ""

        for coord in self.result:
            string += str(coord) + " "

        print(string)

        
        
if __name__ == "__main__":


    # for i in range(2, 32):


    zz = Zigzag(4)
    zz.run()
    zz.print()
    print("-_-_-_")
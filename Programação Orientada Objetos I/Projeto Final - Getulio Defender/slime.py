import pygame

class Slime(pygame.sprite.Sprite):
    def __init__(self,color,x,y):
        super().__init__()
        file_path = '../Getulio Defender/' + color + '.png'
        self.image = pygame.image.load(file_path).convert_alpha()
        self.rect = self.image.get_rect(topleft = (x,y))

        if color == 'orange': self.value = 100
        elif color == 'purple': self.value = 300
        else: self.value = 200

    def update(self, direction):
        self.rect.y += direction
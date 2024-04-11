import pygame

class Magica(pygame.sprite.Sprite):
    def __init__(self, pos, speed = -8, screen_width = 600):
        super().__init__()
        self.image = pygame.image.load('magia.png').convert_alpha()
        self.rect = self.image.get_rect(center = pos)
        self.speed = speed
        self.width_x_constraint = screen_width
    
    def destroy(self):
        if self.rect.x <= -50 or self.rect.x >= self.width_x_constraint + 50:
            self.kill()

    def update(self):
        self.rect.x += self.speed
        self.destroy()
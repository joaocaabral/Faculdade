import pygame
from magic import Magica

class Getulio(pygame.sprite.Sprite):
    def __init__(self,pos,constraint,speed):
        super().__init__()
        self.image = pygame.image.load('Getulio.png').convert_alpha()
        self.rect = self.image.get_rect(midright = pos)
        self.speed = speed
        self.max_x_constraint = constraint
        self.ready = True
        self.magic_time = 0
        self.magic_cooldown = 600
        self.magics = pygame.sprite.Group()

    def get_input(self):
        keys = pygame.key.get_pressed()

        if keys[pygame.K_UP]:
            self.rect.y -= self.speed
        elif keys[pygame.K_DOWN]:
            self.rect.y += self.speed
        
        if keys[pygame.K_SPACE] and self.ready:
            self.shoot_magic()
            self.ready = False
            self.magic_time = pygame.time.get_ticks()

    def recharge(self):
        if not self.ready:
            current_time = pygame.time.get_ticks()
            if current_time - self.magic_time >= self.magic_cooldown:
                self.ready = True
    
    def constraint(self):
        if self.rect.bottom>=self.max_x_constraint:
            self.rect.bottom=self.max_x_constraint
        if self.rect.top<=0:
            self.rect.top=0

    def shoot_magic(self):
        self.magics.add(Magica(self.rect.center, -8, self.rect.left))

    def update(self):
        self.get_input()
        self.constraint()
        self.recharge()
        self.magics.update()

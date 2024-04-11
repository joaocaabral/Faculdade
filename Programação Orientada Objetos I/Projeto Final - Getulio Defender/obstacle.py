import pygame 

class Arvore(pygame.sprite.Sprite):
	def __init__(self,size,color,x,y):
		super().__init__()
		self.image = pygame.Surface((size,size))
		self.image.fill(color)
		self.rect = self.image.get_rect(topleft = (x,y))

shape = [
'   xxx   ',
'  xxxxx  ',
' xxxxxxx ',
'xxxxxxxxx',
'xxxxxxxxx',
'  xxxxx  ',
' xxxxxxx ',
'xxxxxxxxx',
'xxxxxxxxx',
'xxxxxxxxx',
'   xxx   ',
'  xxxxx  ']
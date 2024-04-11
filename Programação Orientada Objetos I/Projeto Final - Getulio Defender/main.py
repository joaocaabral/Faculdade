import pygame, sys
from magic import Magica
from player import Getulio
import obstacle
from slime import Slime
from random import choice, randint

class Jogo:
    def __init__(self):
        player_sprite = Getulio((650, 300),screen_height,5)
        self.player = pygame.sprite.GroupSingle(player_sprite)

        self.vidas = 3
        self.vidas_surf = pygame.image.load('vida.png').convert_alpha()
        self.vidas_x_start_pos = screen_width - (self.vidas_surf.get_size()[0] * 2 + 20)
        self.score = 0
        self.font = pygame.font.Font('Pixeled.ttf', 20)

        self.shape = obstacle.shape
        self.block_size = 6
        self.blocks = pygame.sprite.Group()
        self.obstacle_amount = 4
        self.obstacle_y_positions = (20, 170, 330, 500)
        self.create_multiple_obstacles(*self.obstacle_y_positions, x_start = 400, y_start = 0) 

        self.slimes = pygame.sprite.Group()
        self.slime_setup(rows = 6, cols = 4)    
        self.slime_direction = 1
        self.slimes_magic = pygame.sprite.Group()

        music = pygame.mixer.Sound('music.wav')
        music.set_volume(0.05)
        music.play(loops = -1)
        self.magic_sound = pygame.mixer.Sound('magic.wav')
        self.magic_sound.set_volume(0.05)
        self.explosion_sound = pygame.mixer.Sound('explosion.wav')
        self.explosion_sound.set_volume(0.05)

    def create_obstacle(self, x_start, y_start, offset_y):
        for row_index, row in enumerate(self.shape):
            for col_index,col in enumerate(row):
                if col == 'x':
                    x = x_start + col_index * self.block_size 
                    y = y_start + row_index * self.block_size + offset_y
                    arvore = obstacle.Arvore(self.block_size,(0,128,0),x,y)
                    self.blocks.add(arvore)
    
    def create_multiple_obstacles(self,*offset,x_start,y_start):
        for offset_y in offset:
            self.create_obstacle(x_start,y_start,offset_y)

    def slime_setup(self,rows,cols, x_distance = 80, y_distance = 80, x_offset = 5, y_offset = 70): 
        for row_index, row in enumerate(range(rows)):
            for col_index, col in enumerate(range(cols)):
                x = col_index * x_distance + x_offset
                y = row_index * y_distance + y_offset

                if col_index == 0: slime_sprite = Slime('purple', x, y)
                elif col_index == 1: slime_sprite = Slime('green', x, y)
                else: slime_sprite = Slime('orange', x, y)
                self.slimes.add(slime_sprite)

    def slime_position_checker(self):
        all_slimes = self.slimes.sprites()
        for slime in all_slimes:
            if slime.rect.top>=550:
                self.slime_direction = -1
                self.slime_move_right(2)
            elif slime.rect.top<=0:
                self.slime_direction = +1
                self.slime_move_right(2)
    
    def slime_move_right(self, distance):
        if self.slimes:
            for slime in self.slimes.sprites():
                slime.rect.x += distance

    def slime_magic(self):
        if self.slimes.sprites():
            random_slime = choice(self.slimes.sprites())
            magic_sprite = Magica(random_slime.rect.center,6, screen_width)
            self.slimes_magic.add(magic_sprite)
            self.magic_sound.play()

    def colisoes(self):
        if self.player.sprite.magics:
            for magic in self.player.sprite.magics:
                if pygame.sprite.spritecollide(magic, self.blocks, True):   
                    magic.kill()

                slime_hit = pygame.sprite.spritecollide(magic, self.slimes, True)
                if slime_hit:
                    for slimes in slime_hit:
                        self.score += slimes.value
                    magic.kill()
                    self.explosion_sound.play()

        if self.slimes_magic:
            for magic in self.slimes_magic:
                if pygame.sprite.spritecollide(magic, self.blocks, True):   
                    magic.kill()

                if pygame.sprite.spritecollide(magic, self.player, False):
                    magic.kill()
                    self.vidas -= 1
                    if self.vidas <= 0:
                        pygame.quit()
                        sys.exit()
                
                if self.slimes:
                    for slimes in self.slimes:
                        pygame.sprite.spritecollide(slimes, self.blocks, True)

                        if pygame.sprite.spritecollide(slimes, self.player, False):
                            pygame.quit()
                            sys.exit()

    def ver_vidas(self):
        for vidas in range(self.vidas - 1):
            x = self.vidas_x_start_pos + (vidas * (self.vidas_surf.get_size()[0] + 10))
            screen.blit(self.vidas_surf,(x,60))

    def placar(self):
        pont_surf = self.font.render(f'score: {self.score}', False, 'white')
        pont_rect = pont_surf.get_rect(topright = (690,0))
        screen.blit(pont_surf,pont_rect)

    def victoria(self):
        if not self.slimes.sprites():
            victory_surf = self.font.render('You won',False,'white')
            victory_rect = victory_surf.get_rect(center = (screen_width / 2, screen_height / 2))
            screen.blit(victory_surf,victory_rect)

    def run(self):
        self.player.update()
        self.slimes.update(self.slime_direction)
        self.slime_position_checker()
        self.slimes_magic.update()
        self.colisoes()

        self.player.sprite.magics.draw(screen)
        self.player.draw(screen)
        self.blocks.draw(screen)
        self.slimes.draw(screen)
        self.slimes_magic.draw(screen)
        self.ver_vidas()
        self.placar()
        self.victoria()

class CRT:
    def __init__(self):
        self.tv = pygame.image.load('tv.png').convert_alpha()
        self.tv = pygame.transform.scale(self.tv,(screen_width,screen_height))
    
    def create_crt_lines(self):
        line_height = 3
        line_amount = int(screen_height / line_height)
        for line in range(line_amount):
            y_pos = line * line_height
            pygame.draw.line(self.tv,'black',(0,y_pos),(screen_width,y_pos),1)

    def draw(self):
        self.tv.set_alpha(randint(75,90))
        self.create_crt_lines()
        screen.blit(self.tv,(0,0))

if __name__ == '__main__':
    pygame.init()
    screen_width = 700
    screen_height = 600
    screen = pygame.display.set_mode((screen_width,screen_height))
    clock = pygame.time.Clock()
    game = Jogo()
    crt = CRT()

    SLIMEMAGIA = pygame.USEREVENT + 1
    pygame.time.set_timer(SLIMEMAGIA, 800)

    while True:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                sys.exit()
            if event.type == SLIMEMAGIA:
                game.slime_magic()
        screen.fill((30, 30, 30))
        game.run()
        crt.draw()

        pygame.display.flip()
        clock.tick(60)


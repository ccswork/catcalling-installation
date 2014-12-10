import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

Minim minim;
float a;
static final int SONGS = 10;
final AudioPlayer[] songs = new AudioPlayer[SONGS];
int idx;
void setup()
{
  background(0);
  size(900,900);
  
  minim = new Minim(this);
  songs[0] = minim.loadFile("comehome.mp3");
  songs[1] = minim.loadFile("dam.mp3");
  songs[2] = minim.loadFile("heybaby.mp3");
  songs[3] = minim.loadFile("heybeautiful.mp3");
  songs[4] = minim.loadFile("lookinggood.mp3");
  songs[5] = minim.loadFile("realnice.mp3");
  songs[6] = minim.loadFile("whysmile.mp3");
  songs[7] = minim.loadFile("wistle.mp3");
  songs[8] = minim.loadFile("yourtopretty.mp3");
  songs[9] = minim.loadFile("single.mp3");
 


}

void draw()
{
}
void mousePressed() {
 // Stop & rewind current song's index:
songs[idx].pause();
songs[idx].rewind();
 
// Pick another random index for play next:
if (SONGS > 1) {
  int rnd;
  while (idx == (rnd = (int) random(SONGS)));
  idx = rnd;
}
 
songs[idx].play();
}


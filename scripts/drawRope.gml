var x1, y1, x2, y2, spr, dist, dir, w, r, xx, yy;
x1=argument0;
y1=argument1;
x2=argument2;
y2=argument3;
spr=argument4;
depth = -2;

w=sprite_get_width(spr);

dist=point_distance(x1, y1, x2, y2);
dir=point_direction(x1, y1, x2, y2);

for (r=0; r<dist; r+=w) {
  if (r<dist - w) {
    xx = x1 + lengthdir_x(r, dir);
    yy = y1 + lengthdir_y(r, dir);
    draw_sprite_ext(spr, 0, xx, yy, 1, 1, dir, c_white, 1);
  }
}

/* Take care of partial-pieces if the rope length is not a multiple of the sprite width */
if (r > dist) {
  r-=w;
  xx = x1 + lengthdir_x(r, dir);
  yy = y1 + lengthdir_y(r, dir);
  draw_sprite_general(spr, 0, 0, 0, dist-r, sprite_get_height(spr), xx, yy, 1, 1, dir, c_white, c_white, c_white, c_white, 1);
  //draw_sprite(sprBall,0,xx,yy);
}

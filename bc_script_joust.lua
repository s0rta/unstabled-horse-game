function init_joust_pieces()
  pieces[1].spr_id = 1
  pieces[1].x = 10
  pieces[1].y = 70
  pieces[1].dx = 0
  pieces[13].spr_id = 2
  pieces[13].x = 120
  pieces[13].y = 70
  pieces[13].dx = 0 

end

function draw_joust()
  rectfill(0,75,127,127, 3)
  
  spr(pieces[1].spr_id, pieces[1].x % 128, pieces[1].y)
  
  if pieces[1].x > 384 then
    spr(pieces[13].spr_id, pieces[13].x, pieces[13].y)
    pieces[13].dx = 3 
  end
end

function update_joust()
  pieces[1].x += pieces[1].dx
  pieces[13].x -= pieces[13].dx

  if(btnp(4)) then
    pieces[1].dx += 1/12
  end
end


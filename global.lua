total_pieces = 24

paused = false
selected = 1
pieces = {}
game_state = "joust"
prev_game_state = ""

function _init()
  piece_num = 1

  for i=1, total_pieces do
    pieces[piece_num] = {
      x = 0,
      y = 0,
      dx = 0,
      dy = 0,
      player = piece_num > 12 and 1 or 2,
      id = piece_num,
      spr_id = 0,
      alive = true
    }
    piece_num += 1
  end
end

function _draw()
  cls()
  if game_state == "joust" then
    draw_joust()
  end
end

function _update()
  if game_state == "joust" then
    if prev_game_state != "joust" then
      init_joust_pieces()
      prev_game_state = "joust"
    end
    update_joust()
  end
end

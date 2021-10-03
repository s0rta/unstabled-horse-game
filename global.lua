total_pieces = 24

pieces = {}
game_tbl = {
  state = "joust",
  prev_state = "",
  selected = -1,
  paused = false,
  clock = 0
}

function _init()
  piece_num = 1
  palt(14, true)
  palt(0, false)
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
  if game_tbl.state == "joust" then
    draw_joust()
  end
end

function _update()
  if game_tbl.state == "joust" then
    if game_tbl.prev_state != "joust" then
      init_joust_pieces()
      game_tbl.prev_state = "joust"
    end
    update_joust()
  end
end

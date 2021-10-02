total_pieces = 24

paused = false
selected = 1
pieces = {}

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
      spr_id = piece_num > 12 and 1 or 2,
      alive = true
    }
  end
end

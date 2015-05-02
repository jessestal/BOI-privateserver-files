// ?? BOSS RUSH ???? -- ??


function OnDead(){

	$item1 = GetPlayerInfo( -1, "item", 52109 )
	$item2 = GetPlayerInfo( -1, "item", 52110 )

	if $item1 > 0
		BC( "screen", "player", -1, "You picked up an Element Piece, and the Fire Element Piece in your bag got heat. And you dropped the piece you just picked up." )
		return
	endif

	if $item2 > 0
		BC( "screen", "player", -1, "You picked up an Element Piece, and the Ice Element Piece in your bag got cold. And you dropped the piece you just picked up." )
		return
	endif


	$add = AddPlayerInfo( -1, "item", 52109, 1 )
	BC( "screen", "player", -1, "You Picked up a Fire Element Piece and it seemed steady. So you put it in your bag." )


	}

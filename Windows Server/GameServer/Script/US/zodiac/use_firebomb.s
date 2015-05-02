// ?? BOSS RUSH ???? -- ??


function OnUseItem(){

	$item1 = GetPlayerInfo( -1, "item", 52109 )
	$item2 = GetPlayerInfo( -1, "item", 52110 )
	$m = GetPlayerInfo( -1, "mapid" )
	$x = GetPlayerInfo( -1, "mapx" )
	$y = GetPlayerInfo( -1, "mapy" )


	if $item1 < 1
		BC( "screen", "player", -1, "You don't have any Fire Element Pieces." )
		return
	endif

	$result = SubPlayerInfo( -1, "item", 52109,1)
	$addm = AddMonster( 56062, 1, $m, $x, $y, 0 )

}

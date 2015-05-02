

function OnUseItem(){
	
	$result = IsCeremonyOn( 2 )
	if $result == 0
		BC( "screen", "player", -1, "Only can be used in wedding." )
	else
		$mapid = GetPlayerInfo( -1 , "mapid" )
		if $mapid == 208
			SubPlayerInfo( -1 , "item" , 52019 , 1 )
			PlayEffect(-1,"common\Yanhua\tx_xuanli5\tx_xuanli5.ini")
		else
			BC( "screen", "player", -1, "Only can be used in Garden of Gentleness." )
		endif
	endif
}
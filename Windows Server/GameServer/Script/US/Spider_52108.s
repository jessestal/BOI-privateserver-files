function OnUseItem(){

			$r = AddRider(-1,1041)
			if $r == 0
				BC( "screen", "player", -1, "Mount added to mount list!" )
				//????
				SubPlayerInfo( -1, "item", 52108, 1 )
				return
			endif
			BC( "screen", "player", -1, "Failed to add to mount list" )

}

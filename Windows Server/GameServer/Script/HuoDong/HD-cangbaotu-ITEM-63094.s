	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/09/09
	//		Author:??
	//		TaskName:HD-cangbaotu-ITEM-63094.s
	//		TaskID:?????,???????
	//
	//****************************************
	
	
	
	function OnUseItem(){
	
	//	??????
		$treasure_map_ID = 1
		$treasure_map_X = 83
		$treasure_map_Y = 75	
	//????ID
		$treasure_ID = 63094
		
	//????
		$map_id = GetPlayerInfo( -1, "mapid" )
		$x = GetPlayerInfo( -1, "mapx" )
		$y = GetPlayerInfo( -1, "mapy" )

		//????????
		if $map_id != $treasure_map_ID
			BC( "messagebox", "player", -1, "The marked place in this treasure map doesn't seem to be in this map!" )
			return
		endif
		$temp_X = $treasure_map_X + 1
		if $x > $temp_X
			BC( "messagebox", "player", -1, "The marked place in this treasure map doesn't seem to be here!" )
			return
		endif
		$temp_X = $treasure_map_X - 1
		if $x < $temp_X
			BC( "messagebox", "player", -1, "The marked place in this treasure map doesn't seem to be here!" )
			return
		endif
		$temp_Y = $treasure_map_Y + 1
		if $y > $temp_Y
			BC( "messagebox", "player", -1, "The marked place in this treasure map doesn't seem to be here!" )
			return
		endif
		$temp_Y = $treasure_map_Y - 1
		if $y < $temp_Y
			BC( "messagebox", "player", -1, "The marked place in this treasure map doesn't seem to be here!" )
			return
		endif
		
		//?????
		$del_count = SubPlayerInfo( -1, "item", $treasure_ID, 1 )
		//????????
		if $del_count != 0
			return
		endif
		
		$result = AddMonster( 30106, 1, $map_id, $x, $y, 0 ,-1)
		#player_name = GetPlayerInfo( -1, "name" )
		BC( "screen", "server", -1, "The hero ",#player_name ,"Guided by the treasure map, you began to dig up treasures. Unfinished, your behaviours disturbed the monster which protects the treasure." )

	}
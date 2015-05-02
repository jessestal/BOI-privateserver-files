	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-8-29
	//		Author:???
	//		TaskName:44399-CallofFateGoddess.s
	//		TaskID:??????????
	//
	//****************************************
	
function OnUseItem(){

		//???? ???? ?? 100-500
		
		$prestige = GetPlayerInfo( -1, "prestige", 9 )
		if $prestige >= 30000
			BC( "screen", "player", -1, "You already have as much Reputation as you can, adventurer!" )
			return
		endif
				
	  //???????
	  $del_count = SubPlayerInfo( -1, "item", 44399, 1 )
	  //??????????,????????
	  if $del_count != 0
	     return
	  endif

  	//----------?????????----------
		$level = GetPlayerInfo( -1, "level" )
		if $level < 75
			$max = 200
		endif
		if $level >= 75
			if $level < 100
				$max = 300
			endif
		endif
		if $level >= 100
			if $level < 120
				$max = 400
			endif
		endif
		if $level >= 120
			$max = 500
		endif		
		$Lucky = RandomNumber(100,$max)
		AddPlayerInfo( -1, "prestige", 9, $Lucky )
		BC( "screen", "player", -1, "Congrats! You have acquired ",$Lucky,"points of Adventure Reputation" )		
		PlayEffect(-1, "common\Yanhua\tx_leiyu\tx_leiyu.ini" )
		
		//???	
		call Prestige

}

	//???
	function Prestige(){

		$prestige = GetPlayerInfo( -1, "prestige", 9 )
		if $prestige >= 1000
			if $prestige < 5000
				$Title = HaveTitle( -1, 41 )
				if $Title != 0
					AddTitle( -1, 41 )
				endif
			endif	
		endif
		if $prestige >= 5000
			if $prestige < 12000
				$Title = HaveTitle( -1, 42 )
				if $Title != 0
					AddTitle( -1, 42 )
				endif
			endif	
		endif
		if $prestige >= 12000
				$Title = HaveTitle( -1, 43 )
				if $Title != 0
					AddTitle( -1, 43 )
				endif
		endif		
		
}	
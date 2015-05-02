    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/05
	//		Author:???
	//		TaskName:44391-DoorofFate-1st-Award.s
	//		TaskID:???????
	//
	//****************************************


function OnUseItem(){
	//???? 4???? 59081 1 ????? 12417 30 ???? 1000  ??

  //??????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 45
     BC( "screen", "player", -1, "You need to be at least LV45 before you can use this item!" )
     return
  endif
  
  //???????
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 2
     BC( "chat", "player", -1, "You need at least 2 empty slots in your bag before you can use this item!" )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44391, 1 )
  //??????????
  if $del_count != 0
     return
  endif



  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
  //??????
  AddPlayerInfo(-1, "item", 59081, 1 )
  AddPlayerInfo(-1, "item", 12417, 30 )
  AddPlayerInfo( -1, "prestige", 9, 1000 )
  
  call prestige
  

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
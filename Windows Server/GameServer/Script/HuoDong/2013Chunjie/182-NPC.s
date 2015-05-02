 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2013.1.9  
 //  Author:???  
 //  TaskName: ?? 
 //****************************  
	function OnRequest(){
			//??????

	$Now_Mday =  GetSystemTime( "mday" )
	//??
	$Now_Month =  GetSystemTime( "month" )
	//???.2008????
	$Now_Year =  GetSystemTime( "year" )
	//???.0-6
	$Now_Week =  GetSystemTime( "week" )
	//??????.0-365
	$Now_Yday =  GetSystemTime( "yday" )
	if $Now_Year != 2013 
	  DisableNpcOption(0)
     
  endif
  	if $Now_Month != 2 
	   DisableNpcOption(0)
     
  endif
  if $Now_Mday < 10
	   DisableNpcOption(0)
     
  endif
   if $Now_Mday > 26
	   DisableNpcOption(0)
     
  endif
  	//????
    $playervar = GetPlayerVar(-1,3451)  
    if $playervar > 7
	   DisableNpcOption(0)
     
  endif
   	//??????
		$Info = GetPlayerInfo( -1, "item", 44642)	
			if $Info < 1
				DisableNpcOption(0)
				
			endif
	}
	
	
	function OnOption0(){
	  	//????
    $playervar = GetPlayerVar(-1,3451)  
    if $playervar > 7
     return
  endif
   	//??????
		$Info = GetPlayerInfo( -1, "item", 44642)	
			if $Info < 1
				return
			endif

		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "messagebox", "player", -1, "Your bag is full!" )
			return
		endif
		 //???????
     $del_count = SubPlayerInfo( -1, "item", 44642, 1 )
     //??????????,????????
  if $del_count != 0
     return
  endif
	
		AddPlayerInfo( -1, "item", 59557, 1 )
		$playervar = $playervar + 1
		SetPlayerVar(-1, 3451, $playervar )
		BC( "messagebox", "player", -1, "You've already taken all your lucky red envelope!\nHappy Spring Festival!" )
		PlayEffect(-1, "common\Yanhua\tx_xuanli1\tx_xuanli1.ini" )
		PlayEffect(-1, "common\Yanhua\tx_chunjie\tx_yanhua_chunjie_01.ini" )

		
	}
	
	
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/21
	//		Author:???
	//		TaskName:MRstart.s
	//		TaskID:2?????????????
	//
	//****************************************
	

	function OnRequest(){
	
		//2?????????????
		SetServerVar( 108 , 0 )
		SetServerVar( 109 , 0 )
		SetServerVar( 111 , 0 )
		SetServerVar( 112 , 0 )
		SetServerVar( 113 , 0 )
		
		PlayEffect( -1 , "common\Yanhua\tx_hunliyanhua\Tx_hunliyanhua9.ini" )
		PlayEffect( -1 , "common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_03.ini" )
		
		//??????
		$id1 = GetCeremonyHostID( 2 , 0 )
		$id2 = GetCeremonyHostID( 2 , 1 )
		PlayEffect( $id1  , "common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_08.ini" )
		PlayEffect( $id2 , "common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_08.ini" )
		
		$result = AddMonster(52098, 1, 208, 64, 53, 0 )
		$result = AddMonster(52099, 1, 208, 64, 53, 0 )
		
		
		//?????
		//??????????
		$isrun = GetServerVar( 108 )
		if $isrun == 255
			BC( "dialogbox", "player", -1, "The game is currently in progress." )
			return
		endif
		
		#name1 = GetPlayerInfo( $id1 , "name" )
		#name2 = GetPlayerInfo( $id2 , "name" )
		//???????????????+1
		$rea = CheckRelation($id1, $id2)
		
		if $rea != 3
			$marrycount = GetServerVar( 114 )
			//$marrycount = $marrycount + 1
			//SetServerVar ( 114 , $marrycount )
			//???????????,3725
			//SetPlayerVar( $id1 , 3725 , $marrycount)
			//SetPlayerVar( $id2 , 3725 , $marrycount)
			//???????????
			$line = GetServerLineID() 
			//SetPlayerVar( $id1 , 3727 , $line )
			//SetPlayerVar( $id2 , 3727 , $line )
			
			BC( "screen", "player", $id1 , "Marriage SN:" , $marrycount , "newlywed couples" )
			BC( "screen", "player", $id2 , "Marriage SN:" , $marrycount , "newlywed couples" )
			BC( "screen", "server", -1, #name1 , "and" , #name2 , "is conducting a big celebration in Garden of Gentleness, and invits others to join their dinner in Atlantis. May the happiness is always with them." )
		else
			BC( "screen", "server", -1, "Congratulations!" , #name1 , "and" , #name2 , "hold a wedding ceremony in Garden of Gentleness. Blessed by gods, they invite everybody to join their dinner in Atlantis. Let's send our best wishes to them." )
		endif
		
		BC( "dialogbox", "player", $id1 , "Wedding starts, congratulations! Now many Balloon for prayer and delicious meals appear in this field. According to this custom of Atlantis, couple's married life depends on how many balloons they release and foods they collect. The more, the better. May you have a happy wedding." )
		BC( "dialogbox", "player", $id2 , "Wedding starts, congratulations! Now many Balloon for prayer and delicious meals appear in this field. According to this custom of Atlantis, couple's married life depends on how many balloons they release and foods they collect. The more, the better. May you have a happy wedding." )

		
		//??????????
		AddMonster( 52031, 60 , 2 , 58 , 74 , 16 )
		//???
		AddMonster( 52040, 1 , 208 , 66 , 61 , 0 )
		AddMonster( 52046, 1 , 208 , 68 , 61 , 0 )
		AddMonster( 52041, 1 , 208 , 70 , 61 , 0 )
		AddMonster( 52041, 1 , 208 , 72 , 61 , 0 )
		AddMonster( 52041, 1 , 208 , 66 , 63 , 0 )
		AddMonster( 52041, 1 , 208 , 68 , 63 , 0 )
		AddMonster( 52041, 1 , 208 , 70 , 63 , 0 )
		AddMonster( 52041, 1 , 208 , 72 , 63 , 0 )
		//???
		//$result = AddMonster(52005, 60, 208, 64 , 66 , 10 )
		$result = AddMonster(52005, 8 , 208 , 59 , 60 , 5 )
		$result = AddMonster(52005, 8 , 208 , 69 , 60 , 5 )
		$result = AddMonster(52005, 8 , 208 , 60 , 71 , 5 )
		$result = AddMonster(52005, 8 , 208 , 70 , 71 , 5 )
		
	}
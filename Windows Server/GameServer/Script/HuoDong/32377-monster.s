	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/12
	//		Author:???
	//		TaskName:????????
	//		TaskID:32377-monster.s
	//
	//****************************************
	
	function OnDead(){
    $rand = RandomNumber( 1, 100 )
        if $rand == 1 
        BC( "scrollbar" , "servergroup" , -1 , "On Realm 6, Abyss - Dysteri with his devil army is attacking Sea of Atlantis (136,191). Warriors, go and fight for Atlantis!")
				
        endif
        
				if $rand < 6 
				  BC( "screen" , "server" , -1 , "On Realm 6, Abyss - Dysteri with his devil army is attacking Sea of Atlantis (136,191). Warriors, go and fight for Atlantis!")
	
			  endif

	
	}
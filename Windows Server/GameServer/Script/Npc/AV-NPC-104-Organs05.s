	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/15
	//		Author:???
	//		TaskName:AV-NPC-104-Organs05.s
	//		TaskID:????05
	//
	//****************************************
	
	function OnRequest(){
		$OrgansVar = 3780
	
		$Organs01 = GetPlayerVar( -1, $OrgansVar )
		if $Organs01 == 1
			DisableNpcOption(0)
		endif
	
	}
	
	
	function OnOption0(){
		$OrgansVar01 = GetPlayerVar( -1, 3780 )
		if $OrgansVar01 == 1
			BC( "screen", "player", -1, "The statue has been activated!" )
			return
		endif
		
		$ItemNum01 = GetPlayerInfo( -1, "item", 12447 )
		
		if $OrgansVar01 == 0
			$Random01 = RandomNumber( 1, 3 )
			if $Random01 == 1
				SetPlayerVar( -1, 3780, 14 )
				if $ItemNum01 < 1
					BC( "screen", "player", -1, "You don't have Scorpion Blood. Try to defeat some Gold Skin Scorpions." )
					return
				else
					$SubItem01 = SubPlayerInfo( -1, "item", 12447, 1 )
					if $SubItem01 != 0
						return
					endif
					SetPlayerVar( -1, 3780, 13 )
					BC( "screen", "player", -1, "Scorpion Blood oozed into the crack of the statue. However, the statue was not giving any responses. It seems that more Scorpion Blood is needed." )
					return	
				endif
			endif
		
			if $Random01 == 2
				SetPlayerVar( -1, 3780, 16 )
				if $ItemNum01 < 1
					BC( "screen", "player", -1, "You don't have Scorpion Blood. Try to defeat some Gold Skin Scorpions." )
					return
				else
					$SubItem01 = SubPlayerInfo( -1, "item", 12447, 1 )
					if $SubItem01 != 0
						return
					endif
					SetPlayerVar( -1, 3780, 15 )
					BC( "screen", "player", -1, "Scorpion Blood oozed into the crack of the statue. However, the statue was not giving any responses. It seems that more Scorpion Blood is needed." )
					return	
				endif
			endif
		
			if $Random01 == 3
				SetPlayerVar( -1, 3780, 18 )
				if $ItemNum01 < 1
					BC( "screen", "player", -1, "You don't have Scorpion Blood. Try to defeat some Gold Skin Scorpions." )
					return
				else
					$SubItem01 = SubPlayerInfo( -1, "item", 12447, 1 )
					if $SubItem01 != 0
						return
					endif
					SetPlayerVar( -1, 3780, 17 )
					BC( "screen", "player", -1, "Scorpion Blood oozed into the crack of the statue. However, the statue was not giving any responses. It seems that more Scorpion Blood is needed." )
					return	
				endif
			endif
		else
			if $OrgansVar01 == 18
				if $ItemNum01 < 1
					BC( "screen", "player", -1, "You don't have Scorpion Blood. Try to defeat some Gold Skin Scorpions." )
					return
				else
					$SubItem01 = SubPlayerInfo( -1, "item", 12447, 1 )
					if $SubItem01 != 0
						return
					endif
					SetPlayerVar( -1, 3780, 17 )
					BC( "screen", "player", -1, "Scorpion Blood oozed into the crack of the statue. However, the statue was not giving any responses. It seems that more Scorpion Blood is needed." )
					return	
				endif
			endif
			if $OrgansVar01 == 17
				if $ItemNum01 < 1
					BC( "screen", "player", -1, "You don't have Scorpion Blood. Try to defeat some Gold Skin Scorpions." )
					return
				else
					$SubItem01 = SubPlayerInfo( -1, "item", 12447, 1 )
					if $SubItem01 != 0
						return
					endif
					SetPlayerVar( -1, 3780, 16 )
					BC( "screen", "player", -1, "Scorpion Blood oozed into the crack of the statue. However, the statue was not giving any responses. It seems that more Scorpion Blood is needed." )
					return	
				endif
			endif
			if $OrgansVar01 == 16
				if $ItemNum01 < 1
					BC( "screen", "player", -1, "You don't have Scorpion Blood. Try to defeat some Gold Skin Scorpions." )
					return
				else
					$SubItem01 = SubPlayerInfo( -1, "item", 12447, 1 )
					if $SubItem01 != 0
						return
					endif
					SetPlayerVar( -1, 3780, 15 )
					BC( "screen", "player", -1, "Scorpion Blood oozed into the crack of the statue. However, the statue was not giving any responses. It seems that more Scorpion Blood is needed." )
					return	
				endif
			endif
			if $OrgansVar01 == 15
				if $ItemNum01 < 1
					BC( "screen", "player", -1, "You don't have Scorpion Blood. Try to defeat some Gold Skin Scorpions." )
					return
				else
					$SubItem01 = SubPlayerInfo( -1, "item", 12447, 1 )
					if $SubItem01 != 0
						return
					endif
					SetPlayerVar( -1, 3780, 14 )
					BC( "screen", "player", -1, "Scorpion Blood oozed into the crack of the statue. However, the statue was not giving any responses. It seems that more Scorpion Blood is needed." )
					return	
				endif
			endif
			if $OrgansVar01 == 14
				if $ItemNum01 < 1
					BC( "screen", "player", -1, "You don't have Scorpion Blood. Try to defeat some Gold Skin Scorpions." )
					return
				else
					$SubItem01 = SubPlayerInfo( -1, "item", 12447, 1 )
					if $SubItem01 != 0
						return
					endif
					SetPlayerVar( -1, 3780, 13 )
					BC( "screen", "player", -1, "Scorpion Blood oozed into the crack of the statue. However, the statue was not giving any responses. It seems that more Scorpion Blood is needed." )
					return	
				endif
			endif
			if $OrgansVar01 == 13
				if $ItemNum01 < 1
					BC( "screen", "player", -1, "You don't have Scorpion Blood. Try to defeat some Gold Skin Scorpions." )
					return
				else
					$SubItem01 = SubPlayerInfo( -1, "item", 12447, 1 )
					if $SubItem01 != 0
						return
					endif
					SetPlayerVar( -1, 3780, 12 )
					BC( "screen", "player", -1, "Scorpion Blood oozed into the crack of the statue. However, the statue was not giving any responses. It seems that more Scorpion Blood is needed." )
					return	
				endif
			endif
			if $OrgansVar01 == 12
				if $ItemNum01 < 1
					BC( "screen", "player", -1, "You don't have Scorpion Blood. Try to defeat some Gold Skin Scorpions." )
					return
				else
					$SubItem01 = SubPlayerInfo( -1, "item", 12447, 1 )
					if $SubItem01 != 0
						return
					endif
					SetPlayerVar( -1, 3780, 11 )
					BC( "screen", "player", -1, "Scorpion Blood oozed into the crack of the statue. However, the statue was not giving any responses. It seems that more Scorpion Blood is needed." )
					return	
				endif
			endif
			if $OrgansVar01 == 11
				if $ItemNum01 < 1
					BC( "screen", "player", -1, "You don't have Scorpion Blood. Try to defeat some Gold Skin Scorpions." )
					return
				else
					$SubItem01 = SubPlayerInfo( -1, "item", 12447, 1 )
					if $SubItem01 != 0
						return
					endif
					SetPlayerVar( -1, 3780, 1 )
					$Organs002 = GetPlayerVar( -1, 3781 )
					if $Organs002 != 1
						BC( "screen", "player", -1, "The statue vibrates fiercely. The Blood Charm Stone device has been activated." )
						PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
						return
					endif
						BC( "dialogbox", "player", -1, "Both the Blood Charm Stone device and the Skull Charm Stone device have been activated. You can now start on Ice & Fire Elemental Stone." )
						PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
						return	
				endif
			endif
		endif	
		
	}
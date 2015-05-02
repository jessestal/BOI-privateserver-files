	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2010/02/24
	--		Author:???
	--		Class:	.Lua
	--		AIName:Elinggubao-2139.lua
	--		Remark:????
	----------------------------------------------------
	
	
	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		
		if nIndex == 1 then
			say = AI:GetArray(1)
			if say == 1 then
				AI:ScreenText("Until... I offended him during a ceremony. He transformed me so as not to gain sympathy...",2)
				AI:SetArray(1,2)
			elseif say == 2 then
				AI:ScreenText("I have been overlooked by would-be rescuers in the past.",2)
				AI:SetArray(1,3)
			elseif say == 3 then
				AI:ScreenText("But, I am exhausted. Can you help an old man get back to his lab...?",2)
				AI:SetArray(1,4)
				AI:SetTimer(6,15000,1)
				AI:SetAIState(0)
			end
			
		end
		
		if nIndex == 2 then
			AI:ScreenText("Ah! Found it!",2)
			AI:OpenMapMask(2)
			AI:SetAIState(0)
		end
		
		
		
		if nIndex == 3 then
			--?????
			c = AI:GetMapID()
			d = AI:GetEctypeVarInteger(c, 110)--??????
			e = AI:GetEctypeVarInteger(c, 111)--????
			
			x = AI:GetPosX()
			y = AI:GetPosY()
			if e == 0 then
				AI:SummonLevelMonsterByPos(51606, 54, d,x ,y-2 )
				AI:SummonLevelMonsterByPos(51606, 54, d,x ,y-4 )
				--AI:SummonLevelMonsterByPos(51606, 54, d,x ,y-6 )
				--AI:SummonLevelMonsterByPos(51606, 54, d,x ,y-8 )
				
				AI:SummonLevelMonsterByPos(51606, 54, d,x ,y+2 )
				AI:SummonLevelMonsterByPos(51606, 54, d,x ,y+4 )
				--AI:SummonLevelMonsterByPos(51606, 54, d,x ,y+6 )
				--AI:SummonLevelMonsterByPos(51606, 54, d,x ,y+8 )
				
				AI:SummonLevelMonsterByPos(51606, 54, d,x-2 ,y  )
				AI:SummonLevelMonsterByPos(51606, 54, d,x-4 ,y  )
				--AI:SummonLevelMonsterByPos(51606, 54, d,x-6 ,y  )
				--AI:SummonLevelMonsterByPos(51606, 54, d,x-8 ,y  )
				
				AI:SummonLevelMonsterByPos(51606, 54, d,x+2 ,y  )
				AI:SummonLevelMonsterByPos(51606, 54, d,x+4 ,y  )
				--AI:SummonLevelMonsterByPos(51606, 54, d,x+6 ,y  )
				--AI:SummonLevelMonsterByPos(51606, 54, d,x+8 ,y  )
			elseif e == 1 then
				AI:SummonLevelMonsterByPos(51606, 55, d,x ,y-2 )
				AI:SummonLevelMonsterByPos(51606, 55, d,x ,y-4 )
				AI:SummonLevelMonsterByPos(51606, 55, d,x ,y-6 )
				AI:SummonLevelMonsterByPos(51606, 55, d,x ,y-8 )
				                              
				AI:SummonLevelMonsterByPos(51606, 55, d,x ,y+2 )
				AI:SummonLevelMonsterByPos(51606, 55, d,x ,y+4 )
				AI:SummonLevelMonsterByPos(51606, 55, d,x ,y+6 )
				AI:SummonLevelMonsterByPos(51606, 55, d,x ,y+8 )
				                             
				AI:SummonLevelMonsterByPos(51606, 55, d,x-2 ,y  )
				AI:SummonLevelMonsterByPos(51606, 55, d,x-4 ,y  )
				AI:SummonLevelMonsterByPos(51606, 55, d,x-6 ,y  )
				AI:SummonLevelMonsterByPos(51606, 55, d,x-8 ,y  )
				                             
				AI:SummonLevelMonsterByPos(51606, 55, d,x+2 ,y  )
				AI:SummonLevelMonsterByPos(51606, 55, d,x+4 ,y  )
				AI:SummonLevelMonsterByPos(51606, 55, d,x+6 ,y  )
				AI:SummonLevelMonsterByPos(51606, 55, d,x+8 ,y  )
			end
			
			AI:SetAIState(0)
		end
		
		
		--if nIndex == 4 then
		--	AI:SetTimer(5,7000,1)
		--	AI:SetAIState(7)
		--end
			
			
		if nIndex == 5 then
			--?????
			c = AI:GetMapID()
			d = AI:GetEctypeVarInteger(c, 110)--??????
			e = AI:GetEctypeVarInteger(c, 111)--????
			
			x = AI:GetPosX()
			y = AI:GetPosY()
			if e == 0 then
				AI:SummonLevelMonsterByPos(51606, 54, d,x ,y-2 )
				AI:SummonLevelMonsterByPos(51606, 54, d,x ,y-4 )
				--AI:SummonLevelMonsterByPos(51606, 54, d,x ,y-6 )

				
				AI:SummonLevelMonsterByPos(51606, 54, d,x ,y+2 )
				AI:SummonLevelMonsterByPos(51606, 54, d,x ,y+4 )
				--AI:SummonLevelMonsterByPos(51606, 54, d,x ,y+6 )

				
				AI:SummonLevelMonsterByPos(51606, 54, d,x-2 ,y  )
				AI:SummonLevelMonsterByPos(51606, 54, d,x-4 ,y  )
				--AI:SummonLevelMonsterByPos(51606, 54, d,x-6 ,y  )
	
				
				AI:SummonLevelMonsterByPos(51606, 54, d,x+2 ,y  )
				AI:SummonLevelMonsterByPos(51606, 54, d,x+4 ,y  )
				--AI:SummonLevelMonsterByPos(51606, 54, d,x+6 ,y  )
	
			elseif e == 1 then
				AI:SummonLevelMonsterByPos(51606, 55, d,x ,y-2 )
				AI:SummonLevelMonsterByPos(51606, 55, d,x ,y-4 )
				AI:SummonLevelMonsterByPos(51606, 55, d,x ,y-6 )
		
				                              
				AI:SummonLevelMonsterByPos(51606, 55, d,x ,y+2 )
				AI:SummonLevelMonsterByPos(51606, 55, d,x ,y+4 )
				AI:SummonLevelMonsterByPos(51606, 55, d,x ,y+6 )
	
				                             
				AI:SummonLevelMonsterByPos(51606, 55, d,x-2 ,y  )
				AI:SummonLevelMonsterByPos(51606, 55, d,x-4 ,y  )
				AI:SummonLevelMonsterByPos(51606, 55, d,x-6 ,y  )
		
				                             
				AI:SummonLevelMonsterByPos(51606, 55, d,x+2 ,y  )
				AI:SummonLevelMonsterByPos(51606, 55, d,x+4 ,y  )
				AI:SummonLevelMonsterByPos(51606, 55, d,x+6 ,y  )
		
			end
			
			AI:SetAIState(0)
		end
		
		if nIndex == 6 then
			AI:ScreenText("Please... I am old and very tired. Be patient with me.",2)
		end
		
	end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		
		a = AI:GetArray(0)
		if a == 0 then
			 --???? 
          		 AI:PlayEffect("skill\\Common\\common_feisheng\\tx_lingjian_fire.ini")
          		 AI:PlayEffect("skill\\Common\\common_feisheng\\tx_lingjian_fire.ini")
          		 --AI:PlayEffect( "common\\shandian\\keep\\tx_shandian_keep.ini" )
          		 AI:SetArray(0,1)
          	end
          		 --AI:SetTimer(0,5000,1)
          		 say = AI:GetArray(1)
          		 if say == 0 then
          		 	AI:SetTimer(1,6000,3)
          		 	AI:SetArray(1,1)
          		 end
          		 
          		 say2 = AI:GetArray(2)
          		 if say2 == 1 then
          		 	AI:SetTimer(2,6000,1)
     			 	AI:SetArray(2,2)
     			 end
    		    
			
  	end
		
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	    
	    AI:AddSeekPos(0,65,197)
	    AI:AddSeekPos(0,65,105)
	    AI:AddSeekPos(0,67,100)--2?mask
	    AI:AddSeekPos(0,67,84)--?????
	    AI:AddSeekPos(0,99,84)
	    AI:AddSeekPos(0,99,106)
	    AI:AddSeekPos(0,131,106)
	    AI:AddSeekPos(0,131,137)--3?mask
	    AI:AddSeekPos(0,131,156)
	    AI:AddSeekPos(0,140,156)
	    AI:AddSeekPos(0,140,178)
	    AI:AddSeekPos(0,134,178)
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		
		if (( PosX == 65 ) and ( PosY == 197 )) then
			AI:ScreenText("Thank you! I am Talbeau. I used to preside over various ceremonies for Okula.",2)
			AI:SetAIState(7)
			
		elseif (( PosX == 67 ) and ( PosY == 100 )) then
			AI:ScreenText("Hmm... locked? We used to keep the key... ",2)
			AI:SetArray(2,1)
			AI:SetAIState(7)
			
		elseif (( PosX == 67 ) and ( PosY == 84 )) then--?????
			AI:ScreenText("Hold still. You hear that...?",2)
			AI:SetTimer(5,7000,1)
			AI:SetAIState(7)
			
		elseif (( PosX == 99 ) and ( PosY == 84 )) then
			
		elseif (( PosX == 99 ) and ( PosY == 106 )) then
			AI:ScreenText("Hmm? I hear it again...",2)
			say2 = AI:GetArray(2)
			 if say2 == 2 then
			 	AI:SetTimer(3,6000,1)
			 	AI:SetArray(2,3)
			 end
			AI:SetAIState(7)
			
		elseif (( PosX == 131 ) and ( PosY == 106 )) then
			AI:ScreenText("You must open the Final Door if you wish to confront Okula.",2)
			
		elseif (( PosX == 131 ) and ( PosY == 137 )) then
			AI:ScreenText("This is the Alchemy Room. I can mix you up something good!",2)
			AI:OpenMapMask(3)
		elseif (( PosX == 134 ) and ( PosY == 178 )) then
			AI:ScreenText("Here, take this. It's the least I can do.",2)
			AI:AddNPC( 2184 )
			AI:Exit()
		end
	end
	
	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
    	AI:ScreenText("Talbeau has been recaptured. Try again!",2)
    	AI:AddNPC(2139)
	end

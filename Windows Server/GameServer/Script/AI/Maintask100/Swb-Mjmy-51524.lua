	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2010/02/24
	--		Author:???
	--		Class:	.Lua
	--		AIName:Swb-Mjmy-51524.lua
	--		Remark:??
	----------------------------------------------------
	
	
	function Event_OnTimer( nAI, nIndex, nCount)
		
		local AI = GetMonsterAI(nAI)
		if nIndex == 0 then
		-- 
			a = AI:GetArray(2)
			if a == 0 then
				AI:Say("Hello, young man, we meet again.")
				AI:SetArray(2,1)
			elseif a == 1 then
				AI:Say("I know you want to get fragments of the Weeping Wall, but......")
				AI:ScreenText("",2)
				AI:SetArray(2,2)
			elseif a == 2 then
				AI:Say("But people whose heart is not purified, haven't defeated the sin of their heart, can't gain gods' favor.")
				AI:SetArray(2,3)
			elseif a == 3 then
			  AI:Say("Follow me, firm your faith first, then......")
			  AI:SetAIState(0)
				AI:SetArray(2,4)
			elseif a == 4 then
			   	AI:Say("Then, get rid of the sin in your heart.")
			    AI:SetArray(2,5)
			end
		end
		if nIndex == 1 then
		-- 
			a = AI:GetArray(3)
			if a == 0 then
				AI:Say("Stare at this large Cross......under guidance of the Cross, don't resist......")
				AI:PlayEffect("skill\\Common\\Xpjihuo_jinse\\keep\\tx_Xpjihuo_jinse_keep.ini")
				AI:SetArray(3,1)
			elseif a == 1 then
				AI:Say("Follow me.")
				AI:SetAIState(0)
				AI:SetArray(3,2)
			end
		end
		
		if nIndex == 2 then
		-- 
			a = AI:GetArray(4)
			if a == 0 then
				AI:Say("Your sin will be taken away from your soul here, firm your faith, go to fight.")
				AI:SetArray(4,1)
			elseif a == 1 then
					AI:SummonMonsterByPos( 51525 , 183 , 81 )
					AI:AddNPC(547)
			  	AI:Exit() 
			    AI:SetArray(4,2)
			end
		end
		
	end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
			
    end
		
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	    
	    AI:AddSeekPos(253,186,87)
	    AI:AddSeekPos(253,183,112)
	    AI:AddSeekPos(253,183,92)
	    
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		
		if (( PosX == 186 ) and ( PosY == 87 )) then
			AI:SetAIState(7)
			AI:SetTimer(0,5000,6)
		elseif (( PosX == 183 ) and ( PosY == 112 )) then
			AI:SetAIState(7)
			AI:SetTimer(1,5000,3)
		elseif (( PosX == 183 ) and ( PosY == 92 )) then
			AI:SetAIState(7)
			AI:SetTimer(2,5000,3)
		end
	end
	
	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
    	
	end
	
	
--??
----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012/09
--		Author:???
--		TaskName:?-????-????-?
--		TaskID:32293-PresentRabbit.lua
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		local Posx = AI:GetPosX()
		local Posy = AI:GetPosY()
		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
				AI:ScreenText("Mid-Autumn Jaden Rabbit: happy Mid-Autumn Day! I'm starting to sending gifts now!",2)
--				AI:UpdateSeekPath(1,2,1)
				AI:UpdateSeekPath(1)
				AI:PlayEffect("common\\huodong\\tx_zhounianyanhua2.ini")
	    	for time = 1, 6, 1 do
	    		Dir = math.random(1,8)
	    		PosX,PosY = math.random(Posx-8,Posx+8),math.random(Posy-8,Posy+8)
	    		AI:SummonMonsterByPos(32294,PosX,PosY,Dir)
	    	end
	    	AI:SetServerValue(124, Times+1 )
				AI:SetArray(1,2)	
				AI:SetArray(2,1)
				AI:SetTimer(2,20000,16)	
			end
			
		end--??????

		
		if nIndex == 2 then--??1?? ????
			a = AI:GetArray(2)
			if a <= 14 then
				AI:ScreenText("Mid-Autumn Jaden Rabbit: Bunny, come out and send gifts!",2)
				AI:Say("Bunny, come out and send gifts!")
				AI:PlayEffect("common\\huodong\\tx_zhounianyanhua2.ini")
	    	for time = 1, 6, 1 do
	    		Dir = math.random(1,8)
	    		PosX,PosY = math.random(Posx-6,Posx+6),math.random(Posy-6,Posy+6)
	    		AI:SummonMonsterByPos(32294,PosX,PosY,Dir)
	    	end
	    	AI:SetServerValue(124, Times+1 )
	    	AI:SetArray(2,a+1)
	    end
	    if a >= 15 then
	   		AI:PlayEffect("common\\huodong\\tx_zhounianyanhua2.ini")
	   		AI:ScreenText("Mid-Autumn Jaden Rabbit: the Mid-Autumn Gifts-Giving is finished now. Thanks for joining us!",2)
	   		AI:Say("The Mid-Autumn Gifts-Giving is finished now. Thanks for joining us!")
	   		AI:SetServerValue(124, Times+1 )
				AI:SetArray(2,a+1)   	
	    	AI:Exit()
			end

		end--??1??end		
		



						
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
			Times = AI:GetServerValue(124)
--			AI:Say("GUID:04780000005"..tostring(Times))
			if Times >= 16 then
				AI:Exit()
			end	

 			a = AI:GetArray(1)
			if a == 0 then --?????,????,????
				AI:SetTimer(1,1000,1)
				AI:SetArray(1,1)
		    AI:SetArray(9,0)
				AI:Say("Happy Mid-Autumn Day!")
			end

	end--functionEvent_ThinkingEND
-----------------------------------------------------------------------------	thinking end
			
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		local PosX = AI:GetPosX()
		local PosY = AI:GetPosY()		
		
		if (( PosX == 129) and ( PosY == 183 )) then	
--			AI:UpdateSeekPath(1,2,1)
			
		end		
			
	end	
	
	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
				
		if nIndex == 1 then
			AI:AddSeekPos(mapid,127,204)
			AI:AddSeekPos(mapid,135,216)
			AI:AddSeekPos(mapid,149,226)
			AI:AddSeekPos(mapid,173,207)
			AI:AddSeekPos(mapid,172,190)
			AI:AddSeekPos(mapid,191,186)
			AI:AddSeekPos(mapid,217,184)
			AI:AddSeekPos(mapid,217,159)
			AI:AddSeekPos(mapid,201,159)
			AI:AddSeekPos(mapid,196,184)
			AI:AddSeekPos(mapid,170,190)
			AI:AddSeekPos(mapid,168,209)
			AI:AddSeekPos(mapid,149,225)
			AI:AddSeekPos(mapid,134,216)
			AI:AddSeekPos(mapid,128,204)
			AI:AddSeekPos(mapid,128,186)
			----1-----
			AI:AddSeekPos(mapid,127,204)
			AI:AddSeekPos(mapid,135,216)
			AI:AddSeekPos(mapid,149,226)
			AI:AddSeekPos(mapid,173,207)
			AI:AddSeekPos(mapid,172,190)
			AI:AddSeekPos(mapid,191,186)
			AI:AddSeekPos(mapid,217,184)
			AI:AddSeekPos(mapid,217,159)
			AI:AddSeekPos(mapid,201,159)
			AI:AddSeekPos(mapid,196,184)
			AI:AddSeekPos(mapid,170,190)
			AI:AddSeekPos(mapid,168,209)
			AI:AddSeekPos(mapid,149,225)
			AI:AddSeekPos(mapid,134,216)
			AI:AddSeekPos(mapid,128,204)
			AI:AddSeekPos(mapid,128,186)
			----2-----
			AI:AddSeekPos(mapid,127,204)
			AI:AddSeekPos(mapid,135,216)
			AI:AddSeekPos(mapid,149,226)
			AI:AddSeekPos(mapid,173,207)
			AI:AddSeekPos(mapid,172,190)
			AI:AddSeekPos(mapid,191,186)
			AI:AddSeekPos(mapid,217,184)
			AI:AddSeekPos(mapid,217,159)
			AI:AddSeekPos(mapid,201,159)
			AI:AddSeekPos(mapid,196,184)
			AI:AddSeekPos(mapid,170,190)
			AI:AddSeekPos(mapid,168,209)
			AI:AddSeekPos(mapid,149,225)
			AI:AddSeekPos(mapid,134,216)
			AI:AddSeekPos(mapid,128,204)
			AI:AddSeekPos(mapid,128,186)												
		end
		
		if nIndex == 2 then
--			AI:AddSeekPos(mapid,127,204)
--			AI:AddSeekPos(mapid,135,216)
--			AI:AddSeekPos(mapid,149,226)
--			AI:AddSeekPos(mapid,173,207)
--			AI:AddSeekPos(mapid,172,190)
--			AI:AddSeekPos(mapid,191,186)
--			AI:AddSeekPos(mapid,217,184)
--			AI:AddSeekPos(mapid,217,159)
--			AI:AddSeekPos(mapid,201,159)
--			AI:AddSeekPos(mapid,196,184)
--			AI:AddSeekPos(mapid,170,190)
--			AI:AddSeekPos(mapid,168,209)
--			AI:AddSeekPos(mapid,149,225)
--			AI:AddSeekPos(mapid,134,216)
--			AI:AddSeekPos(mapid,128,204)
--			AI:AddSeekPos(mapid,129,183)			
		end		
	end
			
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		AI:DelTimer(1)
		AI:DelTimer(2)

	end
	--****************************************
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/07
	--		Author:???
	--		Class: Lua
	--		AIName:Monster-51286.lua
	--		Backup:?????
	--****************************************


function Event_OnTimer(nAI,nIndex, nCount)
        local AI = GetMonsterAI(nAI)
        
      	if nIndex == 0 then
		v = AI:HaveAttackTarget()
		if v == false then
			AI:SetAIState( 0 )
    end
        end
        
        if nIndex == 1 then
		if nCount == 1 then
			AI:PlayAction( "specialidle" , 1000 , 0 )
			AI:Say("My lover Eurydice was snared by the Harpy Queen, was trapped in this dark land. Even I couldn't do anything. But you managed to release her soul!")
		end
		
		if nCount == 2 then
			AI:PlayAction( "specialidle" , 1000 , 0 )
			AI:Say("The dark judge, Latamantis, has been taken over by the darkness and evil within him. He plans on destroying the whole Pit of Reckoning, but we must prevent him.")
		end
		
		if nCount == 3 then
			AI:PlayAction( "specialidle" , 1000 , 0 )
			AI:Say("Through Gate of Judge can reach Latamantis's area, but I seem to feel some hidden dangers on the way to Gate of Judge. Please protect me.")
		end
        end
        
        if nIndex == 2 then
		if nCount == 1 then
			AI:PlayAction( "specialidle" , 1000 , 0 )
			AI:Say("These puppets are controlled by Falia. Our best bet is to pass the Judgment Gate.")
		end
		
		if nCount == 2 then
			AI:PlayAction( "specialidle" , 1000 , 0 )
			AI:Say("I will never forget what Falia did to Eurydice, and all the suffering she endured. I can't even forgive the gods. However, the most important thing is to stop Latamantis.")
		end
        end
        
        if nIndex == 3 then
		if nCount == 1 then
			AI:PlayAction( "specialidle" , 1000 , 0 )
			AI:Say("A long time ago, I begged Hades to revive Eurydice. He made my dream come true. But Falia became jealous of that kindness and caused this tragedy.")
		end
		
		if nCount == 2 then
			AI:PlayAction( "specialidle" , 1000 , 0 )
			AI:Say("Maybe my request was wrong. The dead should not be revived. Maybe being trapped in the Pit of Reckoning forever is upsetting the natural balance?")
		end
        end
        
        if nIndex == 4 then
		if nCount == 1 then
			AI:PlayAction( "specialidle" , 1000 , 0 )
			AI:Say("The Judgment Gate is closed, Falia has cursed it. If she is not defeated, this gate will remain closed forever.")
		end
		
		if nCount == 2 then
			AI:PlayAction( "specialidle" , 1000 , 0 )
			AI:Say("I feel Latamantis being consumed by the darkness. We must prevent this dark power from spreading and defeat Harpy Queen Falia.")
		end
        end
        
        
end


function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(1)
        if a == 0 then
        	AI:SetTimer( 1 , 2000 , 3 )
        	AI:SetArray( 1 , 1 )
        end
	
	
end

function Event_ReadSeekPos(nAI)
    	local AI = GetMonsterAI(nAI)
    	
    	--????????
    	AI:AddSeekPos( 228 , 129 , 216 )
    	AI:AddSeekPos( 228 , 150 , 204 )
    	AI:AddSeekPos( 228 , 176 , 192 )
    	AI:AddSeekPos( 228 , 188 , 185 )
end

--?????????
function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
	local AI = GetMonsterAI(nAI)
	
			mapid = AI:GetMapID()
			moshi = AI:GetEctypeVarShort(mapid,38)
    
    	if (( PosX == 129 ) and ( PosY == 216 )) then
        	AI:Say("Wait, something is approaching!")
        if moshi == 0 then
        	AI:SummonMonsterByPos( 52637 , 133 , 209 )
        	AI:SummonMonsterByPos( 52637 , 133 , 211 )
        	AI:SummonMonsterByPos( 52637 , 134 , 214 )
        	AI:SummonMonsterByPos( 52637 , 135 , 216 )
        	AI:SummonMonsterByPos( 52637 , 137 , 212 )
        	AI:SetTimer( 0 , 3000 , 65535 )
        	AI:SetTimer( 2 , 2000 , 2 )
        	AI:SetAIState( 7 )
        else       	
        	AI:SummonMonsterByPos( 51287 , 133 , 209 )
        	AI:SummonMonsterByPos( 51287 , 133 , 211 )
        	AI:SummonMonsterByPos( 51287 , 134 , 214 )
        	AI:SummonMonsterByPos( 51287 , 135 , 216 )
        	AI:SummonMonsterByPos( 51287 , 137 , 212 )
        	AI:SetTimer( 0 , 3000 , 65535 )
        	AI:SetTimer( 2 , 2000 , 2 )
        	AI:SetAIState( 7 )
        end
    	end
    	if (( PosX == 150 ) and ( PosY == 204 )) then
        	AI:Say("Caution, the evil souls will appear soon!")
        if moshi == 0 then
        	AI:SummonMonsterByPos( 52637 , 151 , 200 )
        	AI:SummonMonsterByPos( 52637 , 153 , 205 )
        	AI:SummonMonsterByPos( 52637 , 148 , 200 )
        	AI:SummonMonsterByPos( 52637 , 151 , 206 )
        	AI:SummonMonsterByPos( 52637 , 147 , 206 )
        	AI:SetTimer( 0 , 3000 , 65535 )
        	AI:SetTimer( 3 , 2000 , 2 )
        	AI:SetAIState( 7 )
        else        	        
        	AI:SummonMonsterByPos( 51287 , 151 , 200 )
        	AI:SummonMonsterByPos( 51287 , 153 , 205 )
        	AI:SummonMonsterByPos( 51287 , 148 , 200 )
        	AI:SummonMonsterByPos( 51287 , 151 , 206 )
        	AI:SummonMonsterByPos( 51287 , 147 , 206 )
        	AI:SetTimer( 0 , 3000 , 65535 )
        	AI:SetTimer( 3 , 2000 , 2 )
        	AI:SetAIState( 7 )
        end
    	end
    	
    	if (( PosX == 176 ) and ( PosY == 192 )) then
        	AI:Say("Protect me, we have almost reached Shiny Bridge!")
        if moshi == 0 then
        	AI:SummonMonsterByPos( 52637 , 174 , 188 )
        	AI:SummonMonsterByPos( 52637 , 179 , 189 )
        	AI:SummonMonsterByPos( 52637 , 178 , 195 )
        	AI:SummonMonsterByPos( 52637 , 180 , 192 )
        	AI:SummonMonsterByPos( 52637 , 172 , 192 )
        	AI:SetTimer( 0 , 3000 , 65535 )
        	AI:SetTimer( 4 , 2000 , 2 )
        	AI:SetAIState( 7 )
        else      
        	AI:SummonMonsterByPos( 51287 , 174 , 188 )
        	AI:SummonMonsterByPos( 51287 , 179 , 189 )
        	AI:SummonMonsterByPos( 51287 , 178 , 195 )
        	AI:SummonMonsterByPos( 51287 , 180 , 192 )
        	AI:SummonMonsterByPos( 51287 , 172 , 192 )
        	AI:SetTimer( 0 , 3000 , 65535 )
        	AI:SetTimer( 4 , 2000 , 2 )
        	AI:SetAIState( 7 )
        end
    	end
    	
    	if (( PosX == 188 ) and ( PosY == 185 )) then
        	AI:Say("Thank you for escorting me this far. the rest of the way is more dangerous so I will wait for you here.")
        	AI:ScreenText("Thank you for escorting me this far. the rest of the way is more dangerous so I will wait for you here.",1)
        if moshi == 0 then
        	AI:SummonMonsterByPos( 52606 , 211 , 160 )
        	AI:SummonMonsterByPos( 52606 , 213 , 161 )
        	AI:SummonMonsterByPos( 52606 , 215 , 163 )
        	AI:SummonMonsterByPos( 52606 , 209 , 162 )
        	AI:SummonMonsterByPos( 52606 , 211 , 163 )
        	AI:SummonMonsterByPos( 52606 , 213 , 165 )
        	AI:SummonMonsterByPos( 52606 , 207 , 165 )
        	AI:SummonMonsterByPos( 52606 , 209 , 166 )
        	AI:SummonMonsterByPos( 52606 , 211 , 167 )
        	AI:SummonMonsterByPos( 52606 , 208 , 167 )
        else        	
        	AI:SummonMonsterByPos( 51276 , 211 , 160 )
        	AI:SummonMonsterByPos( 51276 , 213 , 161 )
        	AI:SummonMonsterByPos( 51276 , 215 , 163 )
        	AI:SummonMonsterByPos( 51276 , 209 , 162 )
        	AI:SummonMonsterByPos( 51276 , 211 , 163 )
        	AI:SummonMonsterByPos( 51276 , 213 , 165 )
        	AI:SummonMonsterByPos( 51276 , 207 , 165 )
        	AI:SummonMonsterByPos( 51276 , 209 , 166 )
        	AI:SummonMonsterByPos( 51276 , 211 , 167 )
        	AI:SummonMonsterByPos( 51276 , 208 , 167 )
        end
        	
        	--?????,???NPC
        	AI:AddNPC( 2054 )
        	AI:Exit()
    	end
    	
end

function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)
    	
    	--if ((PosX==164) and (PosY==196)) then
    	--	--????????NPC
    	--	AddNPC( 2054 )
    	--	AI:Exit()
    	--else
    	--	--????????NPC
    	--end
    	AI:ScreenText("Orpheus is defeated, you must try escorting again.",1)
    	AI:AddNPC( 2053 )
end
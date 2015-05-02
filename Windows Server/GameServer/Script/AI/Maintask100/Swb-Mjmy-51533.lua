	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/07
	--		Author:???
	--		Class:	.Lua
	--		AIName:Swb-Mjmy-51533.lua
	--		Remark:????
	----------------------------------------------------
	
function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		if nIndex == 0 then
		--
		a = AI:GetArray(2)
			if a == 0 then
				AI:Say("Judge, I hope you can forgive my mistake.")
				AI:SetArray(2,1)
			elseif a == 1 then
			   	AI:Say("How can I change the order of the netherworld to suit my desires?")
			    AI:SetArray(2,2)
			elseif a == 2 then
			   	AI:Say("I apologize, I hope you can forgive me.")
			    AI:SetArray(2,3)
			  	AI:Exit()
			end
    end
	end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    a = AI:GetArray(1)
    if a == 0 then
	    AI:SetTimer(0,5000,20)
	    AI:SetArray( 1 , 1 )
    end
end

function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
end

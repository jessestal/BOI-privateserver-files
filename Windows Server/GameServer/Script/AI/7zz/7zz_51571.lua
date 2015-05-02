--?? 

function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	a = AI:GetArray(1)
        if a == 0 then
        	AI:AddSkill(2018,1)
        	AI:UseSkill(2018,1)
        	AI:SetArray( 1 , 1 )
        	HP = AI:GetHP()
        	HPMAX = AI:GetHPMax()
        	losehp = HPMAX * 0.7
            AI:LoseHPInstant(losehp)
            AI:ScreenText( "Mistress' death makes Lust feel weak, go to kill him.", 2 )
            AI:Say("What have you done? I must kill you, because you killed her.")
        end
end 

function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)
end
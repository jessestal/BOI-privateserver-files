	----------------------------------------------------
	--		Copyright£∫PERFECT WORLD
	--		Modified£∫2011/6/28
	--		Author£∫÷ÏΩ®≥º
	--		Class:	.lua
	--		AIName£∫
	--		Remark£∫
	----------------------------------------------------

function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)
		posx = AI:GetPosX()
		posy = AI:GetPosY()
		a = AI:GetRand(99)
			if a < 40 then
			AI:PlayAction("skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" , 0, 1)
			SummonMonsterByPos(30238, posx, posy,0 )
			end
	end
function OnDead(){
			//��ҵȼ�
			$level = GetPlayerInfo( -1, "level" )
			
			//���齱����ʽ��(�ȼ�*50)*(6+�ȼ�/15*2)*�ȼ�*(�ȼ�/10+7)/100/50
			$a = $level * 50
			$b = $level / 15
			$c = $b * 2
			$d = $c + 6
			$e = $a * $d
			$f = $e * $level
			$g = $level / 10
			$h = $g + 7
			$i = $f * $h
			$exp = $i / 5000
			
			AddPlayerInfo( -1, "exp", $exp )
}
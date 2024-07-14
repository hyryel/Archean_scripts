function @getDefaultSwitch() : text
	var $d = ""
	$d.width = 40
	$d.height = char_h
	$d.onColor = green
	$d.offColor = red
	$d.state = 0
	return $d

function @toggle($switch:text, $top:number, $left:number) : text
	if(@switch($top, $left, $switch.state))
		$switch.state = !$switch.state
	return $switch

function @switch($top:number, $left:number, $state:number) : number
	var $width = 40
	var $height = char_h
	var $result = button_rect($left, $top, $left+$width, $top+$height, brown)
	if($state <= 0)
		draw_rect($left+2, $top+2, $left + ($width/5), $top + $height -2, red, red)
		@tinyText($left+($width/5)+4,$top+1, white, "off")

	else
		draw_rect($left+$width-2, $top+2, $left + ($width -2) - ($width/5), $top + $height -2, green, green))
		@tinyText($left+($width/5)+4,$top+1, white, "on")
	return $result
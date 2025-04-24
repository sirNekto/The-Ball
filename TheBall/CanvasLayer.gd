extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

var cnt = 0
func countet():
	cnt += 1
	$Label2.text = str(cnt)
	pass
	
func getCnt() -> int:
	return cnt
  
var bdf = 0
func _physics_process(delta):
	
	if bdf != -1:
		bdf += 1
		if bdf > 300:
			$Label3.visible = false
			bdf = -1

extends Node2D

var selected_save_path
var ultima_fase_liberada = 1
var fase_atual
var num_dialogo_atual

func passar_fase():
	if fase_atual == ultima_fase_liberada:
		# Jogador acabou de passar uma nova fase
		ultima_fase_liberada += 1
		var dados_slot = {
			"fase": ultima_fase_liberada
		}
		
		var file = File.new()
		file.open(selected_save_path, File.WRITE)
		file.store_var(dados_slot)
		file.close()

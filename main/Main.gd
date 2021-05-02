extends Node2D

# Classe pour le typage
const Enemy = preload("res://enemy/Enemy.gd")

# Scène à instancier
const enemy_scene = preload("res://enemy/Enemy.tscn")

# Node dans la scène Main
onready var player = $Player

# Called when the node enters the scene tree for the first time.
func _ready():
	var enemy := enemy_scene.instance() as Enemy
	enemy.position.x = 238
	enemy.position.y = 92
	$Enemies.add_child(enemy)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

# Appelée à chaque "frame" de mise à jour du moteur physique
func _physics_process(_delta):
	# Exemple : vérifier qu'un bouton est enfoncé à chaque frame 
	if Input.is_action_pressed("right"):
		pass

# Fonction appelée lors d'un input utilisateur
func _input(event):
	if event.is_action_pressed("space"):
		pass

/// @description Restart game


instance_destroy(player)
instance_destroy(gui)


instance_destroy(attack_deck)
instance_destroy(special_deck)

ds_map_destroy(this_run_seen_room_set)
clear_instances()

wings_cleared = [false, false, false, false]
game_setup = false
tutorial_setup = false
floor_ = 1

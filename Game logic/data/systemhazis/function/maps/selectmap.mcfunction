#Current map
execute if score Map System matches 0 run title @p actionbar {"color":"green", "text":"Map: Random"}
execute if score Map System matches 1 run title @p actionbar {"color":"green", "text":"Map: Plains"}
execute if score Map System matches 2 run title @p actionbar {"color":"green", "text":"Map: Modern art"}
execute if score Map System matches 3 run title @p actionbar {"color":"green", "text":"Map: Levels"}
execute if score Map System matches 4 run title @p actionbar {"color":"green", "text":"Map: Mountain"}
execute if score Map System matches 5 run title @p actionbar {"color":"green", "text":"Map: Stone bits"}
execute if score Map System matches 6 run title @p actionbar {"color":"green", "text":"Map: Desert"}
execute if score Map System matches 7 run title @p actionbar {"color":"green", "text":"Map: Rooms"}
execute if score Map System matches 8 run title @p actionbar {"color":"green", "text":"Map: Dimensional trees"}
execute if score Map System matches 9 run title @p actionbar {"color":"green", "text":"Map: City"}
execute if score Map System matches 10 run title @p actionbar {"color":"green", "text":"Map: End tower"}

#Tellraw
tellraw @p [{"color":"green","text":"Select map:\n "},{"click_event":{"action":"run_command","command":"/function systemhazis:maps/mapselected/mapselected0"},"text":"[Random] "},{"click_event":{"action":"run_command","command":"function systemhazis:maps/mapselected/mapselected1"},"text":"[Plains] "},{"click_event":{"action":"run_command","command":"function systemhazis:maps/mapselected/mapselected2"},"text":"[Modern art] "},{"click_event":{"action":"run_command","command":"function systemhazis:maps/mapselected/mapselected3"},"text":"[Levels] "},{"click_event":{"action":"run_command","command":"function systemhazis:maps/mapselected/mapselected4"},"text":"[Mountain] "},{"click_event":{"action":"run_command","command":"function systemhazis:maps/mapselected/mapselected5"},"text":"[Stone bits] "},{"click_event":{"action":"run_command","command":"function systemhazis:maps/mapselected/mapselected6"},"text":"[Desert] "},{"click_event":{"action":"run_command","command":"function systemhazis:maps/mapselected/mapselected7"},"text":"[Rooms] "},{"click_event":{"action":"run_command","command":"function systemhazis:maps/mapselected/mapselected8"},"text":"[Dimensional trees] "},{"click_event":{"action":"run_command","command":"function systemhazis:maps/mapselected/mapselected9"},"text":"[City] "},{"click_event":{"action":"run_command","command":"function systemhazis:maps/mapselected/mapselected10"},"text":"[End tower]"}]
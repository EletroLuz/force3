-- revive.lua
local revive = {}

-- Função para verificar se o jogador está morto e revivê-lo
function revive.check_and_revive()
    local local_player = get_local_player()
    if local_player and local_player:is_dead() then
        revive_at_checkpoint()
        console.print("Player revived at checkpoint.")
        -- Teleporta para a cidade inicial e reinicia os waypoints
        teleport_to_waypoint(helltide_tps[current_city_index].id)
        ni = 1 -- Reinicia o índice dos waypoints
        is_moving = true -- Reinicia o movimento
    end
end

return revive
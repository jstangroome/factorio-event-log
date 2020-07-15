function logEvent(event, event_name, ...)
  local args = {...}
  local seconds = math.floor(event.tick / 60)

  local line = ':tick=' .. event.tick .. ':seconds=' .. seconds .. ':event=' .. event_name .. ':player='
  if event.player_index then
    line = line .. game.players[event.player_index].name
  end
  line = line .. ':'

  for _, value in ipairs(args) do
    line = line .. value .. ':'
  end

  log(line)
end

script.on_event(defines.events.on_rocket_launched,
  function(event)
    logEvent(event, 'on_rocket_launched')
  end
)

script.on_event(defines.events.on_research_started,
  function(event)
    logEvent(event, 'on_research_started', event.research.name)
  end
)

script.on_event(defines.events.on_research_finished,
  function(event)
    logEvent(event, 'on_research_finished', event.research.name)
  end
)

script.on_event(defines.events.on_player_crafted_item,
  function(event)
    logEvent(event, 'on_player_crafted_item', event.item_stack.name)
  end
)

script.on_event(defines.events.on_built_entity,
  function(event)
    logEvent(event, 'on_built_entity', event.created_entity.name)
  end
)

script.on_event(defines.events.on_train_created,
  function(event)
    logEvent(event, 'on_train_created')
  end
)

-- TODO https://lua-api.factorio.com/latest/events.html#on_robot_built_entity

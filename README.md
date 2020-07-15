# Factorio event-log Mod

Writes to the [Factorio log file](https://wiki.factorio.com/Log_file) whenever events occur that might be useful for automated speedrun timing.

Each event is logged with the game time in ticks and seconds, the name of the event as per the Factorio API, the name of the player if available for the event, and extra event-specific parameters. For example the `on_research_completed` event includes the name of the technology researched as an extra parameter.

The log line format is designed to be parseable with any competent text-processing tools.




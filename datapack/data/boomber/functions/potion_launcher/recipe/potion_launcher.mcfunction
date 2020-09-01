#> boomber:potion_launcher/recipe/potion_launcher

clear @s knowledge_book 1
loot give @s loot boomber:potion_launcher/potion_launcher
clear @s knowledge_book 0

recipe take @s boomber:potion_launcher/potion_launcher
advancement revoke @s only boomber:potion_launcher/recipe/potion_launcher
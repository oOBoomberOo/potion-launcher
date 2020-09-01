#> boomber:potion_launcher/recipe/potion_bag

clear @s knowledge_book 1
loot give @s loot boomber:potion_launcher/potion_bag
clear @s knowledge_book 0

recipe take @s boomber:potion_launcher/potion_bag
advancement revoke @s only boomber:potion_launcher/recipe/potion_bag
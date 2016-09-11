data:extend({
  {
    type = "technology",
    name = "automobilism",
    icon = "__base__/graphics/technology/automobilism.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "car"
      },
    },
    prerequisites = {"logistics-2", "engine"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 1}
      },
      time = 20
    },
    order = "e-b"
  }
})

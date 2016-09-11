data:extend({
  {
    type = "technology",
    name = "orbital-capsule",
    icon = "__base__/graphics/technology/rocket-silo.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "orbital-capsule"
      },
    },
    prerequisites = {"rocket-silo"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"alien-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 60
    },
    order = "k-b"
  }
})

def map_to_dashes(beeConfig):
  updatedBeeConfig = {}
  for key in dir(beeConfig):
    updatedBeeConfig[key.replace("_", "-")] = beeConfig[key]
  end
  return updatedBeeConfig
end
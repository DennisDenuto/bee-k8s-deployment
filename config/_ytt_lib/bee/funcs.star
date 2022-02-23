
#@ Create a default fully qualified app name.
#@ We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
def safe_name(name):
  return name[0:63].strip()
end

def bee_image(image):
  return "{}:{}".format(image.repository, image.tag)
end

def map_to_dashes(beeConfig):
  updatedBeeConfig = {}
  for key in dir(beeConfig):
    updatedBeeConfig[key.replace("_", "-")] = beeConfig[key]
  end
  return updatedBeeConfig
end
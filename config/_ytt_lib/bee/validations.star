load("@ytt:data", "data")
load("@ytt:assert", "assert")

data.values.beeConfig.password != '' or assert.fail("provide a bee config password")

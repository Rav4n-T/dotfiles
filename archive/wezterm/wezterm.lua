local Config = require('config')

return Config:init()
   :append(require('config.appearance'))
   :append(require('config.keybind'))
   :append(require('config.fonts')).options

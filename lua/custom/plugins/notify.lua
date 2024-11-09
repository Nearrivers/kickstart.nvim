-- Plugin des popups

local notify = require 'notify'

notify.setup {
  notify._config(),
  background_colour = '#000000',
  fps = 60,
  timeout = 3000,
  stages = 'fade',
}

return {}


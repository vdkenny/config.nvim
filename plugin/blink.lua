local pkg = require('blink.cmp')

pkg.setup({ keymap = { preset = 'super-tab' } })
pkg.build():pwait()
pkg.setup()

local status, db = pcall(require, "dashboard")
local utils = require('utils')
if (not status) then return end

db.custom_header = {
  [[                              ]],
  [[     ,     ,                  ]],
  [[     |\."./|                  ]],
  [[    /       \                 ]],
  [[   /  _   _  \   ______       ]],
  [[   \==  Y  ==/"'`      `.     ]],
  [[   /`-._^_.-'\     ,-  . \    ]],
  [[  /     `     \   /     \ \   ]],
  [[  \  \.___./  /_ _\     / /   ]],
  [[   `, \   / ,'  (,-----' /    ]],
  [[     ""' '""     '------'     ]],
  [[                              ]]
}

db.custom_center = {
  {
    icon = "  ",
    desc = "Find  File                              ",
    action = "<Space>ff",
    shortcut = "<Space> f f",
  },
  {
    icon = "  ",
    desc = "Recently opened files                   ",
    action = "Leaderf mru --popup",
    shortcut = "<Space> f r",
  },
  {
    icon = "    ",
    desc = "New file                                ",
    action = "enew",
    shortcut = " e           ",
  },
}

local custom = {
  {
    [["You are not doing it wrong if no one knows what you are doing."]],
    [[                                       - Sun Tzu, The Art of War]]
  },

  --{[["good phrase"]],[[- person, where]]},
}

db.custom_footer = utils.rand_element(custom)

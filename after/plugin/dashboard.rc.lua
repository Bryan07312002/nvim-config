local status, db = pcall(require, "dashboard")
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
    action = "Leaderf file --popup",
    shortcut = "<Space> f f",
  },
  {
    icon = "  ",
    desc = "Recently opened files                   ",
    action = "Leaderf mru --popup",
    shortcut = "<Space> f r",
  },
  {
    icon = "  ",
    desc = "New file                                ",
    action = "enew",
    shortcut = "e           ",
  },
}

db.custom_footer = {
  [["You are not doing it wrong if no one knows what you are doing."]],
  [[                                       - Sun Tzu, The Art of War]]
}

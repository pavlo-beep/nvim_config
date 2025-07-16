return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    local dashboard = require "alpha.themes.dashboard"

    -- Set your custom header
    dashboard.section.header.val = {
      "██╗  ██╗██╗ ██████╗ ██╗  ██╗██╗      █████╗ ███╗   ██╗██████╗ ███████╗██████╗ ",
      "██║  ██║██║██╔════╝ ██║  ██║██║     ██╔══██╗████╗  ██║██╔══██╗██╔════╝██╔══██╗",
      "███████║██║██║  ███╗███████║██║     ███████║██╔██╗ ██║██║  ██║█████╗  ██████╔╝",
      "██╔══██║██║██║   ██║██╔══██║██║     ██╔══██║██║╚██╗██║██║  ██║██╔══╝  ██╔══██╗",
      "██║  ██║██║╚██████╔╝██║  ██║███████╗██║  ██║██║ ╚████║██████╔╝███████╗██║  ██║",
      "╚═╝  ╚═╝╚═╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ ╚══════╝╚═╝  ╚═╝",
      "             /\\          / ^ \\/^ ^/^  ^  ^ \\/^ \\/  ^ \\                       ",
      "            / ^\\    /\\  / ^  / ^ / ^ ^ ^ ^ ^\\ ^/  ^^^ \\             __        ",
      "           /^   \\  / ^\\/ ^ ^  ^ /  ^  ^  ^ ^ \\/ ^   ^  \\      *   _(  )-( )_  ",
      "          /  ^ ^ \\/^  ^\\ ^ ^ ^   ^  ^   ^  ____ ^   ^   \\    /|\\ (_        _) ",
      "         / ^ ^  ^ \\ ^  _\\__________________|  |______^ ^ \\  /||o\\  (_)-(__)   ",
      "        / ^^  ^ ^ ^\\  /______________________________\\^ ^ \\/|o|||\\            ",
      "       /  ^  ^^ ^ ^  /________________________________\\ ^ /|||||o|\\           ",
      "      /^ ^  ^ ^^  ^    ||___|___||||||||||||__|___|||  ^ /||o||||||\\          ",
      "     / ^   ^   ^    ^  ||___|___||||||||||||__|___||| ^  ^   | |              ",
      "    / ^ ^ ^  ^  ^  ^   ||||||||||||||||||||||||||||||oooooooo| |ooooooooooo   ",
      "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%",
    }

    dashboard.section.buttons.val = {
      dashboard.button("e", "  New File", "<cmd>ene<CR>"),
      dashboard.button("f", "󰈞  Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("r", "  Recent Files", "<cmd>Telescope oldfiles<CR>"),
      dashboard.button("s", "  Restore Session", "<cmd>SessionRestore<CR>"),
      dashboard.button("q", "  Quit", "<cmd>qa<CR>"),
    }

    -- reduces padding above header
    dashboard.config.layout = {
      { type = "padding", val = 2 },
      dashboard.section.header,
      { type = "padding", val = 3 },
      dashboard.section.buttons,
      { type = "padding", val = 1 },
    }

    opts.section = dashboard.section
    opts.config = dashboard.config
  end,
}

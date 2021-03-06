# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.

# Toggle between light and dark theme.
atom.commands.add 'atom-workspace', 'dot-atom:toggle-theme', ->
  activeThemes = atom.themes.getActiveThemeNames()

  if activeThemes[0].indexOf("light") > 0
    atom.config.set("core.themes", ["one-dark-ui", "one-dark-syntax"])
  else
    atom.config.set("core.themes", ["one-light-ui", "one-light-syntax"])

# Close all panes.
#
# Atom's built-in 'pane:close-other-items' is super handy. But sometimes you
# just really want a completely clean slate.
#
# "Shut down all the [panes] on the detention level! ... Shut them all down.
# Hurry!"
atom.commands.add 'atom-workspace', 'dot-atom:close-all-panes', ->
  atom.workspace.getPanes().forEach (pane) ->
    pane.destroy()

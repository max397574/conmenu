local menu = require('conmenu.menu')
local javascript = require('conmenu.javascript')
local worktree = require('conmenu.git-worktree');

return {
  -- User configured
  open = menu.open,
  openCustom = menu.openCustom,
  close = menu.close,

  executeItem = menu.executeItem,
  switchItem = menu.switchItem,

  -- Javascript helpers
  fromNpm = javascript.fromNpm,
  fromLerna = javascript.fromLerna,

  -- Git Worktree helpers
  createWorktree = worktree.createWorktree,
  removeWorktree = worktree.removeWorktree,
  selectWorktree = worktree.selectWorktree,

  -- Used by bindings generated by this script
  executeItemNum = menu.executeItemNum,
}

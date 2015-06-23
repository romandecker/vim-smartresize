SmartResize for VIM
===================

tmux-like resizing for vim splits.

Per default, the resize-functionality for vim splits is nice but not very
intuitive. `tmux` does a better job by providing a more logical approach to
pane resizing. This plugin enables the same functionality for vim splits.

This plugin works best combined with plugins like vim-submode. Here's an 
example of setting up <Leader>w{h,j,k,l} to move the split with submode:

    call submode#enter_with('vresize', 'n', '', '<leader>wj', ':SmartResizeJ<CR>')
    call submode#enter_with('vresize', 'n', '', '<leader>wk', ':SmartResizeK<CR>')
    call submode#leave_with('vresize', 'n', '', '<Esc>')
    call submode#map('vresize', 'n', '', 'j', ':SmartResizeJ<CR>' )
    call submode#map('vresize', 'n', '', 'k', ':SmartResizeK<CR>')

    call submode#enter_with('resize', 'n', '', '<leader>wh', ':SmartResizeH<CR>')
    call submode#enter_with('resize', 'n', '', '<leader>wl', ':SmartResizeL<CR>')
    call submode#leave_with('resize', 'n', '', '<Esc>')
    call submode#map('resize', 'n', '', 'h', ':SmartResizeH<CR>' )
    call submode#map('resize', 'n', '', 'l', ':SmartResizeL<CR>')


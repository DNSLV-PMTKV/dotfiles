local status_ok, comment = pcall(require, "Comment")
if not status_ok then
  return
end

comment.setup ({
    line_mapping = "<C-_>"
})

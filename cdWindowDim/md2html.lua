-- Change local Markdown links into local HTML links for compiled help.
-- External URLs, images, and in-page anchors remain unchanged.
function Link(el)
  local path, suffix = el.target:match("^([^?#]+)(.*)$")
  if path and path:lower():sub(-3) == ".md" then
    el.target = path:sub(1, -4) .. ".html" .. suffix
  end
  return el
end

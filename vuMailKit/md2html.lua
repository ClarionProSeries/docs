-- md2html.lua — rewrite local *.md links to *.html (keeps #fragments)
function Link(el)
  local tgt = el.target
  if tgt:match('^%a+://') or tgt:match('^mailto:') then
    return el
  end
  local path, frag = tgt:match('^(.-)#(.*)$')
  if not path then path = tgt end
  if path:match('%.md$') then
    path = path:gsub('%.md$', '.html')
    el.target = frag and (path .. '#' .. frag) or path
  end
  return el
end

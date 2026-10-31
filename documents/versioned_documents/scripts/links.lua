-- Links to sibling files are dead inside a standalone PDF, keep only their text.
function Link(el)
  if el.target:match('^pdf/') or el.target:match('^wbs/') then
    return el.content
  end
end

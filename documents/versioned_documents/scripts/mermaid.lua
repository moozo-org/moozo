-- Renders ```mermaid blocks to PNG with mermaid-cli, cached in build/ by content hash.
-- MERMAID_NATURAL=1 keeps the diagram at its natural size (used for the one-page WBS PDFs).
local mmdc = os.getenv('MMDC') or 'npx -y -p @mermaid-js/mermaid-cli@11.12.0 mmdc'
local config = '../scripts/mermaid.json'
local scale = 3

local function read(path)
  local f = io.open(path, 'rb')
  local content = f:read('a')
  f:close()
  return content
end

function CodeBlock(el)
  if el.classes[1] ~= 'mermaid' then return nil end

  local name = 'build/mermaid-' .. pandoc.sha1(el.text .. read(config))
  local png = name .. '.png'

  local cached = io.open(png, 'r')
  if cached then
    cached:close()
  else
    local src = io.open(name .. '.mmd', 'w')
    src:write(el.text)
    src:close()
    local ok = os.execute(mmdc .. ' -i ' .. name .. '.mmd -o ' .. png .. ' -c ' .. config .. ' -b white -s ' .. scale .. ' -q')
    if not ok then error('mermaid rendering failed for ' .. name .. '.mmd') end
  end

  local header = read(png):sub(1, 24)
  local w = string.unpack('>I4', header, 17)
  local h = string.unpack('>I4', header, 21)

  local attrs
  if os.getenv('MERMAID_NATURAL') then
    attrs = { width = string.format('%.0fpt', w / scale * 0.75) }
  elseif h / w * 17 > 22 then
    attrs = { height = '22cm' } -- tall diagrams are bounded by the page height
  else
    attrs = { width = '100%' }
  end

  -- the WBS pages are compiled from build/, so their image paths are relative to the project root
  local src = os.getenv('MERMAID_NATURAL') and ('/' .. png) or png
  return pandoc.Para({ pandoc.Image({}, src, '', pandoc.Attr('', {}, attrs)) })
end

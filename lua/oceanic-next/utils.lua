local utils = {}

function utils.load(...)
  local highlights = vim.tbl_extend("force", ...)
  for group, hl in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, hl)
  end
end

function utils.setVars(colors)
  for name, val in pairs(colors) do
    vim.g[name] = val
  end
end

local function round(x)
  return x >= 0 and math.floor(x + 0.5) or math.ceil(x - 0.5)
end

local function hexToRgb(c)
  -- Remove the hash if it exists
  c = c:gsub("#", "")
  if #c ~= 6 then
    error("Invalid c color: " .. c)
  end
  local r = tonumber(c:sub(1, 2), 16)
  local g = tonumber(c:sub(3, 4), 16)
  local b = tonumber(c:sub(5, 6), 16)
  return { r, g, b }
end

local function rgbToHsl(c)
  local r, g, b = unpack(c)
  -- Normalize the RGB values to the range 0-1.
  r = r / 255
  g = g / 255
  b = b / 255

  local max = math.max(r, g, b)
  local min = math.min(r, g, b)
  local h, s, l = 0, 0, (max + min) / 2

  if max == min then
    -- achromatic (grey)
    h = 0
    s = 0
  else
    local d = max - min

    -- Calculate saturation
    if l > 0.5 then
      s = d / (2 - max - min)
    else
      s = d / (max + min)
    end

    -- Calculate hue
    if max == r then
      h = (g - b) / d
      if g < b then
        h = h + 6
      end
    elseif max == g then
      h = (b - r) / d + 2
    elseif max == b then
      h = (r - g) / d + 4
    end
    h = h / 6
  end

  -- Optionally, convert h to degrees instead of a fraction
  h = h * 360

  return { round(h), round(s * 100), round(l * 100) }
end

local function hslToRgb(c)
  local h, s, l = unpack(c)
  h = h / 360
  s = s / 100
  l = l / 100

  local r, g, b

  if s == 0 then
    r, g, b = l, l, l -- achromatic
  else
    local function hue2rgb(p, q, t)
      if t < 0 then
        t = t + 1
      end
      if t > 1 then
        t = t - 1
      end
      if t < 1 / 6 then
        return p + (q - p) * 6 * t
      end
      if t < 1 / 2 then
        return q
      end
      if t < 2 / 3 then
        return p + (q - p) * (2 / 3 - t) * 6
      end
      return p
    end

    local q = l < 0.5 and l * (1 + s) or l + s - l * s
    local p = 2 * l - q
    r = hue2rgb(p, q, h + 1 / 3)
    g = hue2rgb(p, q, h)
    b = hue2rgb(p, q, h - 1 / 3)
  end

  return { round(r * 255), round(g * 255), round(b * 255) }
end

local function rgbToHex(c)
  local r, g, b = unpack(c)
  local function toHex(value)
    local hex = string.format("%02X", math.floor(value))
    return hex
  end

  r, g, b = math.floor(r), math.floor(g), math.floor(b)
  local hex = "#" .. toHex(r) .. toHex(g) .. toHex(b)

  return hex
end

function Clamp(num, lower, upper)
  assert(num and lower and upper, "error: Clamp(num, lower, upper)")
  return math.max(lower, math.min(upper, num))
end
local function blendChannel(c1, c2, t)
  return c1 + t * (c2 - c1)
end
function utils.darken(hex, amount)
  local h, s, l = unpack(rgbToHsl(hexToRgb(hex)))
  l = l - amount

  l = Clamp(l, 0, 100)
  local to = rgbToHex(hslToRgb({ h, s, l }))
  return to
end
function utils.lighten(hex, amount)
  local h, s, l = unpack(rgbToHsl(hexToRgb(hex)))
  l = l + amount
  l = Clamp(l, 0, 100)
  local to = rgbToHex(hslToRgb({ h, s, l }))
  return to
end
function utils.blend(hex1, hex2, t)
  local r1, g1, b1 = unpack(hexToRgb(hex1))
  local r2, g2, b2 = unpack(hexToRgb(hex2))

  local r = blendChannel(r1, r2, t)
  local g = blendChannel(g1, g2, t)
  local b = blendChannel(b1, b2, t)
  return rgbToHex({ r, g, b })
end
return utils

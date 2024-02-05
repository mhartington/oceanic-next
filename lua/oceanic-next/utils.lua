local utils = {}

function utils.load(...)
	local highlights = vim.tbl_extend("force", ...)
	for group, hl in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, hl)
	end
end

local function round(x)
	return x >= 0 and math.floor(x + 0.5) or math.ceil(x - 0.5)
end

local function hexToRgb(c)
	c = string.lower(c)
	return { tonumber(c:sub(2, 3), 16), tonumber(c:sub(4, 5), 16), tonumber(c:sub(6, 7), 16) }
end

local function rgbToHsl(c)
	local r, g, b = unpack(c)
	r, g, b = r / 255, g / 255, b / 255

	local maxColor = math.max(r, g, b)
	local minColor = math.min(r, g, b)
	local delta = maxColor - minColor

	local l = (maxColor + minColor) / 2
	local s = 0
	local h = 0

	if delta ~= 0 then
		s = delta / (1 - math.abs(2 * l - 1))

		if maxColor == r then
			h = ((g - b) / delta) % 6
		elseif maxColor == g then
			h = ((b - r) / delta) + 2
		else
			h = ((r - g) / delta) + 4
		end

		h = h * 60
	end

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

function utils.darken(hex, amount)
	local h, s, l = unpack(rgbToHsl(hexToRgb(hex)))
	l = amount
	local to = rgbToHex(hslToRgb({ h, s, l }))
	return to
end

return utils

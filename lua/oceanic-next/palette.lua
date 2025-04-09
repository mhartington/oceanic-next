local palette = {}

palette.dark = function()
  return {
    base00 = "#1b2b34",
    base01 = "#343d46",
    base02 = "#4f5b66",
    base03 = "#65737e",
    base04 = "#a7adba",
    base05 = "#c0c5ce",
    base06 = "#cdd3de",
    base07 = "#d8dee9",
    red = "#ec5f67", -- base08
    orange = "#f99157", -- base09
    yellow = "#fac863", -- base0A
    green = "#99c794", -- base0B
    cyan = "#62b3b2", -- base0C
    blue = "#6699cc", -- base0D
    purple = "#c594c5", -- base0E
    brown = "#ab7967", -- base0F
    white = "#ffffff", -- base0
    none = "NONE",
  }
end

palette.light = function()
  return {
    -- base00 = "#f5f7fa",
    -- base01 = "#d4d8dc",
    -- base02 = "#b4babf",
    -- base03 = "#a7adba",
    -- base04 = "#65737e",
    -- base05 = "#4f5b66",
    -- base06 = "#343d46",
    -- base07 = "#1b2b34",

    base00 = "#d8dee9",
    base01 = "#cdd3de",
    base02 = "#c0c5ce",
    base03 = "#a7adba",
    base04 = "#65737e",
    base05 = "#4f5b66",
    base06 = "#343d46",
    base07 = "#1b2b34",

    red = "#d03c44",
    orange = "#db6f33",
    yellow = "#dca941",
    green = "#5a9c52",
    cyan = "#398d8c",
    blue = "#3a72ab",
    purple = "#ad60ad",
    brown = "#96553f",
    white = "#ffffff",
    none = "NONE",
  }
end

return palette

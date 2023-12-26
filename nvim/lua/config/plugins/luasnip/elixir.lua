local ls = require("luasnip")
local s, t, i = ls.snippet, ls.text_node, ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

return {
  s("pry", { t({
    "require IEx",
    "IEx.pry()"
  }) }),

  s("ioi", fmt("IO.inspect({}, label: \"{}\")", {
    i(1),
    rep(1)
  })),

  s("tdd",
    fmt(
      [[
        test "{}" do
          {}
        end
      ]],
      { i(1), i(2) }
    )
  ),

  s("fdoc",
    fmt(
      [[
        @doc """
        {}

        ## Examples

            iex> {}
        """
      ]],
      { i(1), i(2) }
    )
  ),
}

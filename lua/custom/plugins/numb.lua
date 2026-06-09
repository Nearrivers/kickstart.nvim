-- Permet de peek les lignes lorsqu'on y accède via :line-number
return {
  'nacro90/numb.nvim',
  config = function()
    require('numb').setup()
  end,
}

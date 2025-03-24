return {
  {
    -- AI Client
    "robitx/gp.nvim",
    config = function()
      require('gp').setup {
        providers = {
          openai = {
            endpoint = "https://api.openai.com/v1/chat/completions",
            secret = { "cat", (vim.fn.expand("~") .. "/.secrets/.openai_api_key") }
          },
          anthropic = {
            endpoint = "https://api.anthropic.com/v1/messages",
            secret = { "cat", (vim.fn.expand("~") .. "/.secrets/.anthropic_api_key") }
          }
        }
      }
    end,
    cmd = {
      "GpChatNew", "GpChatPaste", "GpChatToggle", "GpChatFinder", "GpChatDelete",
      "GpRewrite", "GpAppend", "GpPrepend", "GpEnew", "GpNew", "GpVnew", "GpTabnew",
      "GpPopup", "GpImplement", "GpContext", "GpAgent", "GpNextAgent", "GpImage", "GpImageAgent",
      "GpStop", "GpInspectPlugin"
    }
  }
}

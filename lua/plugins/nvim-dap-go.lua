return {
  {
    "leoluz/nvim-dap-go",
    lazy = false,
    cmd = "Dap GO",
    config = function()
      require("dap-go").setup{
        delve = {
          path = "dlv",
          initialize_timeout_sec = 20,
          args = {},
          build_flags = "",
          port = "${port}",
        },
        tests = {
          -- enables verbosity when running the test.
          verbose = true,
        },
        -- dap_configurations = {
        --   {
        --     -- Must be "go" or it will be ignored by the plugin
        --     type = "go",
        --     name = "FFF",
        --     mode = "remote",
        --     request = "attach",
        --   },
        -- },
      }
    end,
  },
}

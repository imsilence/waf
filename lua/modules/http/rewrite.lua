local log = ngx.log
local DEBUG = ngx.DEBUG

log(DEBUG, 'rewrite')
local policy = require 'modules.configs.policy'
policy.reload()

local redirect = require 'modules.etl.action.rewrite.redirect'
redirect.run()

local browser = require 'modules.etl.action.rewrite.browser'
browser.run()
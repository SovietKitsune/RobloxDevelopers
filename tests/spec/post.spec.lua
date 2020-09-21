return describe('post command', function()
  return it('be able to cancel', function()
    assert(execute(tostring(bot.prefix) .. "post"))
    local msg = assert(execute('cancel'))
    assert(msg.content == "Closed prompt.", 'Bot did not reply with `Closed prompt.`')
    return assert(not tester.errored, 'Bot errored while testing')
  end)
end)

<messages-list>
  <ul>
    <li each={ message, i in messages } class={ bg-success : i%2 === 0 }>
      { message }<span if={message === 'Hello Mr Spock'}>. Long live and prosper.</span>
    </li>
  </ul>

  var self = this
  this.messages = []

  this.mixin(EventBusMixin)

  this.bus.on('newMsgEvent', function(msg) {
    self.messages.push(msg)
  })
</messages-list>

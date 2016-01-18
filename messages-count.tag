<messages-count>
  <h4 show = { hasMessages() }># {count} messages</h4>

 var self = this
 this.count = 0

 this.mixin(EventBusMixin)

 this.bus.on('newMsgEvent', function(msg) {
   self.count = self.count + 1
 })

 this.hasMessages = function() {
   return this.count > 0
 }
</messages-count>

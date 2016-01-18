<hello-world>
 <h3>{ opts.title }<h3>
 <input name="helloInput" placeholder="Enter your name">
 <button class="btn btn-success" onclick="{ sayHello }">{opts.title}</button>

 <messages-count bus = { opts.bus }></messages-count>
 <messages-list bus = { opts.bus }></messages-list>

 this.sayHello = (e) => {
   this.opts.bus.trigger('newMsgEvent', 'Hello ' + (this.helloInput.value))
 }
</hello-world>

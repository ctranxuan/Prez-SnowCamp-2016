<hello-world>
 <h3>{ opts.title }<h3>
 <input name="helloInput" placeholder="Enter your name">
 <button class="btn btn-success" onclick="{ sayHello }">{opts.title}</button>

 <messages-count></messages-count>
 <messages-list></messages-list>

 this.mixin(EventBusMixin)

 this.sayHello = (e) => {
   this.bus.trigger('newMsgEvent', 'Hello ' + (this.helloInput.value))
 }
</hello-world>

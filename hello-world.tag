<hello-world>
 <h3>{ opts.title }<h3>
 <input name="helloInput" placeholder="Enter your name">
 <button class="btn btn-success" onclick="{ sayHello }">{opts.title}</button>
 <h4 show = { hasMessages() }># {messages.length} messages</h4>
 <ul>
   <li each={ message in messages }>
     { message }<span if={message === 'Hello Mr Spock'}>. Long live and prosper.</span>
   </li>
 </ul>

 this.messages = []

 this.hasMessages = function() {
   return this.messages.length > 0
 }

 this.sayHello = (e) => {
   this.messages.push('Hello ' + (this.helloInput.value))
   console.log(this.hasMessages)
 }
</hello-world>

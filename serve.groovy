// launches a local Jetty server that allow us to render
// pages like if they were on GitHub

@Grapes([
    @Grab(group = 'javax.servlet', module = 'javax.servlet-api', version = '3.0.1'),
    @Grab(group = 'org.eclipse.jetty.aggregate', module = 'jetty-all-server', version = '8.1.8.v20121106', transitive = false)
])
import org.eclipse.jetty.server.Handler
import org.eclipse.jetty.server.Server
import org.eclipse.jetty.server.handler.DefaultHandler
import org.eclipse.jetty.server.handler.HandlerList
import org.eclipse.jetty.server.handler.ResourceHandler
import org.eclipse.jetty.server.handler.ContextHandler
import org.eclipse.jetty.server.nio.SelectChannelConnector

def server = new Server()
def connector = new SelectChannelConnector()
connector.port = 8820
server.addConnector(connector)

def resource_handler = new ResourceHandler()
resource_handler.directoriesListed = true
resource_handler.welcomeFiles = ['index.html']

resource_handler.resourceBase = 'build/jbake'

def context = new ContextHandler()
context.handler = resource_handler
context.contextPath = '/blog'

def handlers = new HandlerList()
handlers.handlers = [context, new DefaultHandler()]
server.handler = handlers

println("Serving out contents on http://localhost:${connector.port}/blog");
println("(To stop server hit CTRL-C)");

server.start()
server.join()

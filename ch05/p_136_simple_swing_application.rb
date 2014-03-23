include Java
require 'swt'
import org.eclipse.swt.SWT
import org.eclipse.swt.layout.RowLayout
import org.eclipse.swt.widgets.Listener
d = org.eclipse.swt.widgets.Display.new
s = org.eclipse.swt.widgets.Shell.new(d)
but = org.eclipse.swt.widgets.Button.new(s, SWT::PUSH)
but.text = "Search"
l = org.eclipse.swt.widgets.Label.new(s,SWT::NONE)
l.text = "Click to Search"
l.set_size(100,75)
but.addListener(SWT::Selection, Listener.impl do |method, evt|
  l.text = 'searching...'
end)
s.layout = RowLayout.new
s.set_size(300,200)
s.open
while(!s.is_disposed) do d.sleep if(!d.read_and_dispatch) end
d.dispose
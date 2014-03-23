include Java
#require File.dirname(__FILE__) + "/../src/swt"
require 'swt'
require 'glimmer'
include Glimmer
import 'org.eclipse.swt.layout.GridLayout'
def user_name
  "default text"
end
def enabled
  true
end
@shell = shell {
  text "SWT"
  composite {
    layout GridLayout.new(2, false) #two columns with differing widths
    label { text "Hello World!"}
    text { 
      text bind(self, :user_name) 
      enabled bind(self, :enabled)
    }
  }
}
@shell.open
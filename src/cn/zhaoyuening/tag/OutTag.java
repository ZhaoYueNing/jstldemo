package cn.zhaoyuening.tag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class OutTag extends SimpleTagSupport{
	private String value;
	@Override
	public void doTag() throws JspException, IOException {
		getJspContext().getOut().print(this.value);
		return ;
	}
	
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	
	
}

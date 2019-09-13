package com.web;

public class HelloWorld {
	 public static void main(String... args) {
	        MessageRenderer mr = new StandardOutMessageRenderer();
	        MessageProvider mp = new HelloWorldMessageProvider();
	        mr.setMessageProvider(mp);
	        mr.render();
	}

}

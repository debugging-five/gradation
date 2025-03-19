package com.app.logic;

public class MakeCode {
	public MakeCode() {;}
	
	public String codeSix(){
		String code = "";
		for(int i = 0; i < 6; i++) {
			code += (int)Math.floor(Math.random() * 10);
		}
		return code;
	}
}

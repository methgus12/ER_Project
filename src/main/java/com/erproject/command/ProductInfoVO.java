package com.erproject.command;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductInfoVO {
	
	private String pcode;
	private String pname;
	private String cpname;
	private String pbasicinfo;
	private String pcontent;
	private String pspec1;
	private String pspec2;
	private String pspec3;

}

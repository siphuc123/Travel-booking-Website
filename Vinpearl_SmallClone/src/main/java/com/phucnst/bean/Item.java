package com.phucnst.bean;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Item {
	Integer id;
	String name;
	Double price;
	String image;
	Date createDate = new Date();
	int qty = 1;
}

package com.exam.dto;

import java.time.LocalDate;

import org.apache.ibatis.type.Alias;

@Alias("GoodsDTO")
public class GoodsDTO {

	String bCode;
	String bCategory;
	String bName;
	String bMemCode;
	LocalDate bDate;
	int bPrice;
	String bInventory;
	String bImage;
	
	
	public GoodsDTO() {}


	public GoodsDTO(String bCode, String bCategory, String bName, String bMemCode, LocalDate bDate, int bPrice,
			String bInventory, String bImage) {
		super();
		this.bCode = bCode;
		this.bCategory = bCategory;
		this.bName = bName;
		this.bMemCode = bMemCode;
		this.bDate = bDate;
		this.bPrice = bPrice;
		this.bInventory = bInventory;
		this.bImage = bImage;
	}


	public String getbCode() {
		return bCode;
	}


	public void setbCode(String bCode) {
		this.bCode = bCode;
	}


	public String getbCategory() {
		return bCategory;
	}


	public void setbCategory(String bCategory) {
		this.bCategory = bCategory;
	}


	public String getbName() {
		return bName;
	}


	public void setbName(String bName) {
		this.bName = bName;
	}


	public String getbMemCode() {
		return bMemCode;
	}


	public void setbMemCode(String bMemCode) {
		this.bMemCode = bMemCode;
	}


	public LocalDate getbDate() {
		return bDate;
	}


	public void setbDate(LocalDate bDate) {
		this.bDate = bDate;
	}


	public int getbPrice() {
		return bPrice;
	}


	public void setbPrice(int bPrice) {
		this.bPrice = bPrice;
	}


	public String getbInventory() {
		return bInventory;
	}


	public void setbInventory(String bInventory) {
		this.bInventory = bInventory;
	}


	public String getbImage() {
		return bImage;
	}


	public void setbImage(String bImage) {
		this.bImage = bImage;
	}


	@Override
	public String toString() {
		return "GoodsDTO [bCode=" + bCode + ", bCategory=" + bCategory + ", bName=" + bName + ", bMemCode=" + bMemCode
				+ ", bDate=" + bDate + ", bPrice=" + bPrice + ", bInventory=" + bInventory + ", bImage=" + bImage + "]";
	}



	
	

}

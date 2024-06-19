package com.exam.dto;

import java.time.LocalDate;

import org.springframework.web.multipart.MultipartFile;

public class FileDTO {
	
	String theText;
	MultipartFile theFile;
	String bCode;
	String bCategory;
	String bName;
	LocalDate bDate;
	int bPrice;
	String bInventory;
	String bImage;
	public FileDTO() {
		// TODO Auto-generated constructor stub
	}
	public FileDTO(String theText, MultipartFile theFile, String bCode, String bCategory, String bName, LocalDate bDate,
			int bPrice, String bInventory, String bImage) {
		this.theText = theText;
		this.theFile = theFile;
		this.bCode = bCode;
		this.bCategory = bCategory;
		this.bName = bName;
		this.bDate = bDate;
		this.bPrice = bPrice;
		this.bInventory = bInventory;
		this.bImage = bImage;
	}
	public String getTheText() {
		return theText;
	}
	public void setTheText(String theText) {
		this.theText = theText;
	}
	public MultipartFile getTheFile() {
		return theFile;
	}
	public void setTheFile(MultipartFile theFile) {
		this.theFile = theFile;
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
		return "FileDTO [theText=" + theText  + ", bCode=" + bCode + ", bCategory=" + bCategory
				+ ", bName=" + bName + ", bDate=" + bDate + ", bPrice=" + bPrice + ", bInventory=" + bInventory
				+ ", bImage=" + bImage + "]";
	}
	
	
}

package com.rbnelite.udyogvishwa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="hobbies")
public class Hobbies {

@Id
@Column(name="hobbiesid")
@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="history_sequence_id")
@SequenceGenerator(name="history_sequence_id", sequenceName="history_sequence",allocationSize=1)
private int id;

@Column
private String hobbies;

@Column
private String favouriteMusic;

@Column
private String favouriteBooks;

@Column
private String DressStyletyle;

@Column
private String favouritrTvShows;

@Column
private String FavouriteMovies;

@Column
private String sports;

@Column
private String foodIcook;

@Column
private String VacationDestination;


public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getHobbies() {
	return hobbies;
}
public void setHobbies(String hobbies) {
	this.hobbies = hobbies;
}
public String getFavouriteMusic() {
	return favouriteMusic;
}
public void setFavouriteMusic(String favouriteMusic) {
	this.favouriteMusic = favouriteMusic;
}
public String getFavouriteBooks() {
	return favouriteBooks;
}
public void setFavouriteBooks(String favouriteBooks) {
	this.favouriteBooks = favouriteBooks;
}
public String getDressStyletyle() {
	return DressStyletyle;
}
public void setDressStyletyle(String dressStyletyle) {
	DressStyletyle = dressStyletyle;
}
public String getFavouritrTvShows() {
	return favouritrTvShows;
}
public void setFavouritrTvShows(String favouritrTvShows) {
	this.favouritrTvShows = favouritrTvShows;
}
public String getFavouriteMovies() {
	return FavouriteMovies;
}
public void setFavouriteMovies(String favouriteMovies) {
	FavouriteMovies = favouriteMovies;
}
public String getSports() {
	return sports;
}
public void setSports(String sports) {
	this.sports = sports;
}
public String getFoodIcook() {
	return foodIcook;
}
public void setFoodIcook(String foodIcook) {
	this.foodIcook = foodIcook;
}
public String getVacationDestination() {
	return VacationDestination;
}
public void setVacationDestination(String vacationDestination) {
	VacationDestination = vacationDestination;
}
}

package com.rbnelite.udyogvishwa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "hobbies")
public class Hobbies {

	@Id
	@Column(name = "hobbies_id")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "history_sequence_id")
	@SequenceGenerator(name = "history_sequence_id", sequenceName = "lifestyle_sequence", allocationSize = 1)
	private int id;

	@Column(name="hobbies")
	@NotEmpty
	private String hobbiesName;

	@Column(name = "favourite_music")
	private String favouriteMusic;

	@Column(name = "favourite_books")
	private String favouriteBooks;

	@Column(name = "dress_style_type")
	private String DressStyletyle;

	@Column(name = "favourit_tv_shows")
	private String favouritrTvShows;

	@Column(name = "favourite_movies")
	private String FavouriteMovies;

	@Column(name = "sports")
	private String sports;

	@Column(name = "foodicook")
	private String foodIcook;

	@Column(name = "vacation_destination")
	private String VacationDestination;

	@Column(name = "email")
	private String usermail;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getHobbiesName() {
		return hobbiesName;
	}

	public void setHobbiesName(String hobbiesName) {
		this.hobbiesName = hobbiesName;
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

	public String getUsermail() {
		return usermail;
	}

	public void setUsermail(String usermail) {
		this.usermail = usermail;
	}
}

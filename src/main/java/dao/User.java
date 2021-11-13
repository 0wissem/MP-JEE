package dao;

import java.io.Serializable;

public class User implements Serializable {
	/**
	 * 
	 */
	private int id;
	private String prenom;
	private String nom;
	private String login;
	private String pwd;

	public User(String prenom, String nom, String login, String pwd) {
		super();
		this.prenom = prenom;
		this.nom = nom;
		this.login = login;
		this.pwd = pwd;
	}

	public User(int id, String prenom, String nom, String login, String pwd) {
		super();
		this.id = id;
		this.prenom = prenom;
		this.nom = nom;
		this.login = login;
		this.pwd = pwd;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return this.nom + this.prenom + this.login;
	}

}
//wissem.ksentini@yahoo.fr
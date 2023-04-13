package com.jotasantos.modelo;

import java.util.Date;

/*
 * CREATE TABLE `endereco` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logradouro` varchar(255) DEFAULT NULL, 
  `cidade` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `numero` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
)
 * */
public class Endereco {
	private Long id;
	private String logradouro;	
	private String cidade; 	
	private String bairro;		
	private Integer numero;	
	
	
	public Endereco() {
		super();
	}
	
	
	public Endereco(String logradouro, String cidade, String bairro, Integer numero) {
		super();
		this.logradouro = logradouro;
		this.cidade = cidade;		
		this.bairro = bairro;
		this.numero = numero;
		
	}

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getLogradouro() {
		return logradouro;
	}
	public void setLogradouro(String logradouro) {
		this.logradouro = logradouro;
	}
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	
	public String getBairro() {
		return bairro;
	}
	public void setBairro(String bairro) {
		this.bairro = bairro;
	}
	public Integer getNumero() {
		return numero;
	}
	public void setNumero(Integer numero) {
		this.numero = numero;
	}
	


}

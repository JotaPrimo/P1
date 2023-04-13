package com.jotasantos.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.ArrayList;

import com.jotasantos.dao.util.Conexao;
import com.jotasantos.modelo.Endereco;

public class EnderecoDAO {

	private Connection connection;

	private void conectar() throws SQLException, ClassNotFoundException {
		if (connection == null || connection.isClosed()) {
			connection = Conexao.getConexao();
		}
	}

	private void desconectar() throws SQLException {
		if (connection != null && !connection.isClosed()) {
			connection.close();
		}
	}

	public Endereco inserirEndereco(Endereco endereco) throws SQLException, ClassNotFoundException {
		String sql = "INSERT INTO endereco (logradouro, cidade, bairro, numero)" + " VALUES (?, ?, ?, ?)";

		conectar();

		PreparedStatement statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
		statement.setString(1, endereco.getLogradouro());
		statement.setString(2, endereco.getCidade());
		statement.setString(3, endereco.getBairro());
		statement.setInt(4, endereco.getNumero());

		statement.executeUpdate();

		ResultSet resultSet = statement.getGeneratedKeys();
		long id = -1;

		if (resultSet.next())
			id = resultSet.getInt(1);
		statement.close();

		desconectar();

		endereco.setId(id);
		return endereco;
	}

	public List<Endereco> listarTodosEnderecos() throws SQLException, ClassNotFoundException {

		List<Endereco> listaEnderecos = new ArrayList<Endereco>();

		String sql = "SELECT * FROM endereco";

		this.conectar();

		Statement statement = connection.createStatement();
		ResultSet resultSet = statement.executeQuery(sql);

		while (resultSet.next()) {
			long id = resultSet.getLong("id");
			String logradouro = resultSet.getString("logradouro");
			String cidade = resultSet.getString("cidade");
			String bairro = resultSet.getString("bairro");
			String numero = resultSet.getString("numero");

			Endereco endereco = new Endereco(logradouro, cidade, bairro, Integer.parseInt(numero));
			endereco.setId(id);
			listaEnderecos.add(endereco);
		}
		resultSet.close();
		statement.close();

		desconectar();

		return listaEnderecos;
	}

}
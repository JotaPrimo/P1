package com.jotasantos.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jotasantos.dao.EnderecoDAO;
import com.jotasantos.modelo.Endereco;


@WebServlet("/publica")
public class IndexController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private EnderecoDAO enderecoDAO;

	public IndexController() {
		super();

	}

	public void init() {
		enderecoDAO = new EnderecoDAO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processarRequisicao(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processarRequisicao(request, response);
	}

	private void processarRequisicao(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String acao = request.getParameter("acao");

		try {
			switch (acao) {
			case "novo":
				this.novoEndereco(request, response);
				break;

			case "inserir":
				this.gravarEndereco(request, response);
				break;
				
			case "listar":
				this.listarEnderecos(request, response);
				break;	
				
			case "apagar":
				this.apagarEndereco(request, response);
				break;
				
			case "formEditar":
				this.formEditarEndereco(request, response);
				break;
				
			case "update":
				this.updateEndereco(request, response);
				break;

			default:
				break;
			}
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}

	protected void novoEndereco(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ClassNotFoundException {		
		

		RequestDispatcher dispatcher = request.getRequestDispatcher("/public/public-novo-endereco.jsp");
		dispatcher.forward(request, response);
	}

	protected void gravarEndereco(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ClassNotFoundException, SQLException {
		
		String logradouro = request.getParameter("logradouro");
		String cidade = request.getParameter("cidade");		
		String bairro = request.getParameter("bairro");		
		String numero = request.getParameter("numero");
		

		Endereco endereco = new Endereco(logradouro, cidade, bairro, Integer.parseInt(numero));
		
		Endereco enderecoGravado =  enderecoDAO.inserirEndereco(endereco);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("public/listar-endereco.jsp");
		request.setAttribute("mensagem", "Endereço cadastrado com sucesso");
		this.listarEnderecos(request, response);
		// dispatcher.forward(request, response);		
	}
	
	public void listarEnderecos(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, ServletException, IOException {
		
		List<Endereco> enderecos =  enderecoDAO.listarTodosEnderecos();
		
		request.setAttribute("listaEnderecos", enderecos);
		
		String path =  "/public/listar-enderecos.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		
		dispatcher.forward(request, response);

	}

	private void apagarEndereco(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException, ClassNotFoundException {
			
			long id = Long.parseLong(request.getParameter("id"));
			
			Endereco endereco = new Endereco();
			endereco.setId(id);
			enderecoDAO.apagarEndereco(endereco);
			
			String path = request.getContextPath() + request.getServletPath() + "?acao=listar";
			response.sendRedirect(path);
			
		}
	
	private void formEditarEndereco(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException, ClassNotFoundException {
		
		long id = Long.parseLong(request.getParameter("id"));
		Endereco endereco = enderecoDAO.buscarEnderecoPorId(id);	
	
		request.setAttribute("endereco", endereco);		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/public/form-editar.jsp");
				
		dispatcher.forward(request, response);
		
	}
	
	private void updateEndereco(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));		
				
		Endereco endereco = enderecoDAO.buscarEnderecoPorId(id);	
		endereco.setLogradouro(request.getParameter("logradouro"));
		endereco.setCidade(request.getParameter("cidade"));		
		endereco.setBairro(request.getParameter("bairro"));		
		endereco.setNumero(Integer.parseInt(request.getParameter("numero")));	
		
		enderecoDAO.editarEndereco(endereco);
		
		String path = request.getContextPath() + request.getServletPath() + "?acao=listar";
		response.sendRedirect(path);
	}	


}

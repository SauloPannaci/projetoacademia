package org.libertas;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedList;

public class treinoDAO {
	
	public void salvar(treino f) {
		if (f.getId_treino()>0) {
			alterar(f);
		}else {
			inserir(f);
		}
	}

	public void inserir(treino f) {
		conexao con = new conexao();
		
		try {
			String sql= "INSERT INTO academia (nome, professor, duracao, intensidade, exercicio)"
					+ " VALUES (?,?,?,?,?)";
			PreparedStatement prep =con.getConnection().prepareStatement(sql);	
			prep.setString(1, f.getNome());
			prep.setString(2, f.getProfessor());
			prep.setString(3, f.getDuracao());
			prep.setString(4, f.getIntensidade());
			prep.setString(5, f.getExercicio());
			prep.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		con.desconecta();
	}
	
	public LinkedList<treino> listar() {
		LinkedList<treino> lista = new LinkedList<treino>();
		conexao con = new conexao();
		try {
			String sql = "SELECT * FROM academia ORDER BY nome";
			Statement sta = con.getConnection().createStatement();
			ResultSet res = sta.executeQuery(sql);
			while (res.next()) {
				treino f = new treino();
				f.setId_treino(res.getInt("id_treino"));
				f.setNome(res.getString("nome"));
				f.setProfessor(res.getString("professor"));
				f.setDuracao(res.getString("duracao"));
				f.setIntensidade(res.getString("intensidade"));
				f.setExercicio(res.getString("exercicio"));
				lista.add(f);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		con.desconecta();
		return lista;
		
	}
	
	public void alterar(treino f) {
		conexao con = new conexao();
		try {
			String sql = "UPDATE academia SET nome = ?, professor = ?, duracao = ?,"
					+ " intensidade = ?, exercicio = ? "
					+ "WHERE id_treino = ?";
			PreparedStatement prep = con.getConnection().prepareStatement(sql);
			prep.setString(1, f.getNome());
			prep.setString(2, f.getProfessor());
			prep.setString(3, f.getDuracao());
			prep.setString(4, f.getIntensidade());
			prep.setString(5, f.getExercicio());
			prep.setInt(6, f.getId_treino());
			prep.execute();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		con.desconecta();
	}
	
	public void excluir(treino f) {
		conexao con = new conexao();
		try {
			String sql = "DELETE FROM academia"
					+ " WHERE id_treino = ?";
			PreparedStatement prep = con.getConnection().prepareStatement(sql);
			prep.setInt(1, f.getId_treino());
			prep.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
		con.desconecta();
	}
	
	public treino consultar(int id) {
		treino f = new treino();
		conexao con = new conexao();
		try {
			String sql = "SELECT * FROM academia WHERE id_treino = "+ id;
			Statement sta = con.getConnection().createStatement();
			ResultSet res = sta.executeQuery(sql);
			if (res.next()) {
				f.setId_treino(res.getInt("id_treino"));
				f.setNome(res.getString("nome"));
				f.setProfessor(res.getString("professor"));
				f.setDuracao(res.getString("duracao"));
				f.setIntensidade(res.getString("intensidade"));
				f.setExercicio(res.getString("exercicio"));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		con.desconecta();
		return f;
	}
        
}

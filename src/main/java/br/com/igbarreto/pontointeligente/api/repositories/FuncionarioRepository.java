package br.com.igbarreto.pontointeligente.api.repositories;


import org.springframework.data.jpa.repository.JpaRepository;

import br.com.igbarreto.pontointeligente.api.entities.Funcionario;


public interface FuncionarioRepository extends JpaRepository<Funcionario,Long> {

	Funcionario findByCpf(String cpf);
	
	Funcionario findByEmail(String email);
	
	Funcionario findByCpfOrEmail(String cpf,String email);
	
	
	
}

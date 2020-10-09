package br.com.igbarreto.pontointeligente.api.repositories;



import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.igbarreto.pontointeligente.api.entities.Empresa;

public interface EmpresaRepository extends JpaRepository<Empresa, Long> {

	
	Empresa findByCnpj(String cnpj);
}

package br.com.igbarreto.pontointeligente.api.repositories;

import java.util.List;

import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import br.com.igbarreto.pontointeligente.api.entities.Lancamento;

@NamedQueries({
	@NamedQuery(
		name = "LancamentoRepository.findByFuncionarioId",
		query ="SELECT lanc FROM Lancamento lanc WHERE lanc.funcionario.id = :funcionarioId" )
})
public interface LancamentoRepository extends JpaRepository<Lancamento,Long> {

	List<Lancamento> findByFuncionarioId(@Param("funcionarioId") Long funcionarioId);

	List<Lancamento> findByFuncionarioId(@Param("funcionarioId") Long funcionarioId,Pageable pageable);


}

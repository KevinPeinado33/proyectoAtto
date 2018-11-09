package pe.org.sehs.repository;

import org.springframework.data.repository.CrudRepository;

import pe.org.sehs.entity.Usuario;

public interface UsuarioRepository extends CrudRepository<Usuario, Integer> {

}

package br.edu.univille.poo.musicapp.repository;


import br.edu.univille.poo.musicapp.entity.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UsuarioRepository extends JpaRepository<Usuario, Long> {
}

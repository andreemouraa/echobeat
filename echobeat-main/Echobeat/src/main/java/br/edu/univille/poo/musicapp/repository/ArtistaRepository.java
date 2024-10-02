package br.edu.univille.poo.musicapp.repository;


import br.edu.univille.poo.musicapp.entity.Artista;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ArtistaRepository extends JpaRepository<Artista, Long> {
}

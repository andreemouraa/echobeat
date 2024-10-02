package br.edu.univille.poo.musicapp.repository;

import br.edu.univille.poo.musicapp.entity.Musica;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MusicaRepository extends JpaRepository<Musica, Long> {
}


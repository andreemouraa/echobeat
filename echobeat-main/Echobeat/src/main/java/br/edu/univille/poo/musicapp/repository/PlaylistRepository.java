package br.edu.univille.poo.musicapp.repository;


import br.edu.univille.poo.musicapp.entity.Playlist;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PlaylistRepository extends JpaRepository<Playlist, Long> {
}


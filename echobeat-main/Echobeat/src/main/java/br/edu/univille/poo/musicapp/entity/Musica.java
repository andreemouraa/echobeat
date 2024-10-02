package br.edu.univille.poo.musicapp.entity;

import jakarta.persistence.*;
import java.util.List;

@Entity
public class Musica {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String titulo;
    private String album;

    @ManyToOne
    @JoinColumn(name = "artista_id")
    private Artista artista;

    @ManyToMany(mappedBy = "musicas")
    private List<Playlist> playlists;

}

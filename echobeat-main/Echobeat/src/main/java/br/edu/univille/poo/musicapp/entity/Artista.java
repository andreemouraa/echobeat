package br.edu.univille.poo.musicapp.entity;

import jakarta.persistence.*;
import java.util.List;

@Entity
public class Artista {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nome;

    @OneToMany(mappedBy = "artista")
    private List<Musica> musicas;

   
}

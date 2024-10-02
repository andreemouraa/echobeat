package br.edu.univille.poo.musicapp.service;

import br.edu.univille.poo.musicapp.entity.Musica;
import br.edu.univille.poo.musicapp.repository.MusicaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MusicaService {

    @Autowired
    private MusicaRepository musicaRepository;

    public List<Musica> getAllMusicas() {
        return musicaRepository.findAll();
    }

    public Musica createMusica(Musica musica) {
        return musicaRepository.save(musica);
    }

    // Outros métodos, como update e delete, podem ser adicionados aqui
}

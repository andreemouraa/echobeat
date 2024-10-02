package br.edu.univille.poo.musicapp.controller;


import br.edu.univille.poo.musicapp.entity.Musica;
import br.edu.univille.poo.musicapp.service.MusicaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/musicas")
public class MusicaController {

    @Autowired
    private MusicaService musicaService;

    @GetMapping
    public List<Musica> getAllMusicas() {
        return musicaService.getAllMusicas();
    }

    @PostMapping
    public Musica createMusica(@RequestBody Musica musica) {
        return musicaService.createMusica(musica);
    }

}

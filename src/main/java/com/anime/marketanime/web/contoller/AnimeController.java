package com.anime.marketanime.web.contoller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/anime")
public class AnimeController {

    @GetMapping("/holita")
    public String ListAnimes(){
        return "Hola mundito";
    }
}

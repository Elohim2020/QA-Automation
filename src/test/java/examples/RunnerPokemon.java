package examples;

import com.intuit.karate.junit5.Karate;

public class RunnerPokemon {
    @Karate.Test
    Karate runReqResKarate(){
        return Karate.run("users/getPokemon").relativeTo(getClass());
    }
    
}

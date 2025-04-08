package examples;

import com.intuit.karate.junit5.Karate;

public class loginOutlineRunner {
    @Karate.Test
    Karate runLoginOutline() {
        return Karate.run("users/loginReqRes").relativeTo(getClass());
    }
    
}

package com.loginController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/buju")
public class BujuController {
    @RequestMapping("/select")
    public String bujuList(){
        return "buju/buju";
    }


    @RequestMapping("/shouye")
    public String shouye(){return "buju/shouye";}

    @RequestMapping("/cc")
    public String shouye2(){return "buju/cc";}

}

package com.givebackController;

import com.entity.Books;
import com.entity.Giveback;
import com.github.pagehelper.PageInfo;
import com.service.GivebackService;
import com.service.impl.GivebackServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/giveback")
public class GivebackController {
    @Autowired
    private GivebackService givebackService;

    @Autowired
    private GivebackServiceImpl serviceImpl;

    //查询归还信息
    @RequestMapping("/list")
    public String list(@RequestParam(value = "pageNum",required = false,defaultValue = "1")int pageNum,
                       @RequestParam(value = "pageSize",required = false,defaultValue = "5")int pageSize,
                       Model model){
        List<Giveback> givebacksList = givebackService.getGiveback(pageNum,pageSize);
        PageInfo pageInfo=new PageInfo(givebacksList);
        model.addAttribute("giveback",pageInfo);
        return "giveback/givebackList";
    }

    //归还书籍
    @RequestMapping("/giveback")
    public String giveback(){
        return "giveback/givebackAdd";
    }

    @RequestMapping("/givebackAdd")
    public String givebackAdd(Giveback giveback){
        serviceImpl.backBook(giveback);
        return "redirect:/giveback/list";
    }

}

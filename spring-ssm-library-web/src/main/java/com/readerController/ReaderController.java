package com.readerController;

import com.entity.Books;
import com.entity.Readers;
import com.github.pagehelper.PageInfo;
import com.service.ReadersService;
import com.service.impl.ReadersServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/readers")
public class ReaderController {
    private  static final  String  FILE_DIRECTORY="E:\\spring-ssm-library-parent\\spring-ssm-library-web\\src\\main\\resources\\static\\img";
    @Autowired
    private ReadersService readersService;
    @Autowired
    private ReadersServiceImpl service;

    //查询读者信息
    @RequestMapping("/select")
    public String select(){
        return "buju/buju";
    }

    @RequestMapping("/list")
    public String list(@RequestParam(value = "pageNum",
            required = false,defaultValue = "6") int pageNum,
                       @RequestParam(value = "pageSize",
                               required = false,defaultValue = "5") int pageSize, Model model) {
        List<Readers> readers = readersService.getAll(pageNum, pageSize);
        PageInfo pageInfo = new PageInfo(readers);
        model.addAttribute("read", pageInfo);
        return "reader/readList";
    }

    //使用文件上传添加读者信息
    @RequestMapping("/add")
    public String index(){
        return "reader/readAdd";
    }

    @RequestMapping("/dengji")
    public String index(Readers readers,MultipartFile myfile){
        String filename = myfile.getOriginalFilename();
        String path = FILE_DIRECTORY + File.separator + filename;
        File file=new File(path);
       readers.setPhoto(filename);
        try {
            myfile.transferTo(file);
            readersService.insert(readers);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "redirect:list";
    }


    //删除读者信息
    @RequestMapping("/delete")
    public String delete(Integer readId){
        readersService.delete(readId);
        return "redirect:/readers/list";
    }

    //修改,先通过get方法得到一个对象
    @RequestMapping("/edit")
    public ModelAndView editStudent(Readers readers) {
       Readers readers1 = readersService.getReader(readers.getReadId());
        ModelAndView mav = new ModelAndView();
        mav.addObject("read",readers1);
        mav.setViewName("reader/readUpdate");
        return mav;
    }

    @RequestMapping("/update")
    public ModelAndView update(Readers readers) {
        readersService.update(readers);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("redirect:/readers/list");
        return mv;
    }

    //充值
    @RequestMapping("/invest")
    public String inver(){
        return "reader/invest";
    }
    @RequestMapping("/investMoney")
    public String inverMoney(int readId,double deposit){
        readersService.investMoney(readId,deposit);
        return "redirect:/readers/list";
    }

    @RequestMapping("/getReaderName")
    public String getReaderName(@RequestParam(value = "pageNum",
            required = false,defaultValue = "1") int pageNum,
                              @RequestParam(value = "pageSize",
                                      required = false,defaultValue = "10") int pageSize,
                              String readName,Model model) {
        List<Readers> list=readersService.getReaderName(pageNum,pageSize,readName);
        PageInfo pageInfo = new PageInfo(list);
        model.addAttribute("list",pageInfo);
        return "redirect:/readers/list";
    }
}

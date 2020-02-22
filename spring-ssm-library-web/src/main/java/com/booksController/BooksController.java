package com.booksController;

import com.entity.Books;
import com.github.pagehelper.PageInfo;
import com.service.BooksService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;

import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import javax.validation.Valid;
import java.util.List;


@Controller
@RequestMapping("/book")
public class BooksController {
    private  static final  String  FILE_DIRECTORY="E:\\spring-ssm-library-parent\\spring-ssm-library-web\\src\\main\\resources\\static\\img";
    @Autowired
    private BooksService booksService;

    //图书查询
    @RequestMapping("/list")
    public String list(@RequestParam(value = "pageNum",
                                required = false,defaultValue = "1") int pageNum,
                       @RequestParam(value = "pageSize",
                               required = false,defaultValue = "10") int pageSize, Model model) {
        List<Books> books = booksService.getAll(pageNum, pageSize);
        PageInfo pageInfo = new PageInfo(books);
        model.addAttribute("list", pageInfo);
        return "books/list";
    }

    //图书名模糊查询
    @RequestMapping("/getBookName")
    public String getBookName(@RequestParam(value = "pageNum",
            required = false,defaultValue = "1") int pageNum,
                              @RequestParam(value = "pageSize",
                                      required = false,defaultValue = "10") int pageSize,
                              String bookName,Model model) {
        List<Books> list=booksService.getBookName(pageNum,pageSize,bookName);
        PageInfo pageInfo = new PageInfo(list);
        model.addAttribute("list",pageInfo);
        return "books/list";
    }

//    图书类型查询
    @RequestMapping("/getBookType")
    public String getBookType(@RequestParam(value = "pageNum",
            required = false,defaultValue = "1") int pageNum,
                              @RequestParam(value = "pageSize",
                                      required = false,defaultValue = "10") int pageSize,
                              int sortId,Model model){
        List<Books> list=booksService.getBookType(pageNum,pageSize,sortId);
        PageInfo pageInfo = new PageInfo(list);
       model.addAttribute("list",pageInfo);
        return "books/list";
    }



    //图书添加
    @GetMapping("/add")
    public String add(){
        return "/books/add";
    }

    @RequestMapping("/insert")
    public ModelAndView insert(@Valid Books books, BindingResult result) {
       ModelAndView mvc = new ModelAndView();
        if(result.hasErrors()){
            List<FieldError> errors = result.getFieldErrors();
            for(FieldError error: errors){
                mvc.addObject(error.getField(),error.getDefaultMessage() );
            }
            mvc.setViewName("books/add");
            return mvc;
        }
       booksService.insert(books);
        mvc.setViewName("redirect:list");
        return mvc;
    }


    //图书删除
  @RequestMapping("/delete")
    public ModelAndView delete(Integer bookId){
        booksService.delete(bookId);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("redirect:/book/list");
        return mav;
    }

    //图书修改,先通过get方法得到一个对象
    @RequestMapping("/edit")
    public ModelAndView editStudent(Books books) {
        Books books1 = booksService.get(books.getBookId());

        ModelAndView mav = new ModelAndView();
        mav.addObject("emp",books1);
        mav.setViewName("books/update");
        return mav;
    }

    @RequestMapping("/update")
    public ModelAndView update(Books books) {
        booksService.update(books);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("redirect:/book/list");
        return mav;
    }

}

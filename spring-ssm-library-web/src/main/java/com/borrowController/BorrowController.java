package com.borrowController;

import com.dao.BorrowDao;
import com.entity.Books;
import com.entity.Borrow;
import com.github.pagehelper.PageInfo;
import com.service.BooksService;
import com.service.BorrowService;
import com.service.ReadersService;
import com.service.impl.BorrowServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/borrows")
public class BorrowController {
    @Autowired
    private BorrowService borrowService;
    @Autowired
    private BorrowServiceImpl dao;

    @RequestMapping("/borrowList")
    public String borrowList(){
        return "buju/buju";
    }

    /**
     * 查询借阅信息
     * @param pageNum
     * @param pageSize
     * @param model
     * @return
     */
    @RequestMapping("/List")
    public String list(@RequestParam(value = "pageNum",required = false,defaultValue = "1")int pageNum,
                       @RequestParam(value = "pageSize",required = false,defaultValue = "5")int pageSize,
                       Model model){
        List<Borrow> borrowList = borrowService.getAll(pageNum,pageSize);
        PageInfo pageInfo=new PageInfo(borrowList);
        model.addAttribute("borrow",pageInfo);
        return "borrow/borrowList";
    }



    @RequestMapping("/borrows")
    public String bottow(){
        return "borrow/borrowAdd";
    }


    @RequestMapping("/borrowAdd")
    public String borrowAdd(Borrow borrow){
        System.out.println("xasdasdsadsadsadsadas"+borrow.getBookId());
        dao.addInfo(borrow);
        return "borrow/borrowList";
    }


}

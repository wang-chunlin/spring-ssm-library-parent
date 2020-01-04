package com.adminController;import com.entity.Books;import com.entity.Login;import com.entity.Readers;import com.service.AdminService;import org.springframework.beans.factory.annotation.Autowired;import org.springframework.beans.propertyeditors.CustomDateEditor;import org.springframework.format.annotation.DateTimeFormat;import org.springframework.stereotype.Controller;import org.springframework.ui.Model;import org.springframework.validation.BindingResult;import org.springframework.web.bind.ServletRequestDataBinder;import org.springframework.web.bind.annotation.InitBinder;import org.springframework.web.bind.annotation.RequestMapping;import org.springframework.web.servlet.ModelAndView;import sun.rmi.runtime.Log;import javax.servlet.http.HttpServletRequest;import javax.servlet.http.HttpSession;import javax.validation.Valid;import javax.xml.ws.Binding;import java.text.SimpleDateFormat;import java.util.Date;import java.util.List;@Controller@RequestMapping("/admin")public class AdminController {    @Autowired    private AdminService adminService;    @RequestMapping("/admin")    public String admin(){        return "buju/buju";    }    @RequestMapping("/adminlist")    public ModelAndView list(HttpSession session){        String name1 = String.valueOf(session.getAttribute("staName"));        Login login = adminService.getAdmins(name1);        ModelAndView mav = new ModelAndView();        mav.addObject("admin",login);        mav.setViewName("admin/adminGeren");        return mav;    }    @RequestMapping("/edit")    public ModelAndView editAdmin(HttpSession session) {        String name1 = String.valueOf(session.getAttribute("staName"));        Login login1 = adminService.getAdmin(name1);        ModelAndView mav = new ModelAndView();        mav.addObject("admin",login1);        mav.setViewName("admin/adminUpdate");        return mav;    }    @RequestMapping("/updatePassword")    public ModelAndView update(@Valid Login login, BindingResult result,HttpServletRequest request) {        ModelAndView mav = new ModelAndView();        if (result.hasErrors()) {            mav.setViewName("admin/adminUpdate");            return mav;        } else {            if (login.getPassword().equals(request.getParameter("repassword"))) {                adminService.updateAdmin(login);                mav.setViewName("buju/shouye");                return mav;            }else {                mav.setViewName("admin/adminUpdate");                return mav;            }        }    }//    @RequestMapping("/deleteAdmin")//    public String delete(Integer staId){//        adminService.deleteAdmin(staId);//        return "admin/adminList";//    }////    //修改,先通过get方法得到一个对象//    @RequestMapping("/edit")//    public ModelAndView editAdmin(Login login) {////        String date=  login.getBirthday();////        login.setBirthday(date);//        Login login1 = adminService.getAdmin(login.getStaId());//        ModelAndView mav = new ModelAndView();//        mav.addObject("admin",login1);//        mav.setViewName("admin/adminUpdate");//        return mav;//    }//    @RequestMapping("/updateAdmin")//    public ModelAndView update(Login login) {//        adminService.updateAdmin(login);//        ModelAndView mav = new ModelAndView();//        mav.setViewName("admin/adminList");//        return mav;//    }}
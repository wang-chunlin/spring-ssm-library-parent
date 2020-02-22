package com.loginController;

import com.entity.Login;
import com.github.pagehelper.PageHelper;
import com.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.io.IOException;


@Controller
public class LoginController {
    @Autowired
    private LoginService loginService;

    //转向登录页面
    @RequestMapping("/")
    public String tologin() {
        return "login/login";
    }

    //登录验证
    @RequestMapping("/login")
    public String login(Login login, Model model, HttpServletRequest request, HttpSession session) {
        String staName = request.getParameter("staName");
        String password = request.getParameter("password");
        if (loginService.logins(login) != null) {
            session.setAttribute("staName", staName);
            session.setAttribute("password", password);
            return "forward:/buju/select";
        } else {
            model.addAttribute("error", "账号或密码错误");
            return "redirect:/login";
        }


    }


    //转向注册页面
    @RequestMapping("/registe")
    public String toregiste() {
        return "login/register";
    }

    @RequestMapping("/register")
    public ModelAndView regist(@Valid Login login, BindingResult result, HttpServletRequest request) throws IOException {
        ModelAndView mv = new ModelAndView();
        System.out.println("传过来的值：" + login);
        if (result.hasErrors()) {
            mv.setViewName("login/register");
            return mv;
        } else {
//            loginService.register(login);
//            System.out.println("用户注册: " + login.getStaName() + login.getPassword());
//            mv.setViewName("login/login");
//            return mv;
            if (login.getPassword().equals(request.getParameter("repassword"))) {
                loginService.register(login);
                System.out.println("用户注册: " + login.getStaName() + login.getPassword());
                mv.setViewName("login/login");
                return mv;
            } else {
                mv.setViewName("login/register");
                return mv;
            }
        }
    }
}


package cn.luoweifei.controller;

import cn.luoweifei.entity.User;
import cn.luoweifei.service.UserServer;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.servlet.http.HttpServletRequest;


@Controller
@RequestMapping("/qinMing/user")
public class UserController {
    @Autowired
    UserServer userServer;
    public static final Logger loger=Logger.getLogger(UserController.class);
    @RequestMapping("/go")
    public String go(){return "index";}
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(String tel, String password, Model model, HttpServletRequest request){
        loger.info("login");
        User user=userServer.selectByTel(tel.trim());
        loger.info("当前用户:"+user.toString());
       model.addAttribute("currUser",user);
       if(user.getPassword().equals(password)){
           request.getSession().setAttribute("user",user);
           return "index";
       }
       model.addAttribute("msg","账号或密码错误");
       return "forword:/qinMing/welcome.jsp";
    }
    @RequestMapping("/heihei")
    public String heiHei(){return "heihei";}
    @RequestMapping("/change")
    public String change(HttpServletRequest request,Model model){
        model.addAttribute("user",request.getSession().getAttribute("user"));
        loger.info("change:   "+request.getSession().getAttribute("user").toString());
        return "change";
    }
    @RequestMapping("/modify")
    public  String changed(User user){
        loger.info("change user:"+user.toString()+"   had"+userServer.update(user));
        return "redirect:/qinMing/user/change";
    }
}

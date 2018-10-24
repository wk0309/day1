package com.iotek.controller;

import com.iotek.model.Resume;
import com.iotek.model.User;
import com.iotek.service.ResumeService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Administrator on 2018/10/20.
 */
@Controller
public class ResumeController {
    @Resource
    private ResumeService resumeService;

    @RequestMapping("/createResume")
    public String createResume()throws Exception{
        return "createResume";
    }

    @RequestMapping("/addResume")
    public String addResume(Resume resume, HttpServletRequest request, HttpSession session) throws Exception{
        User user= (User) session.getAttribute("user");
        resume.setUser_id(user.getU_id());
        resumeService.addResume(resume);
        System.out.println(resume);
        request.setAttribute("success","添加成功！");
        return "createResume";
    }

    @RequestMapping("/myResume")
    public String myResume(HttpSession session)throws Exception{
        User user= (User) session.getAttribute("user");
        List<Resume> resumeList=resumeService.queryByUser(user.getU_id());
        session.setAttribute("resumeList",resumeList);
        return "myResume";
    }

    @RequestMapping("/queryResume")
    public String queryResume(int res_id,HttpSession session)throws Exception{
        Resume resume1=resumeService.queryById(res_id);
        session.setAttribute("resume",resume1);
        return "updateResume";
    }

    @RequestMapping("/deleteResume")
    public String deleteResume(int res_id,HttpSession session)throws Exception{
        resumeService.deleteResume(res_id);
        User user= (User) session.getAttribute("user");
        List<Resume> resumeList=resumeService.queryByUser(user.getU_id());
        session.setAttribute("resumeList",resumeList);
        return "myResume";
    }

    @RequestMapping("/doUpdate")
    public String doUpdate(Resume resume,HttpServletRequest request,HttpSession session)throws Exception{
        Resume resume1= (Resume) session.getAttribute("resume");
        resume.setRes_id(resume1.getRes_id());
        resumeService.updateResume(resume);
        request.setAttribute("success","修改成功");
        Resume resume2=resumeService.queryById(resume1.getRes_id());
        session.setAttribute("resume",resume2);
        return "updateResume";
    }
}

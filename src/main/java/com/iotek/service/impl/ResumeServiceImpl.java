package com.iotek.service.impl;

import com.iotek.dao.ResumeDao;
import com.iotek.model.Resume;
import com.iotek.service.ResumeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2018/10/20.
 */
@Service
public class ResumeServiceImpl implements ResumeService {
    @Resource
    private ResumeDao resumeDao;

    public void addResume(Resume resume) {
        resumeDao.addResume(resume);
    }

    public List<Resume> queryByUser(int user_id) {
        return resumeDao.queryByUser(user_id);
    }
}

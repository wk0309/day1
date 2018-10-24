package com.iotek.service;

import com.iotek.model.Resume;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2018/10/20.
 */

public interface ResumeService {
    void addResume(Resume resume);
    List<Resume> queryByUser(int user_id);
    Resume queryById(Resume resume);
}

package com.iotek.dao;

import com.iotek.model.Resume;

import java.util.List;

/**
 * Created by Administrator on 2018/10/20.
 */
public interface ResumeDao {
    void addResume(Resume resume);
    List<Resume> queryByUser(int user_id);
    Resume queryById(Resume resume);
}

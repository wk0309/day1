package com.iotek.model;

import java.io.Serializable;

/**
 * Created by Administrator on 2018/10/20.
 */
public class Resume implements Serializable {
    private Integer res_id;
    private String res_name;
    private String res_sex;
    private String res_age;
    private String res_nation;
    private String res_politics_status;
    private String res_height;
    private String res_education;
    private String res_school;
    private String res_major;
    private String res_native_place;
    private String res_hobby;
    private String res_work;
    private String res_address;
    private String res_phone;
    private String res_email;
    private String res_postcode;
    private String res_self_assessment;
    private Integer user_id;

    public Resume() {
    }

    public Integer getRes_id() {
        return res_id;
    }

    public void setRes_id(Integer res_id) {
        this.res_id = res_id;
    }

    public String getRes_name() {
        return res_name;
    }

    public void setRes_name(String res_name) {
        this.res_name = res_name;
    }

    public String getRes_sex() {
        return res_sex;
    }

    public void setRes_sex(String res_sex) {
        this.res_sex = res_sex;
    }

    public String getRes_age() {
        return res_age;
    }

    public void setRes_age(String res_age) {
        this.res_age = res_age;
    }

    public String getRes_nation() {
        return res_nation;
    }

    public void setRes_nation(String res_nation) {
        this.res_nation = res_nation;
    }

    public String getRes_politics_status() {
        return res_politics_status;
    }

    public void setRes_politics_status(String res_politics_status) {
        this.res_politics_status = res_politics_status;
    }

    public String getRes_height() {
        return res_height;
    }

    public void setRes_height(String res_height) {
        this.res_height = res_height;
    }

    public String getRes_education() {
        return res_education;
    }

    public void setRes_education(String res_education) {
        this.res_education = res_education;
    }

    public String getRes_school() {
        return res_school;
    }

    public void setRes_school(String res_school) {
        this.res_school = res_school;
    }

    public String getRes_major() {
        return res_major;
    }

    public void setRes_major(String res_major) {
        this.res_major = res_major;
    }

    public String getRes_native_place() {
        return res_native_place;
    }

    public void setRes_native_place(String res_native_place) {
        this.res_native_place = res_native_place;
    }

    public String getRes_hobby() {
        return res_hobby;
    }

    public void setRes_hobby(String res_hobby) {
        this.res_hobby = res_hobby;
    }

    public String getRes_work() {
        return res_work;
    }

    public void setRes_work(String res_work) {
        this.res_work = res_work;
    }

    public String getRes_address() {
        return res_address;
    }

    public void setRes_address(String res_address) {
        this.res_address = res_address;
    }

    public String getRes_phone() {
        return res_phone;
    }

    public void setRes_phone(String res_phone) {
        this.res_phone = res_phone;
    }

    public String getRes_email() {
        return res_email;
    }

    public void setRes_email(String res_email) {
        this.res_email = res_email;
    }

    public String getRes_postcode() {
        return res_postcode;
    }

    public void setRes_postcode(String res_postcode) {
        this.res_postcode = res_postcode;
    }

    public String getRes_self_assessment() {
        return res_self_assessment;
    }

    public void setRes_self_assessment(String res_self_assessment) {
        this.res_self_assessment = res_self_assessment;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    @Override
    public String toString() {
        return "Resume{" +
                "res_id=" + res_id +
                ", res_name='" + res_name + '\'' +
                ", res_sex='" + res_sex + '\'' +
                ", res_age='" + res_age + '\'' +
                ", res_nation='" + res_nation + '\'' +
                ", res_politics_status='" + res_politics_status + '\'' +
                ", res_height='" + res_height + '\'' +
                ", res_education='" + res_education + '\'' +
                ", res_school='" + res_school + '\'' +
                ", res_major='" + res_major + '\'' +
                ", res_native_place='" + res_native_place + '\'' +
                ", res_hobby='" + res_hobby + '\'' +
                ", res_work='" + res_work + '\'' +
                ", res_address='" + res_address + '\'' +
                ", res_phone='" + res_phone + '\'' +
                ", res_email='" + res_email + '\'' +
                ", res_postcode='" + res_postcode + '\'' +
                ", res_self_assessment='" + res_self_assessment + '\'' +
                ", user_id=" + user_id +
                '}';
    }
}


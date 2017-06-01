/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BEAN;

/**
 *
 * @author VegetaPC
 */
public class RegCourse {
    private int id;
    private int idaccount;
    private int idcourse;
    private int idle;

    public RegCourse() {
    }

    public RegCourse(int id, int idaccount, int idcourse, int idle) {
        this.id = id;
        this.idaccount = idaccount;
        this.idcourse = idcourse;
        this.idle = idle;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdaccount() {
        return idaccount;
    }

    public void setIdaccount(int idaccount) {
        this.idaccount = idaccount;
    }

    public int getIdcourse() {
        return idcourse;
    }

    public void setIdcourse(int idcourse) {
        this.idcourse = idcourse;
    }

    public int getIdle() {
        return idle;
    }

    public void setIdle(int idle) {
        this.idle = idle;
    }
}

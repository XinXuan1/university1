package cn.tools;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Const {
    public static final String ROOT="/university/";
    public static String getCurrentTime(){
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return sdf.format(new Date());
    }
    public static String getNow(){
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        return sdf.format(new Date());
    }
    
    public static final Integer pageSize=3;
}

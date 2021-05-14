package jspSamples.unit7.websiteSample;

import java.sql.Connection;
import java.sql.SQLException;

public class Login {
    DBConnection DBCoon=new DBConnection();
    Function Fun=new Function();

    public Login(){}
    public boolean LoginCheck(String s1,String s2){
        try{
            Connection Conn=DBCoon.getConn();
            boolean OK=true;
            OK=Fun.CheckLogin(Coon,s1,s2);
            return OK;
        }catch(SQLException e){
            return false;
        }
    }
}

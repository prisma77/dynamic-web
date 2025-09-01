package com.prisma77.controller;

import com.prisma77.util.DBUtil;
import com.prisma77.vo.EmpVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class ListAction  implements Action {
    private String path;
    private boolean isRedirect;

    public ListAction(String path, boolean isRedirect) {
        this.path = path;
        this.isRedirect = isRedirect;
    }

    @Override
    public ActionForWard execute(HttpServletRequest request, HttpServletResponse response) {
        //BL수행
        System.out.println("ListAction execute");
        request.setAttribute("arraylist", "Hello World");
        //System.out.println("Connetion="+DBUtil.getConnection());
        Connection connection=null;
        String sql="SELECT * FROM EMP";
        PreparedStatement pstmt=null;
        ResultSet resultSet=null;
        List<EmpVO> empVOList=new ArrayList<EmpVO>();
        try {
            connection=DBUtil.getConnection();
            pstmt=connection.prepareStatement(sql);
            resultSet=pstmt.executeQuery();
            while (resultSet.next()) {//tuple별로 데이터를 가져온다~
                EmpVO empVO=new EmpVO();
                empVO.setEmpno(resultSet.getInt("empno"));
                empVO.setEname(resultSet.getString("ename"));
                empVO.setJob(resultSet.getString("job"));
                empVO.setMgr(resultSet.getInt("mgr"));
                empVO.setHiredate(resultSet.getString("hiredate"));
                empVO.setSal(resultSet.getInt("sal"));
                empVO.setComm(resultSet.getInt("comm"));
                empVO.setDeptno(resultSet.getInt("deptno"));
                empVOList.add(empVO);

            }

        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            try{
                if(connection!=null||pstmt!=null||resultSet!=null){
                    connection.close();
                    pstmt.close();
                    resultSet.close();
                }

            }catch (Exception e){

            }
        }
        request.setAttribute("list", empVOList);
        return new ActionForWard(path, isRedirect);
    }
}
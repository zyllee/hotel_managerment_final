package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;

public class checkinServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		String url = "jdbc:sqlserver://localhost:1433;Database=hotel_db";
		String user = "sa";
		String pwd = "123";
		String username = request.getParameter("user");
		String upwd = request.getParameter("pwd");
		String customerName = request.getParameter("customerName");
		String customerIDCard = request.getParameter("customerIDCard");
		String customerGender = request.getParameter("customerGender");
		String remarks = request.getParameter("remarks");
		String roomNumber = request.getParameter("roomNumber");
		Connection conn;
		//String sql2 = "select * from "+(roomNumber)+" where customerName="+(customerName)+"";
		String sql = "insert orders values(3,'Ô¤¶©ÖÐ','511023199810101871','1002','2018-12-1','2018-12-2',150,null,'2018-11-30')";
//		list
		try {
			Class.forName(driverName);
			try {
				conn = DriverManager.getConnection(url,user,pwd);
				PreparedStatement ps = conn.prepareStatement(sql);
				ps.setInt(1,1);
				ps.setString(2,"Ô¤¶©ÖÐ");
				ps.setString(3, customerIDCard);
				ps.setString(4, roomNumber);
				ResultSet rs = ps.executeQuery();
//				while(rs.next()){
//					String name = rs.getString("orderStatus");
//					Map<K, V> map ;
//					map.put(key, value)
//					list.add(map);
//				}
//				JSONArray json = JSONArray.fromObject(list);
//				out.print(json);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

}

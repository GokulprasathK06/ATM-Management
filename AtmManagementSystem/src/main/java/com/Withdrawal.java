/*
 Title:ATM Management System
 Author: Gokulprasath.K
 created on:10-01-2023
 updated on:05-04-2023
Reviewed on:04.04.2022
Reviewed by:Anushya Narayanan
 */
package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Withdrawal
 */
public class Withdrawal extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Withdrawal() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		String username = request.getParameter("username");
		int amount=Integer.parseInt(request.getParameter("amount"));
		//int username=Integer.parseInt(request.getParameter("username"));
		//int balance=0;
		//int withdraw;

		HttpSession session = request.getSession();

		RequestDispatcher dispatcher = null;

		try {

		Class.forName("com.mysql.cj.jdbc.Driver");

		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Atmmachine","root","gokul@06");
		String selectQuery = "SELECT balance FROM atm WHERE username = ?";
        PreparedStatement selectStatement = connection.prepareStatement(selectQuery);
        selectStatement.setString(1, username);
        ResultSet resultSet = selectStatement.executeQuery();

        if (resultSet.next()) {
            int balance = resultSet.getInt("balance");

            // Check if the balance is sufficient
            if (balance >= amount) {
                int newBalance = balance - amount;

                // Perform the withdrawal
                String updateQuery = "UPDATE atm SET balance = ? WHERE username = ?";
                PreparedStatement updateStatement = connection.prepareStatement(updateQuery);
                updateStatement.setInt(1, newBalance);
                updateStatement.setString(2, username);
                updateStatement.executeUpdate();

                // Close database resources
                updateStatement.close();
                resultSet.close();
                selectStatement.close();
                connection.close();

                // Forward to the final JSP page with attributes
                request.setAttribute("newBalance", newBalance);
                 dispatcher = request.getRequestDispatcher("Withdraw1.jsp");
                dispatcher.forward(request, response);
            } else {
                // Insufficient balance
                response.getWriter().println("Insufficient balance.");
            }
        } else {
            // User not found
            response.getWriter().println("User not found.");
        }

        // Close database resources
        resultSet.close();
        selectStatement.close();
        connection.close();
    }
		/*PreparedStatement pst = connection.prepareStatement("Select balance from Atm where username=?");

		pst.setString(1, "username" );

		

		ResultSet resultset = pst.executeQuery();
		if(resultset.next()) {
			balance=resultset.getInt("balance");
			if(balance>=amount) {
				int updateBalance=balance-amount;
				String updateQuery="update atm set balance=? where username=?";
				PreparedStatement st=connection.prepareStatement(updateQuery);
				st.setInt(1, updateBalance);
				st.setString(2, "username");
				/*int rowsaffected=st.executeUpdate();
				if(rowsaffected>0) {
					dispatcher = request.getRequestDispatcher("Withdraw1.jsp");
				}
				else {

					request.setAttribute("status", "failed");

					dispatcher=request.getRequestDispatcher("ChangedPin.jsp");

					}
				dispatcher.forward(request, response);
			pst.executeUpdate();
			pst.close();
			resultset.close();
			st.close();
			connection.close();
			request.setAttribute("balance",balance);
			dispatcher= request.getRequestDispatcher("Withdraw1.jsp");
			
			}
			else {
				response.getWriter().println("Insufficient Balance.");
			}
			
			
		}
		resultset.close();
		pst.close();
		connection.close();
		}*/
		
		catch(Exception exception) {

			exception.printStackTrace();

		}
	
	}

	
		/*balance -=amount;
		pst=connection.prepareStatement("update atm set balance=? where username=?");
		pst.setInt(1,balance);
		pst.setString(2, "username");
		pst.executeUpdate();
		resultset.next();
		if(resultset.next()) {

			session.setAttribute("username", resultset.getString("username"));

			dispatcher = request.getRequestDispatcher("Withdraw1.jsp");

			}else {

			request.setAttribute("status", "failed");

			dispatcher=request.getRequestDispatcher("Withdraw.jsp");

			}

			dispatcher.forward(request, response);

		}
		Class.forName("com.mysql.cj.jdbc.Driver");

		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Atmmachine","root","gokul@06");

		PreparedStatement preparedstatement = connection.prepareStatement("Select*from Atm where username=?");

		preparedstatement.setString(1,username );


		ResultSet resultset = preparedstatement.executeQuery();

		if(resultset.next()) {

		session.setAttribute("username", resultset.getString("username"));

		dispatcher = request.getRequestDispatcher("Withdraw1.jsp");

		}else {

		request.setAttribute("status", "failed");

		dispatcher=request.getRequestDispatcher("Withdrawal.jsp");

		}

		dispatcher.forward(request, response);

		}
		catch(Exception e) {

			e.printStackTrace();

			}
		}*/
	
	
		

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

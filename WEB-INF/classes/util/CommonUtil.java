package util;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;

import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;


public class CommonUtil {
	
	public String readXML(String name)  {

		 StringBuffer buffer=new StringBuffer();
	     
		 try {
		   InputStream is =
				   this.getClass().getClassLoader().getResourceAsStream("config/address.xml");
	       DocumentBuilderFactory builderFactory = 
	    		    DocumentBuilderFactory.newInstance();
		   DocumentBuilder builder =  builderFactory.newDocumentBuilder();
		   Document xmlDocument = builder.parse(is);
		   XPath xPath =  XPathFactory.newInstance().newXPath();
		 
		   System.out.println("ccard 출력");
		   String expression = "/addresses/address[@name='"+name+"']/ccard";

		   NodeList nodeList = (NodeList) xPath.compile(expression).evaluate(xmlDocument, XPathConstants.NODESET);
		   for (int i = 0; i < nodeList.getLength(); i++) {
			   buffer.append("CCARD[ "+i+ " ]  "+nodeList.item(i).getTextContent()+"<br/>");
		   }

		        } catch (FileNotFoundException e) {
		            e.printStackTrace();
		        } catch (SAXException e) {
		            e.printStackTrace();
		        } catch (IOException e) {
		            e.printStackTrace();
		        } catch (ParserConfigurationException e) {
		            e.printStackTrace();
		        } catch (XPathExpressionException e) {
		            e.printStackTrace();
		        } catch (Exception e) {
		        	e.printStackTrace();
		        }
		        if ( buffer.length() == 0) {
		        	buffer.append("검색된 결과가 없습니다.");
		        }
	        	return buffer.toString();
		}
		
		public String readDB(String id, String passwd) {
			StringBuffer  result=new StringBuffer();
			Connection con=null;
			Statement st=null;
			ResultSet rs=null;
			try {
				con = EConnection.getConnection(this);	
				st = con.createStatement();
				rs = st.executeQuery("select * from member where userid='"+id+"' and password='"+passwd+"'");
	   		    if ( rs.next() ) {
				       result.append("ID: "+rs.getString(2));
				       result.append("    PASSWORD: "+rs.getString(3));
				}
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				
			}
		
				if ( rs != null ) try { rs.close(); }catch(SQLException e){}
				if ( st != null ) try { st.close(); }catch(SQLException e){}
				if ( con != null ) try { con.close(); }catch(SQLException e){}
	            
				return result.toString();
		}
		
		public String readDB2(String id) {
			StringBuffer  result=new StringBuffer();
			Connection con=null;
			Statement st=null;
			ResultSet rs=null;
			try {
				con = EConnection.getConnection(this);	
				st = con.createStatement();
				rs = st.executeQuery("select * from member where userid='"+id+"'");
	   		    while ( rs.next() ) {
	   		    	   result.append("IDX: "+rs.getString(1));
				       result.append("      ID: "+rs.getString(2));
				       result.append("      PASSWORD: "+rs.getString(3));
				       result.append("      이름: "+rs.getString(4)+"\n");
				}
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
			
			}
		
				if ( rs != null ) try { rs.close(); }catch(SQLException e){}
				if ( st != null ) try { st.close(); }catch(SQLException e){}
				if ( con != null ) try { con.close(); }catch(SQLException e){}
	            
				return result.toString();
		}
		
		
		
	}

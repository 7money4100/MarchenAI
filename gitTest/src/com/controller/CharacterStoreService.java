package com.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.*;

/**
 * Servlet implementation class CharacterStoreService
 */
@WebServlet("/CharacterStoreService")
public class CharacterStoreService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CharacterDAO dao = new CharacterDAO();
		HttpSession session = request.getSession();
		Boolean isRan = (Boolean) session.getAttribute("isRan");
		String gid = (String) session.getAttribute("gid");
		MemberDTO loginDTO = (MemberDTO) session.getAttribute("info");
		String member_id = "";

		if (loginDTO == null) {
			response.sendRedirect("login.jsp");
		} else {
			member_id = loginDTO.getMember_id();
		}
		for(int i=0;i<9;i++) {
			String fileNm = "characterImg/"+gid+"_"+String.valueOf(i)+".jpg";
			CharacterDTO dto = new CharacterDTO(fileNm,member_id,gid);
			dao.insert(dto);
		}
		if(isRan) {
			copyDir("G:/내 드라이브/Colab/java/IndieIndie/WebContent/random","G:/내 드라이브/Colab/java/IndieIndie/WebContent/characterImg");
			deleteDir("G:/내 드라이브/Colab/java/IndieIndie/WebContent/random");
			makeDir("G:/내 드라이브/Colab/java/IndieIndie/WebContent/random");
		}else {
			copyDir("G:/내 드라이브/Colab/java/IndieIndie/WebContent/similar","G:/내 드라이브/Colab/java/IndieIndie/WebContent/characterImg");
			deleteDir("G:/내 드라이브/Colab/java/IndieIndie/WebContent/similar");
			makeDir("G:/내 드라이브/Colab/java/IndieIndie/WebContent/similar");
		}
		response.sendRedirect("/gitTest/CharacterListService");
	}
	
	void deleteDir(String ipath) {
		String path = ipath;
		File folder = new File(path);
		try {
		    while(folder.exists()) {
			File[] folder_list = folder.listFiles(); //파일리스트 얻어오기
					
			for (int j = 0; j < folder_list.length; j++) {
				folder_list[j].delete(); //파일 삭제 
				System.out.println("파일이 삭제되었습니다.");
						
			}
					
			if(folder_list.length == 0 && folder.isDirectory()){ 
				folder.delete(); //대상폴더 삭제
				System.out.println("폴더가 삭제되었습니다.");
			}
	            }
		 } catch (Exception e) {
			e.getStackTrace();
		}
	}
	
	void copyDir(String path1, String path2) {
		File folder1 = new File(path1);
		File folder2 = new File(path2);
			
		File[] target_file = folder1.listFiles();
		for (File file : target_file) {
			File temp = new File(folder2.getAbsolutePath() + File.separator + file.getName());
			if(file.isDirectory()){
				temp.mkdir();
			} else {
				FileInputStream fis = null;
				FileOutputStream fos = null;
				try {
					fis = new FileInputStream(file);
					fos = new FileOutputStream(temp) ;
					byte[] b = new byte[4096];
					int cnt = 0;
					while((cnt=fis.read(b)) != -1){
						fos.write(b, 0, cnt);
					}
				} catch (Exception e) {
					e.printStackTrace();
				} finally{
					try {
						fis.close();
						fos.close();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
						
				}
			}
		}
	}
	
	void makeDir(String path0) {
		String path = path0; //폴더 경로
		File Folder = new File(path);

		// 해당 디렉토리가 없을경우 디렉토리를 생성합니다.
		if (!Folder.exists()) {
			try{
			    Folder.mkdir(); //폴더 생성합니다.
			    System.out.println("폴더가 생성되었습니다.");
		        } 
		        catch(Exception e){
			    e.getStackTrace();
			}        
	         }else {
			System.out.println("이미 폴더가 생성되어 있습니다.");
		}
	}

}

package main;
import java.io.*;

import java.net.URLEncoder;
import java.util.Map;
import javax.servlet.http.*;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;



public class FreeboardDownView extends AbstractView {

	public FreeboardDownView() {
		setContentType("application/download; charset=euc-kr");
	}

	@Override
	protected void renderMergedOutputModel(Map<String, Object> model,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		File file = (File)model.get("downloadFile");
		response.setContentType(getContentType());
		response.setContentLength((int)file.length());
		String userAgent = request.getHeader("User-Agent");
		boolean ie = userAgent.indexOf("MSIE") > -1;
		String fileName = null;

		if(ie) {
			fileName = URLEncoder.encode(file.getName(), "euc-kr");
		} else {
			fileName = new String(file.getName().getBytes("euc-kr"), "iso-8859-1");
		}

		response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\";");
		response.setHeader("Content-Transfer-Encoding", "binary");
		OutputStream out = response.getOutputStream();
		FileInputStream fis = null;

		try {
			fis = new FileInputStream(file);
			FileCopyUtils.copy(fis, out);
		} finally {
			if(fis != null) {
				try {
					fis.close();
				} catch(IOException ioe) {}
			}
		}
		out.flush();
	}
}

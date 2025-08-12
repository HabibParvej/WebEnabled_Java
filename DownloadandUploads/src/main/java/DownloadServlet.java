import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DownloadServlet extends HttpServlet {
    private static final String UPLOAD_DIR = "files";

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        String fileName = request.getParameter("name");
        String filePath = getServletContext().getRealPath("") + File.separator + UPLOAD_DIR + File.separator + fileName;
        File file = new File(filePath);

        if (file.exists()) {
            response.setContentType("application/octet-stream");
            response.setHeader("Content-Disposition", "attachment;filename=" + fileName);
            FileInputStream in = new FileInputStream(file);
            ServletOutputStream out = response.getOutputStream();

            byte[] buffer = new byte[4096];
            int bytesRead;
            while ((bytesRead = in.read(buffer)) != -1) {
                out.write(buffer, 0, bytesRead);
            }
            in.close();
            out.close();
        } else {
            response.getWriter().println("File not found!");
        }
    }
}

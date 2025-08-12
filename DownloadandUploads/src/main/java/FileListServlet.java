import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FileListServlet extends HttpServlet {
    private static final String UPLOAD_DIR = "files";

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String uploadPath = getServletContext().getRealPath("") + File.separator + UPLOAD_DIR;
        File folder = new File(uploadPath);
        File[] files = folder.listFiles();

        response.setContentType("text/html");
        response.getWriter().println("<h2>Uploaded Files</h2>");
        if (files != null) {
            for (File file : files) {
                response.getWriter().println(
                    "<a href='download?name=" + file.getName() + "'>" + file.getName() + "</a><br>"
                );
            }
        }
    }
}

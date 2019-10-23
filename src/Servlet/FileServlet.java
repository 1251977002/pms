package Servlet;

import entity.*;
import entity.File;
import service.*;
import util.BaseServlet;
import util.DateUtil;
import util.Page;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;
import java.util.Collection;
import java.util.List;
import java.util.Properties;

@WebServlet(urlPatterns = "/file/*")
@MultipartConfig(maxFileSize = 1024 * 1024 * 10, maxRequestSize = 100 * 1024 * 1024)
public class FileServlet extends BaseServlet {
    private FileTypeService fileTypeService = new FileTypeService();
    private FileService fileService = new FileService();


    //获得文件的根路径
    private static String filePath;

    static {
        try {
            Properties prop = new Properties();
            InputStream is = FileServlet.class.getClassLoader().getResourceAsStream("file.properties");
            prop.load(is);
            filePath = prop.getProperty("file.path");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void showfile(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("/WEB-INF/views/file.jsp").forward(request, response);
    }

    public void createfile(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("/WEB-INF/views/new_folder.jsp").forward(request, response);
    }

    public void filename(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String filetypeid = request.getParameter("id");
        int id = Integer.parseInt(filetypeid);
        HttpSession session = request.getSession();
        session.setAttribute("filetypeid",id);


        /*FileService fileService = new FileService();
        File file = fileService.findThisFile(id);


        request.setAttribute("file", file);*/


        request.getRequestDispatcher("/WEB-INF/views/singlefile.jsp").forward(request, response);
    }

    //文件夹分页
    public void findByPage(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        Project project = (Project) session.getAttribute("project");
        FileService fileService = new FileService();
        //Document document = documentService.findDocumentByUserIdAndProjectId(user.getId(),project.getId());

        String pageNo = request.getParameter("pageNo");
        Page<Filetype> page = fileTypeService.findByPage(Integer.valueOf(pageNo));

        outJson(response, page);
    }

    //新建文件夹
    public void addfile(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String filename = request.getParameter("filename");
        System.out.println(filename);
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        File file1 = (File) session.getAttribute("file");
        int fileTypeId = fileTypeService.save(filename, user);
        //在服务器创建文件夹
        new java.io.File(filePath + filename).mkdirs();

        request.getRequestDispatcher("/WEB-INF/views/file.jsp").forward(request, response);
    }

    //文件分页
    public void findByPagetype(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //HttpSession session = request.getSession();
        // User user = (User) session.getAttribute("user");
        //Filetype filetype = fileService.finfiletypedByUserId(user.getId());
        FileService fileService = new FileService();
        String filetypeid = request.getParameter("filetypeid");
        String pageNo = request.getParameter("pageNo");
        Page<File> page = fileService.findByPagetype(Integer.valueOf(pageNo), Integer.parseInt(filetypeid));

        outJson(response, page);
    }

    //删除小文件
    public void del(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer fileid = Integer.valueOf(request.getParameter("id"));
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        Project project = (Project) session.getAttribute("project");
        Integer filetypeid = (Integer) session.getAttribute("filetypeid");


        FileService fileService = new FileService();
        Filetype filetype = fileService.findByFileTypeId(filetypeid);
        File file = fileService.findfileByfileid(fileid);


        java.io.File file1 = new java.io.File(filePath + filetype.getName() + file.getPath());
        if (user.getId() == file.getUserid()) {
            fileService.delFile(fileid);
            if (file1.exists()) {
                file1.delete();
                request.getRequestDispatcher("/WEB-INF/views/file.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("/WEB-INF/views/file.jsp").forward(request, response);
            }
        }else {
            System.out.println("您没有权力删除");
        }


    }

    //删除文件夹
    public void delFiletype(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //文件夹id
        int fileTypeId = Integer.parseInt(request.getParameter("id"));
        FileService fileService = new FileService();
        fileService.deFile(fileTypeId);
        request.getRequestDispatcher("/WEB-INF/views/file.jsp").forward(request, response);
    }

    //上传文件到本地磁盘
    public void uploadFile(HttpServletRequest request, HttpServletResponse response) {
        //文件名
        String filename = request.getParameter("newfilename");
        FileService fileService = new FileService();
        //获取user
        User user = (User) request.getSession().getAttribute("user");
        //文件夹id
        //System.out.println(request.getParameter("filetypeid"));
       // int fileTypeId = Integer.parseInt(request.getParameter("filetypeid"));
        HttpSession session = request.getSession();
        Integer fileTypeId = (Integer) session.getAttribute("filetypeid");
        Filetype fileType = fileService.findByFileTypeId(fileTypeId);
        //捕获上传是会发生的异常
        try {
            Collection<Part> parts = request.getParts();
            String fileSize = null;
            for (Part part : parts) {
                //保存文件到文件夹
                if (part.getName().equals("file")) {
                    String path = "/" + filename + part.getSubmittedFileName().substring(part.getSubmittedFileName().lastIndexOf("."));
                    part.write(filePath + fileType.getName() + "/" + path);
                    fileSize = String.valueOf(part.getSize());
                    fileService.save(filename, user, fileTypeId, path, fileSize);
                }
            }

            response.sendRedirect("/file/filename?id=" + fileTypeId);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException();
        }
    }

    //去文件上传页面
    public void newfile(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/new_file.jsp").forward(request, response);
    }


    //预览文件
    public void previewFile(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //文件id
        int fileId = Integer.parseInt(request.getParameter("id"));
        File file = fileService.findById(fileId);
        //文件夹
        Filetype fileType = fileTypeService.findByFileTypeId(file.getFiletypeid());
        //获取输入流
        BufferedInputStream bis = new BufferedInputStream(new FileInputStream(filePath + fileType.getName() + "\\"  + file.getPath()));
        //获取输出流
        BufferedOutputStream bos = new BufferedOutputStream(response.getOutputStream());
        byte[] buff = new byte[1024];
        int len = -1;
        while ((len = bis.read(buff)) != -1) {
            bos.write(buff, 0, len);
        }
        bis.close();
        bos.flush();
        bos.close();
    }
    //下载文件
    public void downLoadFile(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //文件id
        int fileId = Integer.parseInt(request.getParameter("id"));
        File file = fileService.findById(fileId);
        //文件夹
        Filetype fileType = fileTypeService.findByFileTypeId(file.getFiletypeid());
        response.setHeader("Content-Disposition", "attchment;filename="+file.getPath());
        //获取输入流
        BufferedInputStream bis = new BufferedInputStream(new FileInputStream(filePath + fileType.getName() + file.getPath()));
        //获取输出流
        BufferedOutputStream bos = new BufferedOutputStream(response.getOutputStream());
        byte[] buff = new byte[1024];
        int len = -1;
        while((len = bis.read(buff)) != -1){
            bos.write(buff,0,len);
        }
        bis.close();
        bos.flush();
        bos.close();
    }


}

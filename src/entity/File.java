package entity;

public class File {
    private int id;
    private String path;
    private String filename;
    private String filesize;

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    private String createtime;
    private int filetypeid;
    private int userid;
    private String username;
    private String filesizes;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getFilesize() {
        return filesize;
    }

    public void setFilesize(String filesize) {
        this.filesize = filesize;
    }



    public int getFiletypeid() {
        return filetypeid;
    }

    public void setFiletypeid(int filetypeid) {
        this.filetypeid = filetypeid;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getFilesizes() {
        return filesizes;
    }

    public void setFilesizes(String filesizes) {
        this.filesizes = filesizes;
    }

}

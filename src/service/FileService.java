package service;

import Dao.FileDao;
import entity.File;
import entity.Filetype;
import entity.User;
import util.DateUtil;
import util.Page;

import java.util.List;

public class FileService {
    FileDao fileDao = new FileDao();

    public List<Filetype> findAll(int id) {
        return fileDao.findAll(id);
    }

    public Page<File> findByPage(Integer pageNo) {
        return fileDao.findByPage(pageNo);
    }

    public void addfile(File file) {
        fileDao.addfile(file);
    }

    public File findThisFile(int id) {
        return fileDao.findThisFile(id);

    }
    //通过userid和projectid找到该文件目录下的文件类型
    public List<File> findThisFileType(int id) {
        return fileDao.findThisFileType(id);
    }


    public Page<File> findByPagetype(Integer pageNo,Integer filetypeid) {
        return fileDao.findByPagetype(pageNo,filetypeid);
    }

    public void delFile(Integer fileid) {
        fileDao.delFile(fileid);
    }

    public void deFile(int id) {
        fileDao.deFile(id);
    }
    public Filetype findByFileTypeId(int fileTypeId) {
        return fileDao.findByFileTypeId(fileTypeId);
    }

    public void save(String filename, User user, int fileTypeId, String path, String fileSize) {
        File file = new File();
        file.setPath(path);
        file.setFilename(filename);
        file.setFilesize(fileSize);
        file.setCreatetime(DateUtil.getStringDate());
        file.setFiletypeid(fileTypeId);
        file.setUserid(user.getId());
        file.setUsername(user.getUsername());
        fileDao.save(file);
    }

    public File findById(int fileId) {
        return fileDao.findById(fileId);
    }

    public File findfileByfileid(Integer fileid) {
        return fileDao.findfileByfileid(fileid);

    }
}

package service;

import Dao.FileTypeDao;
import entity.Filetype;
import entity.User;
import util.DateUtil;
import util.Page;

public class FileTypeService {
    private FileTypeDao fileTypeDao = new FileTypeDao();
    public int save(String filename, User user) {
        String createTime = DateUtil.getStringDate();
        Filetype fileType = new Filetype();
        fileType.setName(filename);
        fileType.setCreatetime(createTime);
        fileType.setUserid(user.getId());
        fileType.setStatus("新建");
        fileType.setUsername(user.getUsername());
        return fileTypeDao.save(fileType);
    }

    public Page<Filetype> findByPage(Integer valueOf) {
        return fileTypeDao.findByPage(valueOf);
    }

    public Filetype findByFileTypeId(int filetypeid) {
        return fileTypeDao.findByFileTypeId(filetypeid);
    }
}

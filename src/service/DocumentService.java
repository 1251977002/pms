package service;

import Dao.DocumentDao;
import entity.Document;
import entity.Documentcomment;
import entity.Idea;
import util.Page;

import java.util.List;

public class DocumentService {
    DocumentDao documentDao = new DocumentDao();

    public List<Document> findAll() {
        return documentDao.findAll();
    }

    public Document findDocumentByUserIdAndProjectId(int id, int id1) {
        return documentDao.findDocumentByUserIdAndProjectId(id,id1);
    }
    public Page<Document> findByPage(Integer pageNo) {
        return documentDao.findPage(pageNo);
    }

    public void adddocument(Document document) {
        documentDao.adddocument(document);
    }

    public Document finddocumentid(int id) {
        return documentDao.finddocumentid(id);
    }

    public Page<Documentcomment> findByDocumentId(int documentId, int pageNo) {
        return documentDao.findByIdeaId(documentId,pageNo);
    }

    public void adddocumentcomment(Documentcomment documentcomment) {
        documentDao.adddocumentcomment(documentcomment);
    }
}

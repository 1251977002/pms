package util;

import java.util.List;

public class Page<T> {
    //每页显示条数
    private long pageSize = 3;
    //当前页
    private long pageNo;
    //总页数
    private long totalPage;
    //总条数
    private long totalSize;



    public Page(long totalSize,long pageNo){
        this.totalSize = totalSize;
        this.pageNo = pageNo;
        this.totalPage = getTotalPage();
    }

    //每页的记录
    private List<T> pageList;

    public long getPageNo() {

        return pageNo;
    }

    public void setPageNo(long pageNo) {

        if(pageNo <= 0){
            pageNo = 1;
        }

        if(pageNo > getTotalPage()){
            pageNo = totalPage;
        }

        this.pageNo = pageNo;
    }


    public long getTotalPage() {
        if(totalSize % pageSize == 0){
            totalPage = totalSize / pageSize;
        }else{
            totalPage = (totalSize / pageSize) + 1;
        }
        return totalPage;
    }

    public long getTotalSize() {
        return totalSize;
    }

    public void setTotalSize(long totalSize) {
        this.totalSize = totalSize;
    }

    public long getPageSize() {
        return pageSize;
    }

    public void setPageSize(long pageSize) {
        this.pageSize = pageSize;
    }

    public List<T> getPageList() {
        return pageList;
    }

    public void setPageList(List<T> pageList) {
        this.pageList = pageList;
    }
}

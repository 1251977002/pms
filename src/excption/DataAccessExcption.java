package excption;

public class DataAccessExcption extends RuntimeException {
    public DataAccessExcption(){
        super();
    }
    public DataAccessExcption(String msg){
        super(msg);
    }
    public DataAccessExcption(String msg, Throwable throwable){
        super(msg,throwable);
    }
}

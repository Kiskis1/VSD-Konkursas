package main;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import javax.jws.WebService;
import javax.jws.WebMethod;

/**
 *
 * @author laimis
 */
@WebService
public class RTDateTime {

    DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"); 
    
    @WebMethod
    public String getDateTime() {
        LocalDateTime dateTime = LocalDateTime.now();
        String formatDateTime = dateTime.format(format);   
        return formatDateTime;
    }
}

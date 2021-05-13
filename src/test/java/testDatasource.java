import com.nail.post.service.BaseTest;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import javax.sql.DataSource;
import java.sql.Connection;

/**
 * Created By XJL On 2017/10/23
 */
public class testDatasource extends BaseTest
{
    @Autowired
    private DataSource dataSource;
    private Connection conn = null;

    @Test
    public void testDataSource(){
        try {
            conn = dataSource.getConnection();
            System.out.println("++++++++++++++++"+conn);
        }
        catch (Exception e){
            e.printStackTrace();
        }


    }

}

package framework;

import lombok.SneakyThrows;
import lombok.experimental.UtilityClass;
import org.apache.commons.lang3.RandomStringUtils;
import org.yaml.snakeyaml.external.biz.base64Coder.Base64Coder;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Base64;
import java.util.Date;

@UtilityClass
public class PathUtils {

    public String resultsPath;

    @SneakyThrows //Alternative to using throws <exception> at a method level and prevents exception chaining
    public void applySleep(long time)
    {
        Thread.sleep(time);
    }

    public String generateResultsFolder()
    {
        File f1=new File(System.getProperty("user.dir")+"//Results//"+getCurrentDateTime("dd-MM-yyyy hh-mm-ss"));

        f1.mkdirs();

        resultsPath=f1.getPath();

        return resultsPath;
    }

    public String getResultsPath()
    {
        return resultsPath;
    }

    public String getCurrentDateTime(String format)
    {
        SimpleDateFormat sdf=new SimpleDateFormat(format);
        Date d1=new Date();
        return sdf.format(d1);
    }

    public String getScreenshotPath(String... imgName)
    {
        File f1=new File(System.getProperty("user.dir")+"//Screenshots//"+getCurrentDateTime("dd-MM-yyyy"));

        f1.mkdirs(); //Creates the missing directories
        if(imgName.length==0)
        {
            return f1.getPath()+"//"+getCurrentDateTime("hh-mm-ss-SSS")+".png";
        }

        else
        {
            return f1.getPath()+"//"+imgName[0]+"_"+getCurrentDateTime("hh-mm-ss-SSS")+".png";
        }
    }

    public String getScreenshotPath_Results(String... imgName)
    {
        File f1=new File(resultsPath+"//Screenshots//");

        f1.mkdirs(); //Creates the missing directories
        if(imgName.length==0)
        {
            return f1.getPath()+"//"+getCurrentDateTime("hh-mm-ss-SSS")+".png";
        }

        else
        {
            return f1.getPath()+"//"+imgName[0]+"_"+getCurrentDateTime("hh-mm-ss-SSS")+".png";
        }
    }

    public String getDownloadsFolderPath()
    {
        return System.getProperty("user.dir")+"//Downloads";
    }

    public String getPropertiesFolder(String environment)
    {
        return System.getProperty("user.dir")+"//src//test//resources//PropertiesFolder/"+environment+"Config.properties";
    }

    public String getTestDataFolder()
    {
        return System.getProperty("user.dir")+"//src//test//resources//Test_Data//";
    }

    public String generateRandomNumber(int length)
    {
        String data=RandomStringUtils.randomNumeric(length); //This is used to generate a random number of the specified length

        while(data.startsWith("0"))
        {
            data=RandomStringUtils.randomNumeric(length); //This is used to generate a random number of the specified length
        }

        return data;
    }

    public String getExtentReportsPath()
    {
        return resultsPath+"/ExtentReports.html";
    }

    public String getExtentReportsPath(String testCaseName)
    {
        return resultsPath+"/ExtentReports_"+testCaseName+".html";
    }

    public String getStepsLogPath(String testCaseName)
    {
        return resultsPath+"/StepsLog_"+testCaseName+".txt";
    }

    public String getAPIPayload()
    {
        return System.getProperty("user.dir")+"//src//test//resources//jsonPayloads//";
    }

    public String decodePassword(String password)
    {
        return Base64Coder.decodeString(password);
    }

    private String encodePassword(String password)
    {
        return Base64.getEncoder().encodeToString(password.getBytes());
    }

    public static void main(String[] args) {

        //SHY4N09NOHd6bHQ0

        //System.out.println(encodePassword("Hv87OM8wzlt4"));

        System.out.println(decodePassword("SHY4N09NOHd6bHQ0"));
    }
}

package framework;

import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.edge.EdgeOptions;
import org.openqa.selenium.firefox.FirefoxOptions;
import org.openqa.selenium.safari.SafariOptions;

import java.util.HashMap;
import java.util.Map;

public class OptionsManager {

    private PropertiesUtil prop = new PropertiesUtil();

    //Options in Browser are used to customize it
    //1. Run in Incognito mode
    //2. Run in headless mode
    //3. Start the browser maximized
    //4. Disable notifications
    //5. Set the path for the download folder
    //6. Disable the pop up for saving the password, credentials
    //7. Disable the pop up for saving the bookmarks
    //8. Disable 'Chrome is being controlled by automated test software' message

    private ChromeOptions options = new ChromeOptions();
    private FirefoxOptions firefoxOptions = new FirefoxOptions();
    private EdgeOptions edgeOptions = new EdgeOptions();
    private SafariOptions safariOptions = new SafariOptions();

    public SafariOptions getSafariOptions() {

        safariOptions.setAutomaticInspection(false);
        safariOptions.setAutomaticProfiling(false);

        options.setCapability("safari:useTechnologyPreview", true);
        options.setCapability("safari:automaticInspection", true);
        options.setCapability("safari:automaticProfiling", false);

        return safariOptions;
    }

    public FirefoxOptions getFirefoxOptions()
    {
        if(prop.getHeadlessTest().equalsIgnoreCase("true") || prop.getHeadlessTest().equalsIgnoreCase("yes"))
            firefoxOptions.addArguments("--headless");

        firefoxOptions.addArguments("--start-maximized");

        if(prop.getIncognitoMode().equalsIgnoreCase("true") || prop.getIncognitoMode().equalsIgnoreCase("yes"))
            firefoxOptions.addArguments("--incognito");

        //Disable the message "Firefox is being controlled by automated test software"
        firefoxOptions.setCapability("useAutomationExtension", false);

        return firefoxOptions;
    }

    public ChromeOptions getChromeOptions()
    {
        options.addArguments("--start-maximized");
        options.addArguments("--disable-notifications");

        //Disable the message "Chrome is being controlled by automated test software"
        options.setExperimentalOption("excludeSwitches", new String[]{"enable-automation"});

        //Disable extensions of automation
        options.setExperimentalOption("useAutomationExtension", false);

        options.addArguments("--disable-save-password-bubble");

        Map<String, Object> prefs = new HashMap<>();

        prefs.put("profile.default_content_settings.popups", 0); //Disable the pop up for saving the password, credentials
        prefs.put("download.default_directory", PathUtils.getDownloadsFolderPath()); //Set the path for the download folder
        prefs.put("download.prompt_for_download", false); //Disable the pop up for downloads
        prefs.put("profile.default_content_setting_values.notifications", 2); //Disable notifications
        prefs.put("profile.default_content_setting_values.media_stream_camera",1); //Enable Camera Settings
        prefs.put("credentials_enable_service", false); //Disable the pop up for saving the password, credentials
        prefs.put("profile.password_manager_enabled", false); //Disable the pop up for saving the password, credentials

        options.addArguments("--use-fake-ui-for-media-stream"); // Automatically allow location access
        if(!prop.getResolutionSize().isBlank())
        options.addArguments("window-size="+prop.getResolutionSize());

        options.addArguments(
                "--disable-blink-features=AutomationControlled",
                "--disable-notifications",
                "--disable-save-password-bubble",
                "--disable-password-generation",
                "--disable-credential-manager-ui",
                "start-maximized",
                "--disable-sync"
        );

        if(prop.getIncognitoMode().equalsIgnoreCase("Yes") || prop.getIncognitoMode().equalsIgnoreCase("True"))
        {
            options.addArguments("--incognito");

            Map<String, Object> siteSettings = new HashMap<>();
            siteSettings.put("https://exa-host-core-exa-dev.apps.ocp-dev.pegadaian.co.id:443", 1);  // 1 = Allow

            // 2. Map for content settings types (e.g., geolocation)
            Map<String, Object> profileSettings = new HashMap<>();
            profileSettings.put("geolocation", siteSettings);

            // 3. Combine into default profile settings
            prefs.put("profile.default_content_setting_values.geolocation", 1); // Global default allow (optional)
            prefs.put("profile.managed_default_content_settings.geolocation", 1);
            prefs.put("profile.content_settings.exceptions.geolocation", profileSettings);

        }

        options.setExperimentalOption("prefs", prefs);

        if(prop.getHeadlessTest().equalsIgnoreCase("Yes") || prop.getHeadlessTest().equalsIgnoreCase("True"))
        {
            options.addArguments("--headless");
        }

        return options;
    }

    public EdgeOptions getEdgeOptions() {
        edgeOptions.addArguments("--start-maximized");
        edgeOptions.addArguments("--disable-notifications");

        //Disable the message "Chrome is being controlled by automated test software"
        edgeOptions.setExperimentalOption("excludeSwitches", new String[]{"enable-automation"});

        //Disable extensions of automation
        edgeOptions.setExperimentalOption("useAutomationExtension", false);

        Map<String, Object> prefs = new HashMap<>();

        prefs.put("profile.default_content_settings.popups", 0); //Disable the pop up for saving the password, credentials
        prefs.put("download.default_directory", PathUtils.getDownloadsFolderPath()); //Set the path for the download folder
        prefs.put("download.prompt_for_download", false); //Disable the pop up for downloads
        prefs.put("profile.default_content_setting_values.notifications", 2); //Disable notifications

        edgeOptions.setExperimentalOption("prefs", prefs);

        edgeOptions.addArguments(
                "--disable-blink-features=AutomationControlled",
                "--disable-notifications",
                "--disable-save-password-bubble",
                "--disable-password-generation",
                "--disable-credential-manager-ui",
                "start-maximized",
                "--disable-sync"
        );

        if(!prop.getResolutionSize().isBlank())
            edgeOptions.addArguments("window-size="+prop.getResolutionSize());


        if(prop.getIncognitoMode().equalsIgnoreCase("Yes") || prop.getIncognitoMode().equalsIgnoreCase("True"))
        {
            edgeOptions.addArguments("--incognito");
        }

        if(prop.getHeadlessTest().equalsIgnoreCase("Yes") || prop.getHeadlessTest().equalsIgnoreCase("True"))
        {
            edgeOptions.addArguments("--headless");
        }

        return edgeOptions;
    }
}

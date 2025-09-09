import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

public class Main {
	public static void main(String[] args) {
		String appName = System.getenv("APP_NAME");
		String author = System.getenv("AUTHOR");
		String version = System.getenv("VERSION");
		String filePath = "/app/poem.txt";
		
		System.out.println("==============================");
		System.out.println("APP_NAME: " + appName);
		System.out.println("Author: " + author);
		System.out.println("Version: " + version);
		System.out.println("==============================");
		
		try {
            String content = Files.readString(Paths.get(filePath));
            System.out.println(content);
        } catch (IOException e) {
            System.err.println("파일 읽기 오류: " + e.getMessage());
            e.printStackTrace();
        }
	}
}
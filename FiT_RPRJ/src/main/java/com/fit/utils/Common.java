package com.fit.utils;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Common {
	public static final String UPLOAD_PATH = "C:\\java\\upload";
	
	public static String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		return str.replace("-", File.separator); // File.separator : OS에 따라 다르므로 이렇게 사용
	}

	public static boolean checkImageType(File file) {
		try {
			String contentType = Files.probeContentType(file.toPath());
			if (contentType != null) // modified by ksseo
				return contentType.startsWith("image"); // image/jpg, image/png, image/gif
			else
				return false;
		} catch (IOException e) {
			e.printStackTrace();
		}
		return false;
	}
}
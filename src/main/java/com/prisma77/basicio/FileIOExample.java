package com.prisma77.basicio;

import javax.servlet.ServletException;
import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class FileIOExample {
    public static void main(String[] args) throws IOException, ServletException {
        try {
            FileOutputStream fos = new FileOutputStream("D:\\files\\file.txt");
            BufferedOutputStream bos = new BufferedOutputStream(fos);
            String content = "Hello World!";
            
            bos.write(content.getBytes());
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}

package com.demo;

import com.entity.Books;
import com.service.BooksService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:service-spring.xml")
public class BooksServiceTest {
    @Autowired
    private BooksService booksService;

    @Test
    public void getAll(){
        List<Books> result = booksService.getAll(2,4);
        for(Books books: result){
            System.out.println(books);
        }
//        booksService.delete(1);
    }
}

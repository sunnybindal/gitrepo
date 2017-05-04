package sunny.poc.controllers;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.IntSummaryStatistics;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.cassandraunit.shaded.com.google.common.collect.ImmutableSet;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.cassandra.repository.MapId;
import org.springframework.data.cassandra.repository.support.BasicMapId;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import sunny.poc.entity.Book;
import sunny.poc.repository.Bookrepository;

import com.datastax.driver.core.Session;

@RestController
@RequestMapping("books")
public class BookController {

	@Autowired
	private Session session;

	@Autowired
	private Bookrepository bookrepository;

	private static final int PAGE_SIZE = 10;

	@RequestMapping(value = "create/{id}", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
	public String createBook(HttpServletRequest request, @PathVariable int id) {
		List<Book> lists = new ArrayList<Book>();
		Map<String, Serializable> map = new HashMap<String, Serializable>();
		map.put("id", id);
		MapId mapId = new BasicMapId(map);
		Book book = bookrepository.findOne(id);
		if (book == null) {
			int maxSize = id + 5 * 100;
			for (int i = id; i <= maxSize; i++) {
				Book book1 = new Book(i, "title" + i, "publishers" + i,"author"+i);
				lists.add(book1);
			}
			bookrepository.save(lists);
			return "success";
		} else {
			return "record already exists by the provided id";
		}
	}

	@RequestMapping(value = "save", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
	public String saveBook(HttpServletRequest request, @RequestBody Book book) {
		if (book != null && book.getId() != null) {
			bookrepository.save(ImmutableSet.of(book));
			return "book saved successfully";
		} else {
			return "error in book saving";
		}
	}

	@RequestMapping("get/{id}")
	public Book getBook(HttpServletRequest request, @PathVariable int id) {
		Map<String, Serializable> map = new HashMap<String, Serializable>();
		map.put("id", id);
		MapId mapId = new BasicMapId(map);
		Book book = bookrepository.findOne(id);
		return book;
	}

	@RequestMapping("getall")
	public Iterable<Book> getAllBook(HttpServletRequest request) {
		List<Book> books = (List<Book>) bookrepository.findAll();
		books = books.stream()
				.filter(book -> StringUtils.isNotBlank(book.getAuthor())).sorted()
				.collect(Collectors.toList());
		IntSummaryStatistics statistics = books.stream()
				.mapToInt(x -> x.getId()).summaryStatistics();
		return books;
	}

	@RequestMapping("title/{title}")
	public Iterable<Book> getAllBookName(HttpServletRequest request,
			@PathVariable String title) {
		Iterable<Book> book = bookrepository.findByTitle(title);
		return book;
	}

	@RequestMapping(value = "update", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
	public String updateBook(HttpServletRequest request, @RequestBody Book book) {
		if (book != null && book.getId() > 0) {
			Map<String, Serializable> map = new HashMap<String, Serializable>();
			map.put("id", book.getId());
			MapId mapId = new BasicMapId(map);
			Book currentSavedBook = bookrepository.findOne(book.getId());
			if (currentSavedBook != null) {
				BeanUtils.copyProperties(book, currentSavedBook);
				bookrepository.save(currentSavedBook);
				return "record has been updated.";
			} else {
				return "no record found by the id";
			}
		}
		return "error in updating the record";
	}

	@RequestMapping(value = "delete/{id}", method = RequestMethod.DELETE)
	public String deleteBook(HttpServletRequest request, @PathVariable int id) {
		Map<String, Serializable> map = new HashMap<String, Serializable>();
		map.put("id", id);
		MapId mapId = new BasicMapId(map);
		try {
			bookrepository.delete(id);
			return "successfully deleted the book";
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "error in deleting";
	}

	@RequestMapping("createtable")
	public String createTable() {
		String query = "CREATE TABLE emp(emp_id int PRIMARY KEY, "
				+ "emp_name text, " + "emp_city text, " + "emp_sal varint, "
				+ "emp_phone varint );";
		try {
			session.execute(query);
			return "table created.";
		} catch (Exception e) {
			return e.getMessage();
		}
	}

	@RequestMapping("page/{pageid}")
	public List<Book> getpaginated(@PathVariable int pageid) {
		if (pageid != 0) {
			List<Book> books = (List<Book>) bookrepository.findAll();
			if(books != null && books.size()>=pageid*PAGE_SIZE) {
				books = books.stream().sorted().skip((pageid - 1) * PAGE_SIZE).limit(PAGE_SIZE).collect(Collectors.toList());
				return books;
			}
		}
		return Arrays.asList(new Book(0,"no books","no books","no auhtor"));
	}
}

package sunny.poc.entity;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.data.cassandra.mapping.PrimaryKey;
import org.springframework.data.cassandra.mapping.Table;

@Table
public class Book implements Comparable<Book>{

	@PrimaryKey
	private Integer id;
	private String title;
	private String publisher;
	private String author;
	
	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public Book() {
		// TODO Auto-generated constructor stub
	}
	
	public Book(int id, String title, String publisher,String  author) {
		// TODO Auto-generated constructor stub
		this.id=id;
		this.title=title;
		this.publisher=publisher;
		this.author=author;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return ToStringBuilder.reflectionToString(this);
	}

	@Override
	public int compareTo(Book o) {
		// TODO Auto-generated method stub
		if (this.getId() == o.getId()) {
			return 0;
		}else if (this.getId() > o.getId()){
			return 1;
		}
		return -1;
	}
}

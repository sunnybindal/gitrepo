package sunny.poc.repository;

import org.springframework.data.cassandra.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import sunny.poc.entity.Book;

@Repository
public interface Bookrepository extends CrudRepository<Book,Integer> {

	Iterable<Book> findByTitleAndPublisher(String title, String publisher);

	@Query("SELECT * FROM Book WHERE title = ?0 ALLOW FILTERING")
	Iterable<Book> findByTitle(String title);

}

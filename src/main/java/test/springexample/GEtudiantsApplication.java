package test.springexample;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;

import test.springexample.dao.IEtudiantRepoitory;
import test.springexample.entities.Etudiant;

@SpringBootApplication
public class GEtudiantsApplication {

	public static void main(String[] args) throws ParseException {
		
		//throws ParseException ici ou je met un try/catch 3al meth "parse"
		
		
		
		//SpringApplication.run(GEtudiantsApplication.class, args);
		
		ApplicationContext context =  SpringApplication.run(GEtudiantsApplication.class, args);
		
		//get un objet "de cette inteface", puisque je connais pas "la ref" de l'objet lui meme
		IEtudiantRepoitory etudiantRepository = context.getBean(IEtudiantRepoitory.class);
		
		
		
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		//new Date() ou dateFormat.parse("1990-01-01")		
		
		
		for(int i=1 ; i<20; i++) {
		etudiantRepository.save(new Etudiant("Oucef"+i,dateFormat.parse("1990-01-01") , "oucef"+i+"@gmail.com", "/images/img"+i+".jpg"));
		//au moment ou je hit save (taw taw) , devTools fait le redemarrage automatique de l'app:sql.show
		//=> console : "Hibernate: insert into etudient (datenaissance, email, nom, photo) values (?, ?, ?, ?)"
		
		
		}
		
		
		System.out.println("\n\n\n");
		
		
		//5 etudiants de la page 0
		Page<Etudiant> etudiants = etudiantRepository .findAll(new PageRequest(0, 5));
		
		//Page<Etudiant> etudiants = etudiantRepository.myFindByMC("%s%",new PageRequest(0, 5));
		
		//expression lambda de java 8 
		etudiants.forEach(e->System.out.println(e.getNom()));
		
		
		
		
		
		
		
	}
}

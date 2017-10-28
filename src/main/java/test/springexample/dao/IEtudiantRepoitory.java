package test.springexample.dao;

import java.util.Date;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import test.springexample.entities.Etudiant;

public interface IEtudiantRepoitory extends JpaRepository<Etudiant,Long>{
	
	//on herite toutes les methodes : ajouter, supprimer, update ( implementation generique )...  de spring DATA
	//au demarrage, spring detecte qu'on a une interface ( generique qui attend deux param <l'entite, le id> )
	//qui herite de jparepository
	//
	//=> spring va instancier cette interface, injecter  l'entite (ici Etudiant) 
	//on aura donc un obj qu'on peut utiliser
	
	/*
	 * 1--le premier qui demarre c Spring  Boot
	 * 2--il va creer un "context" (collection)
	 * 3--au demarrage spring lire le pom.xml, et coommence a ceer les obj
	 * 4--il va creer : mes entites, un datasource, des objs de hibernate,..les met dans une map 'context
	 */
	
	
	
	
	//le nom c une convention : cette meth deja existe dans jpa , et implementee par hibernate
	//tous st là"select from etudiant where nom like n..."
	public List<Etudiant> findByNom(String n);
	
	
	//Page and Pageable  de Spring Data 
	//Pageable pour MySQL et autre pour Oracle =>Dialect de hibernate  qui s'occupe de ça
	public Page<Etudiant> findByNom(String n, Pageable pageable);
	
	
	
	//si on veut mettre une requet specifique
	@Query("Select e from Etudiant e where e.nom like :x")
	public Page<Etudiant> myFindByMC(@Param("x")String mc,Pageable pageable);
	
	@Query("select e from Etudiant e where e.dateNaissance >:x and e.dateNaissance <:y") 
	public List<Etudiant> myFindByDate(@Param("x")Date d1,@Param("y")Date d2);
	
	
	 
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}

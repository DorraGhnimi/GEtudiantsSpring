package test.springexample.web;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import test.springexample.dao.IEtudiantRepoitory;
import test.springexample.entities.Etudiant;

@Controller
@RequestMapping(value = "/etudiants")
public class EtudiantControlleur {

	/*
	 * toutes les requests passent par le "dispatcherServlet" <=> "[/]" ...c lui qui
	 * fait appelle au controlleur
	 * 
	 * Spring boot on n a pas a le deployer : voir console : Mapping servlet :
	 * 'dispatcherServlet' to [/] alors que dans un dynamc web project on doit le
	 * deployer dans le web.xml
	 */

	@Autowired
	private IEtudiantRepoitory etudiantRepository;

	@Value("${dir.images}")
	private String directoryImages;

	@RequestMapping(value = "/index")
	public String index(Model model, @RequestParam(name = "page", defaultValue = "0") int page,
			@RequestParam(name = "mc", defaultValue = "") String motCle) {
		// @requestParam optionnelle : si je voulais modifier le nom, sinon , par defaut
		// ils portent le mm nom
		// model offert par Spring
		// si on met pas le meme nom de param et pas de "@RequestParam.."=> "Bad Request
		// : Error 400"

		// Page<Etudiant> pageEtudiants = etudiantRepository.findAll(new
		// PageRequest(page, 10));
		Page<Etudiant> pageEtudiants = etudiantRepository.myFindByMC("%" + motCle + "%", new PageRequest(page, 5));
		// Page<Etudiant> pageEtudiants =
		// etudiantRepository.findByNom("%"+motCle+"%",new PageRequest(page, 10));

		System.out.println("\n\n\n\n\n======>>> pageEtudiants:");
		System.out.println(pageEtudiants);

		// model.addAttribute("etudiants", etudiants);

		int nbrPage = pageEtudiants.getTotalPages();
		int[] pages = new int[nbrPage];
		for (int i = 0; i < nbrPage; i++)
			pages[i] = i;

		model.addAttribute("pageCourante", page); // li hia f asl jetni param mil request
		model.addAttribute("pages", pages);
		model.addAttribute("pageEtudiants", pageEtudiants);
		model.addAttribute("motCle", motCle);

		// là : je "redirige vers la vue "etudiants.html" dans "templates", une vue
		// generer cote serveur
		return "etudiants";
	}

	@RequestMapping(value = "/form", method = RequestMethod.GET)
	public String formEtudiant(Model model) {
		// model.addAttribute("etudiant", new Etudiant("x",new
		// Date(),"x@x.com","x.jpg"));
		model.addAttribute("etudiant", new Etudiant());

		return "formEtudiant";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveeee(@Valid Etudiant nvEtudiant, BindingResult bindingResult,
			@RequestParam(name = "formPhoto") MultipartFile file) throws Exception {
		// throws Exception : (file.transferTo(new
		// File(System.getProperty("user.home")+"/images"));)
		// ==> un controleur MVC on a un moyen qui permet de creer un controlleur
		// pour intercepter les exceptions et les traiter ==> gerer les exceptions apart
		// (eviter de melanger les try/catch)
		// ===> si ya une exception je vais la gener apres creer un handler
		// d'exceptions..

		// att : photo f formulaire de type="file" w param type String !!!!
		// ===> on passe param String ds la requet et mais param f methode (li 7ajti ih)
		// file )

		// public String saveEtudiant(Etudiant nvEtudiant) {
		// au lieu de mettre tous les champs du nv etudiant sous fomre String, je passe
		// un param
		// Etudiant et le ServletDispatcher yefhemha

		// @Valid : on demande à dispatcherServlet : validation de l'entité
		// s'il y a des erreurs il va les stocker dans un obj "BindingResult"
		// et donc, on a besoin de tester(BindingResult) avant de sauvgarder l'entité..
		// pour plus voir formEtudiant.html note1

		if (bindingResult.hasErrors()) {
			return "formEtudiant";
		}

		if (!(file.isEmpty())) {
			nvEtudiant.setPhoto(file.getOriginalFilename());
		}

		// System.out.println(nvEtudiant);
		System.out.println("hello from /controller/save");
		etudiantRepository.save(nvEtudiant);

		if (!(file.isEmpty())) {

			System.out.println("teste d'upload file : file.getOriginalFilename= " + file.getOriginalFilename());

			nvEtudiant.setPhoto(file.getOriginalFilename());

			// soit : simplement
			// file.transferTo(new
			// File(System.getProperty("user.home")+"/images/"+file.getOriginalFilename()));
			// soit :
			// 1 . definire une property dans "application.properties qui contient le chemin
			// du dossier (expl :home/me/images..)
			// 2 .declarer un String ds le controlleur referant a 1 . puis l'injecter par
			// IOC container :
			// ==> @Autowired pour injecter un obj
			// ==> @Value("{property contenat chemin dossier source on disk}")
			// file.transferTo(new File(direcotyImages+file.getOriginalFilename()));

			file.transferTo(new File(directoryImages + nvEtudiant.getId()));

			// il faut proteger les data : jamais les mettre ds l'app :
			// par exp : dans une autre BD, ou un autre dossier disk, na f static

			// il va me gener une belle exception :3 : spring limite la taille des file a
			// 1Mb===modifier==> application.properties

			// =>un autre prb :permession denied ===>dossier images : chown wala chmod..
		}

		// return de la meth st String" <=> nom de la vue
		return "redirect:index";
	}

	@RequestMapping(value = "/getPhoto", produces = MediaType.IMAGE_JPEG_VALUE)
	@ResponseBody
	public byte[] getPhoto(Long id) throws FileNotFoundException, IOException {
		File file = new File(directoryImages + id);
		return IOUtils.toByteArray(new FileInputStream(file));
	}

	@RequestMapping(value = "/delete")
	public String deleteee(Long id) {
		etudiantRepository.delete(id);
		return "redirect:index";
	}

	@RequestMapping(value = "/edit")
	public String edittttt(Long id, Model model) {
		Etudiant etudiant = etudiantRepository.getOne(id);
		model.addAttribute("etudiant", etudiant);

		return "editEtudiant";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updattt(@Valid Etudiant nvEtudiant, BindingResult bindingResult,
			@RequestParam(name = "formPhoto") MultipartFile file) throws Exception {

		if (bindingResult.hasErrors()) {
			return "editEtudiant";
		}

		if (!(file.isEmpty())) {
			nvEtudiant.setPhoto(file.getOriginalFilename());
		}

		etudiantRepository.save(nvEtudiant);

		if (!(file.isEmpty())) {

			System.out.println("teste d'upload file : file.getOriginalFilename= " + file.getOriginalFilename());

			nvEtudiant.setPhoto(file.getOriginalFilename());

			file.transferTo(new File(directoryImages + nvEtudiant.getId()));

		}

		return "redirect:index";
	}

	/*
	 * server.port=8085 ==> si on demarre l'app, tomcat va etre demarre sur ce port
	 * ==>l'approche basée sur les microservices, je peux demarrer plusieurs
	 * instances avec des !=ports Rabbi wa sob7anou
	 * 
	 * l'app spring boot est jar (tomcat embbeded )
	 * 
	 */

}

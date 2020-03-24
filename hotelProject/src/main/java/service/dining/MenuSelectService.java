package service.dining;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.dto.dining.MenuDTO;
import repository.dining.DiningRepository;

@Service
public class MenuSelectService {
	@Autowired
	private DiningRepository diningRepository;
	public void execute(Model model) {
		List<MenuDTO> list = diningRepository.menuSelect();
		model.addAttribute("menus", list);
	}

}

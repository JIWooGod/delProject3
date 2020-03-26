package service.dining;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.dto.dining.MenuDTO;
import repository.dining.DiningRepository;

@Service
public class MenuUpdateService {
	@Autowired
	private DiningRepository diningRepository;
	
	public void menuUpdate(Long menuNo, Model model) {
		MenuDTO dto = diningRepository.menuOneSelect(menuNo);
		model.addAttribute("menus", dto);
	}

}

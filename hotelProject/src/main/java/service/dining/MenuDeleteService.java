package service.dining;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import repository.dining.DiningRepository;

@Service
public class MenuDeleteService {
	@Autowired
	private DiningRepository diningRepository;
	
	public void execute(Long menuNo) {
		diningRepository.d1menuDelete(menuNo);
	}
	
}

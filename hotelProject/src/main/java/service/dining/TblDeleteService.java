package service.dining;

import org.springframework.beans.factory.annotation.Autowired;

import repository.dining.DiningRepository;

public class TblDeleteService {
	@Autowired
	private DiningRepository diningRepository;
	public void execute(Long rstTbl) {
		diningRepository.d1tblDelete(rstTbl);
	}

}

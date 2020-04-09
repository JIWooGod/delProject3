package service.dining;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.dto.dining.SeatPlaceDTO;
import repository.dining.DiningRepository;

public class DiningTblListService {
	@Autowired
	private DiningRepository reservationRepository;
	public void execute(Long rstNo, Model model) {
		List<SeatPlaceDTO> list = reservationRepository.seatPlace(rstNo);
		model.addAttribute("seats", list);
	}
}

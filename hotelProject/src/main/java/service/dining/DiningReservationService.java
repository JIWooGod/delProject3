package service.dining;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.dto.dining.SeatPlaceDTO;
import repository.dining.DiningRepository;

public class DiningReservationService {
	@Autowired
	private DiningRepository reservationRepository;
	public void execute(Model model) {
		List<SeatPlaceDTO> list = reservationRepository.seatPlace();
		model.addAttribute("seats", list);
	}
}

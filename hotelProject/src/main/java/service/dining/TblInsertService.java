package service.dining;

import org.springframework.beans.factory.annotation.Autowired;

import command.dining.ResTblCommand;
import model.dto.dining.SeatPlaceDTO;
import repository.dining.DiningRepository;

public class TblInsertService {
	@Autowired
	private DiningRepository diningRepository;
		public void execute(ResTblCommand resTblCommand) {
			SeatPlaceDTO dto = new SeatPlaceDTO();
			dto.setRstNo(resTblCommand.getRstNo());
			dto.setRstSeat(resTblCommand.getRstSeat());
			dto.setRstTbl(resTblCommand.getRstTbl());
			diningRepository.tblInsert(dto);
		}
}

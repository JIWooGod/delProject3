package service.dining;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import command.dining.MenuCommand;
import model.dto.dining.MenuDTO;
import repository.dining.DiningRepository;

@Service
public class MenuUpdateActionService {
	@Autowired
	private DiningRepository diningRepository;
	
	public void execute(Long menuNo, MenuCommand menuCommand, HttpServletRequest request) {
		MenuDTO dto = new MenuDTO();
		dto.setMenuNo(menuNo);
		dto.setMenuName(menuCommand.getMenuName());
		dto.setMenuPrice(menuCommand.getMenuPrice());
		dto.setMenuCnt(menuCommand.getMenuCnt());
		
		String storeTotal = "";

		for(MultipartFile mf :menuCommand.getMenuImg()) //context 에 bean확인
		{
			String original = mf.getOriginalFilename();
			String originalFileExtension = original.substring(original.lastIndexOf("."));
			String store = UUID.randomUUID().toString().replace("-","")+originalFileExtension;
			String fileSize = Long.toString(mf.getSize());

			storeTotal += store + "-";

			String path = request.getServletContext().getRealPath("/");
			//path += "WEB-INF\\view\\GoodsView\\update\\";
			path += "dining\\update\\";

			File file = new File(path+store);
			try 
			{
				mf.transferTo(file);
			} catch (Exception e)
			{

				e.printStackTrace();
			}
		}
		dto.setMenuImg(storeTotal);
		diningRepository.menuUpdate(dto);
	}
	
}







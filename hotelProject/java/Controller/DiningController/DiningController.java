package Controller.DiningController;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.dining.MenuCommand;
import command.dining.ResTblCommand;
import service.dining.DiningTblListService;
import service.dining.MenuDeleteService;
import service.dining.MenuInsertService;
import service.dining.MenuSelectService;
import service.dining.MenuUpdateActionService;
import service.dining.MgMenuSelectService;
import service.dining.MenuDetailService;
import service.dining.RstDetailService;
import service.dining.TblDeleteService;
import service.dining.TblInsertService;

@Controller
public class DiningController {
	@Autowired
	private DiningTblListService diningTblListService;

	@Autowired
	private TblInsertService tblInsertService;

	@Autowired
	private MenuInsertService menuInsertService;

	@Autowired
	private MenuSelectService menuSelectService;
	
	@Autowired
	private MgMenuSelectService mgMenuSelectService;

	@Autowired
	private MenuDetailService menuDetailService;

	@Autowired
	private MenuUpdateActionService menuUpdateActionService;

	@Autowired
	private MenuDeleteService menuDeleteService;

	@Autowired
	private TblDeleteService tblDeleteService;

	@Autowired
	private RstDetailService rstDetailService;

	@RequestMapping("/dining1")
	public String dining1() {
		return "dining/dining1";
	}

	@RequestMapping("/dining2")
	public String dining2() {
		return "dining/dining2";
	}

	@RequestMapping("/dining3")
	public String dining3() {
		return "dining/dining3";
	}

	@RequestMapping("/dining4")
	public String dining4() {
		return "dining/dining4";
	}

	@RequestMapping("/dining5")
	public String dining5() {
		return "dining/dining5";
	}

	@RequestMapping("/dining6")
	public String dining6() {
		return "dining/dining6";
	}

	@RequestMapping("/diningDetail")
	public String diningDetail(@RequestParam(value="no") Long rstNo, Model model) {
		rstDetailService.execute(rstNo, model);
		return "dining/diningDetail";
	}

	//메뉴판 보기
	@RequestMapping("/menuList")
	public String menuList(@RequestParam(value="no") Long rstNo, Model model) {
		menuSelectService.execute(rstNo, model);
		return "dining/menuList";
	}

	@RequestMapping("/d1reservation")
	public String d1reservation(Model model) {
		//diningTblListService.execute(model);
		return "dining/d1reservation";
	}

	@RequestMapping("/tblList")
	public String tblList(@RequestParam(value="no") Long rstNo, Model model) {
		diningTblListService.execute(rstNo, model);
		return "dining/tblList";
	}

	@RequestMapping("/d1tblDetail")
	public String d1tblDetail(@RequestParam(value="no") Long rstTbl) {
		return "dining/d1tblDetail";
	}

	@RequestMapping("/d1tblDelete")
	public String d1tblDelete(@RequestParam(value="no") Long rstNo, Model model) {
		//diningTblListService.execute(rstNo, model);
		return "dining/d1tblDelete";
	}

	@RequestMapping("/d1tblDeleteAction")
	public String d1tblDeleteAction(@RequestParam(value="no") Long rstTbl) {
		tblDeleteService.execute(rstTbl);
		return "redirect:/d1tblList";
	}

	@RequestMapping("/tblInsert")
	public String tblInsert() {
		return "dining/tblInsert";
	}

	@RequestMapping("/tblInsertAction")
	public String tblInsertAction(ResTblCommand resTblCommand) {
		tblInsertService.execute(resTblCommand);
		return "/main/main";
	}

	@RequestMapping("/notResNo")
	public String notResNo() {
		return "dining/notResNo";
	}

	//관리자 메뉴리스트
	@RequestMapping("/mgMenuList")
	public String d1menuList(Model model) {
		mgMenuSelectService.execute(model);
		return "dining/mgMenuList";
	}

	@RequestMapping("/menuInsert")
	public String menuInsert(@RequestParam(value="rno") Long rstNo, Model model) {
		rstDetailService.execute(rstNo, model);
		return "dining/menuInsert";
	}

	@RequestMapping("/menuInsertAction")
	public String menuInsertAction(@RequestParam(value="rno") Long rstNo ,MenuCommand menuCommand, HttpServletRequest request, Model model) {
		String result = menuInsertService.execute(rstNo, menuCommand, request, model);
		//사진 등록안함
		if(result == "0") {
			return "dining/menuInsert";
		}
		return "redirect:/mgMenuList";
	}
	
	//메뉴 디테일
	@RequestMapping("/menuDetail")
	public String menuUpdate(@RequestParam(value="mno") Long menuNo, @RequestParam(value="rno") Long rstNo, Model model) {
		menuDetailService.menuOneSelect(menuNo, rstNo, model);
		return "dining/menuDetail";
	}

	//메뉴 수정버튼 (디테일이랑 서비스 같음 -> onselect)
	@RequestMapping("/menuUpdate")
	public String menuUpdateGo(@RequestParam(value="mno") Long menuNo, @RequestParam(value="rno") Long rstNo, Model model) {
		menuDetailService.menuOneSelect(menuNo, rstNo, model);
		return "dining/menuUpdate";
	}

	@RequestMapping("/menuUpdateAction")
	public String menuUpdateAction(@RequestParam(value="mno") Long menuNo, @RequestParam(value="rno") Long rstNo,  MenuCommand menuCommand, HttpServletRequest request) {
		menuUpdateActionService.execute(menuNo, rstNo, menuCommand, request);
		return "redirect:/mgMenuList";
	}

	@RequestMapping("/menuDelete")
	public String d1menuDelete(@RequestParam(value="mno") Long menuNo, @RequestParam(value="rno") Long rstNo) {
		menuDeleteService.execute(menuNo, rstNo);
		return "redirect:/mgMenuList";
	}


}












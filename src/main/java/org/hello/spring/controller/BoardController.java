package org.hello.spring.controller;


import javax.inject.Inject;

import org.hello.spring.domain.BoardVO;
import org.hello.spring.domain.Criteria;
import org.hello.spring.domain.PageMaker;
import org.hello.spring.service.BoardService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Inject
    private BoardService service;
    
	//글 작성 GET/POST
	@RequestMapping(value="/create", method = RequestMethod.GET)
	public void createGET(BoardVO board, Model model) throws Exception{
		System.out.println(" /board/create 입니다. GET방식");
	}
    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String createPOST(BoardVO board, RedirectAttributes rttr) throws Exception{
        System.out.println("/board/create POST방식 입니다.");
        System.out.println(board.toString());
        service.create(board);
        rttr.addFlashAttribute("msg", "성공");
        return "redirect:/board/listPage";
    }
    
    //전체 조회
    @RequestMapping(value = "/listAll", method=RequestMethod.GET)
    public void listAll(Model model) throws Exception{
        System.out.println("전체목록 페이지");
        model.addAttribute("boardList", service.listAll());
    }
    //게시글 조회
    @RequestMapping(value = "/detail", method=RequestMethod.GET)
	public void detail(@RequestParam("b_no") int b_no, Model model) throws Exception{
    	System.out.println("해당글 조회");
    	model.addAttribute("boardVO", service.read(b_no));
    }
    
	//게시글 수정 GET/POST
    @RequestMapping(value = "/modify", method = RequestMethod.GET)
    public void getModify(int b_no, Model model) throws Exception {
    	System.out.println("해당글 수정");
    	model.addAttribute(service.read(b_no));
    } 
    @RequestMapping(value = "/modify", method = RequestMethod.POST)
    public String postModify(BoardVO vo) throws Exception {
    	System.out.println("해당글 수정완료");
    	service.update(vo);
    	return "redirect:/board/listPage";
    }
    
    //글 삭제 GET/POST
    @RequestMapping(value="/remove", method = RequestMethod.POST)
    public String remove(@RequestParam("b_no")int b_no, RedirectAttributes rttr)throws Exception{
    	System.out.println("삭제완료");
    	service.delete(b_no);
    	
    	rttr.addFlashAttribute("msg", "SUCCESS");
    	return "redirect:/board/listPage";
    }
    
    //페이징 리스트조회
    @RequestMapping(value="/listCri", method = RequestMethod.GET)
    public void listAll(Criteria cri, Model model)throws Exception{
    	System.out.println("전체글 조회완료");
    	model.addAttribute("boardList", service.listCriteria(cri));
    }
    //페이징 숫자 계산
    @RequestMapping(value="/listPage", method = RequestMethod.GET)
    public void listPage(@ModelAttribute("cri") Criteria cri, Model model)throws Exception{
    	System.out.println("조회성공");
    	model.addAttribute("boardList",service.listCriteria(cri));
    	PageMaker pageMaker = new PageMaker();
    	pageMaker.setCri(cri);
    	pageMaker.setTotalCount(service.listCountCriteria(cri));
    	model.addAttribute("pageMaker",pageMaker);
    }
    
    //이전 버튼 클릭시 원래 위치 가져오기
    @RequestMapping(value="/read", method = RequestMethod.GET)
    public void read(@RequestParam("b_no")int b_no, Model model) throws Exception{
    	model.addAttribute(service.read(b_no));
    }
    @RequestMapping(value="/readPage", method = RequestMethod.GET)
    public void read(@RequestParam("b_no")int b_no, @ModelAttribute("cri")Criteria cri, Model model) throws Exception{
    	model.addAttribute(service.read(b_no));
    }
}

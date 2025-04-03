package com.app.display.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.UserDAO;
import com.app.dao.ArtDAO;
import com.app.dto.ArtPostDTO;
import com.app.vo.UserVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class DisplayFormOkController implements Action {

    @Override
    public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        Result result = new Result();
        UserDAO userDAO = new UserDAO();
        ArtDAO artDAO = new ArtDAO();
        ArtPostDTO artPostDTO = new ArtPostDTO();

        // 로그인된 유저 정보 가져오기
        String userEmail = (String) req.getSession().getAttribute("loginUser");
        UserVO userVO = userDAO.selectUserByEmail(userEmail);

        if (userVO == null) {
            result.setRedirect(true);
            result.setPath("display-form.display?error=userNotFound");
            return result;
        }

        // 파일 업로드 설정
        String filePath = "/assets/images/display/art/dummy/";
        String directory = req.getServletContext().getRealPath(filePath);
        int sizeLimit = 20 * 1024 * 1024; // 20MB

        MultipartRequest multi = null;
        try {
            multi = new MultipartRequest(req, directory, sizeLimit, "UTF-8", new DefaultFileRenamePolicy());
        } catch (IOException e) {
            e.printStackTrace();
            result.setRedirect(true);
            result.setPath("display-form.display?error=fileUploadFailed");
            return result;
        }

        // 필수 값 체크
        String artImgName = multi.getFilesystemName("artImgName");
        String artImgPath = filePath + artImgName;
        String artTitle = multi.getParameter("artTitle");
        String artMaterial = multi.getParameter("artMaterial");
        String artSize = multi.getParameter("artSize");
        String artCategory = multi.getParameter("artCategory");
        String artDescription = multi.getParameter("artDescription");
        
        System.out.println("artImgName: " + artImgName);
        System.out.println("artImgPath: " + artImgPath);
        System.out.println("artTitle: " + artTitle);
        System.out.println("artMaterial: " + artMaterial);
        System.out.println("artSize: " + artSize);
        System.out.println("artCategory: " + artCategory);
        System.out.println("artDescription: " + artDescription);

        


//        if (artTitle == null || artTitle.trim().isEmpty() ||
//            artMaterial == null || artMaterial.trim().isEmpty() ||
//            artSize == null || artSize.trim().isEmpty() ||
//            artCategory == null || artCategory.trim().isEmpty() ||
//            artDescription == null || artDescription.trim().isEmpty()) {
//            
//            result.setRedirect(true);
//            result.setPath("display-form.display?error=missingFields");
//            return result;
//        }

        // DTO에 값 설정
        artPostDTO.setArtImgName(artImgName);
        artPostDTO.setArtImgPath(artImgPath);
        artPostDTO.setUserId(userVO.getId());
        artPostDTO.setUserName(userVO.getUserName());
        artPostDTO.setArtTitle(artTitle);
        artPostDTO.setArtMaterial(artMaterial);
        artPostDTO.setArtSize(artSize);
        artPostDTO.setArtCategory(artCategory);
        artPostDTO.setArtDescription(artDescription);

        // 1. 작품 정보 먼저 저장
        artDAO.insert(artPostDTO);

        // 2. 방금 저장한 작품의 최신 ID 가져오기
        Long latestArtId = artDAO.getLatestArtId();  

        // 3. 최신 ID를 DTO에 설정
        artPostDTO.setArtId(latestArtId);

        // 4. 이미지 업로드 실행
        artDAO.insertImg(artPostDTO);
        

        result.setRedirect(true);
        result.setPath("display-form.display?complete=true");

        return result;
    }
}

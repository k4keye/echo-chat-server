package com.echo.chat.controller;

import com.echo.chat.common.response.ResponseService;
import com.echo.chat.common.response.result.LinksResult;
import com.echo.chat.common.response.result.SingleResult;
import com.echo.chat.controller.dto.request.JoinRequest;
import com.echo.chat.controller.dto.response.MemberDto;
import com.echo.chat.domain.Member;
import com.echo.chat.vo.Email;
import com.echo.chat.vo.LoginID;
import com.echo.chat.vo.NickName;
import com.echo.chat.service.LoginService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;


@RestController
@RequestMapping("/login")
@RequiredArgsConstructor
public class LoginController {

    private final LoginService loginService;
    private final ResponseService responseService;
    @GetMapping
    public ResponseEntity login(@RequestParam("id") String id, @RequestParam("pwd") String pwd){

        String token = loginService.login(id, pwd);
        HashMap<String, String> map = new HashMap<>();
        map.put("id", id);
        map.put("token", "Bearer "+token);

        SingleResult<HashMap<String, String>> responseBody = responseService.getResult(map);

        List<LinksResult> links = new ArrayList<>();
        links.add(new LinksResult("echo","/echo"));

        return ResponseEntity.status(HttpStatus.OK).body(responseBody);
    }

    @PostMapping("/join")
    public ResponseEntity join(@Valid @RequestBody JoinRequest joinRequest){

        Member member = loginService.join(new LoginID(joinRequest.getId()), joinRequest.getPwd(),  new Email(joinRequest.getEmail()));
        MemberDto memberDto = new MemberDto(member);

        List<LinksResult> links = new ArrayList<>();
        links.add(new LinksResult("login","/login"));

        SingleResult<MemberDto> responseBody = responseService.getResult(memberDto,links);

        return ResponseEntity.status(HttpStatus.CREATED).body(responseBody);
    }
}

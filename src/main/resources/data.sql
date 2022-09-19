INSERT INTO tb_member (LOGIN_ID, LOGIN_PWD, NICK_NAME,EMAIL)  VALUES ('admin', '$2a$10$c2VT5PblS4HYEdeeLIc5t.y17pTePRHorrWPt2YeGTYB81J2.kPLu', 'adminNickName', 'admin@admin.com');
INSERT INTO tb_member (LOGIN_ID, LOGIN_PWD, NICK_NAME,EMAIL)  VALUES ('user', '$2a$10$0ajkgQCOdO5gIheng00pc.0sX84W8qFW.8hDEdsRsh32B/3pOHPly', 'userNickName', 'user@user.com');
--
INSERT INTO tb_authority (AUTHORITY_NAME) values ('ROLE_USER');
INSERT INTO tb_authority (AUTHORITY_NAME) values ('ROLE_ADMIN');
--
INSERT INTO tb_member_authority (LOGIN_ID, AUTHORITY_NAME) values ('admin', 'ROLE_ADMIN');
INSERT INTO tb_member_authority (LOGIN_ID, AUTHORITY_NAME) values ('user', 'ROLE_USER');



--  dummy member
INSERT INTO tb_member (LOGIN_ID, LOGIN_PWD,EMAIL)  VALUES ('wjsi231', '$2a$10$0ajkgQCOdO5gIheng00pc.0sX84W8qFW.8hDEdsRsh32B/3pOHPly',  'swt234@naver.com');
INSERT INTO tb_member (LOGIN_ID, LOGIN_PWD,EMAIL)  VALUES ('olol227', '$2a$10$0ajkgQCOdO5gIheng00pc.0sX84W8qFW.8hDEdsRsh32B/3pOHPly', 'blublu@naver.com');
INSERT INTO tb_member (LOGIN_ID, LOGIN_PWD,EMAIL)  VALUES ('qwnem01', '$2a$10$0ajkgQCOdO5gIheng00pc.0sX84W8qFW.8hDEdsRsh32B/3pOHPly',  'q01@naver.com');
INSERT INTO tb_member (LOGIN_ID, LOGIN_PWD,EMAIL)  VALUES ('zzzuv34', '$2a$10$0ajkgQCOdO5gIheng00pc.0sX84W8qFW.8hDEdsRsh32B/3pOHPly', 'zzzUN@naver.com');
INSERT INTO tb_member (LOGIN_ID, LOGIN_PWD,EMAIL)  VALUES ('iaiaiai9001', '$2a$10$0ajkgQCOdO5gIheng00pc.0sX84W8qFW.8hDEdsRsh32B/3pOHPly','lalalal@naver.com');

INSERT INTO tb_member_authority (LOGIN_ID, AUTHORITY_NAME) values ('wjsi231', 'ROLE_USER');
INSERT INTO tb_member_authority (LOGIN_ID, AUTHORITY_NAME) values ('olol227', 'ROLE_USER');
INSERT INTO tb_member_authority (LOGIN_ID, AUTHORITY_NAME) values ('qwnem01', 'ROLE_USER');
INSERT INTO tb_member_authority (LOGIN_ID, AUTHORITY_NAME) values ('zzzuv34', 'ROLE_USER');
INSERT INTO tb_member_authority (LOGIN_ID, AUTHORITY_NAME) values ('iaiaiai9001', 'ROLE_USER');


-- dummy echo
INSERT INTO tb_echo (CONTEXT, MEMBER)  VALUES ('admin 나의 첫 게시글 이다.', '1');
INSERT INTO tb_echo (CONTEXT, MEMBER)  VALUES ('user 나의 첫 게시글 이다.', '2');
INSERT INTO tb_echo (CONTEXT, MEMBER)  VALUES ('OOO 이런거 공유', '2');
INSERT INTO tb_echo (CONTEXT, MEMBER)  VALUES ('좋은 내용입니다.', '2');
INSERT INTO tb_echo (CONTEXT, MEMBER)  VALUES ('진짜 좋은 OOO 이런거 공유', '2');

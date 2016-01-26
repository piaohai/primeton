
/* application*/
INSERT INTO app_application (APPID,APPCODE,APPNAME,APPTYPE,ISOPEN,OPENDATE,URL,APPDESC,MAINTENANCE,MANAROLE,DEMO,INIWP,INTASKCENTER,IPADDR,IPPORT,APP_ID,TENANT_ID,protocol_type) VALUES (1,'coframe','应用基础框架','0','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default','http');
/*function group*/
INSERT INTO app_funcgroup (FUNCGROUPID,FUNCGROUPNAME,GROUPLEVEL,FUNCGROUPSEQ,ISLEAF,SUBCOUNT,APP_ID,TENANT_ID,PARENTGROUP,APPID) VALUES (1,'应用功能管理',1,'.1.','n',0,NULL,'default',NULL,1);
INSERT INTO app_funcgroup (FUNCGROUPID,FUNCGROUPNAME,GROUPLEVEL,FUNCGROUPSEQ,ISLEAF,SUBCOUNT,APP_ID,TENANT_ID,PARENTGROUP,APPID) VALUES (2,'菜单管理',1,'.2.','n',0,NULL,'default',NULL,1);
INSERT INTO app_funcgroup (FUNCGROUPID,FUNCGROUPNAME,GROUPLEVEL,FUNCGROUPSEQ,ISLEAF,SUBCOUNT,APP_ID,TENANT_ID,PARENTGROUP,APPID) VALUES (3,'授权管理',1,'.3.','n',0,NULL,'default',NULL,1);
INSERT INTO app_funcgroup (FUNCGROUPID,FUNCGROUPNAME,GROUPLEVEL,FUNCGROUPSEQ,ISLEAF,SUBCOUNT,APP_ID,TENANT_ID,PARENTGROUP,APPID) VALUES (5,'用户管理',1,'.5.','n',0,NULL,'default',NULL,1);
INSERT INTO app_funcgroup (FUNCGROUPID,FUNCGROUPNAME,GROUPLEVEL,FUNCGROUPSEQ,ISLEAF,SUBCOUNT,APP_ID,TENANT_ID,PARENTGROUP,APPID) VALUES (6,'组织机构管理',1,'.6.','n',0,NULL,'default',NULL,1);

/*function*/
INSERT INTO app_function (FUNCCODE,FUNCNAME,FUNCDESC,FUNCACTION,PARAINFO,ISCHECK,FUNCTYPE,ISMENU,APP_ID,TENANT_ID,FUNCGROUPID) VALUES ('application_add','添加应用',NULL,'/coframe/framework/application/application_add.jsp',NULL,'1','page','0',NULL,'default',1);
INSERT INTO app_function (FUNCCODE,FUNCNAME,FUNCDESC,FUNCACTION,PARAINFO,ISCHECK,FUNCTYPE,ISMENU,APP_ID,TENANT_ID,FUNCGROUPID) VALUES ('application_edit','修改应用',NULL,'/coframe/framework/application/application_edit.jsp',NULL,'1','page','0',NULL,'default',1);
INSERT INTO app_function (FUNCCODE,FUNCNAME,FUNCDESC,FUNCACTION,PARAINFO,ISCHECK,FUNCTYPE,ISMENU,APP_ID,TENANT_ID,FUNCGROUPID) VALUES ('application_manage','管理应用功能树',NULL,'/coframe/framework/application/application_manage.jsp',NULL,'1','page','1',NULL,'default',1);
INSERT INTO app_function (FUNCCODE,FUNCNAME,FUNCDESC,FUNCACTION,PARAINFO,ISCHECK,FUNCTYPE,ISMENU,APP_ID,TENANT_ID,FUNCGROUPID) VALUES ('auth_graph','权限计算',NULL,'/coframe/auth/authgraph/auth_graph.jsp',NULL,'1','page','0',NULL,'default',6);
INSERT INTO app_function (FUNCCODE,FUNCNAME,FUNCDESC,FUNCACTION,PARAINFO,ISCHECK,FUNCTYPE,ISMENU,APP_ID,TENANT_ID,FUNCGROUPID) VALUES ('employee_add','添加员工',NULL,'/coframe/org/employee/employee_add.jsp',NULL,'1','page','0',NULL,'default',6);
INSERT INTO app_function (FUNCCODE,FUNCNAME,FUNCDESC,FUNCACTION,PARAINFO,ISCHECK,FUNCTYPE,ISMENU,APP_ID,TENANT_ID,FUNCGROUPID) VALUES ('employee_auth','人员授权',NULL,'/coframe/org/employee/employee_auth.jsp',NULL,'1','page','0',NULL,'default',3);
INSERT INTO app_function (FUNCCODE,FUNCNAME,FUNCDESC,FUNCACTION,PARAINFO,ISCHECK,FUNCTYPE,ISMENU,APP_ID,TENANT_ID,FUNCGROUPID) VALUES ('employee_update','修改员工',NULL,'/coframe/org/employee/employee_update.jsp',NULL,'1','page','0',NULL,'default',6);
INSERT INTO app_function (FUNCCODE,FUNCNAME,FUNCDESC,FUNCACTION,PARAINFO,ISCHECK,FUNCTYPE,ISMENU,APP_ID,TENANT_ID,FUNCGROUPID) VALUES ('funcgroup_add','添加功能组',NULL,'/coframe/framework/functiongroup/funcgroup_add.jsp',NULL,'1','page','0',NULL,'default',1);
INSERT INTO app_function (FUNCCODE,FUNCNAME,FUNCDESC,FUNCACTION,PARAINFO,ISCHECK,FUNCTYPE,ISMENU,APP_ID,TENANT_ID,FUNCGROUPID) VALUES ('funcgroup_edit','修改功能组',NULL,'/coframe/framework/functiongroup/funcgroup_edit.jsp',NULL,'1','page','0',NULL,'default',1);
INSERT INTO app_function (FUNCCODE,FUNCNAME,FUNCDESC,FUNCACTION,PARAINFO,ISCHECK,FUNCTYPE,ISMENU,APP_ID,TENANT_ID,FUNCGROUPID) VALUES ('function_add','添加功能',NULL,'/coframe/framework/function/function_add.jsp',NULL,'1','page','0',NULL,'default',1);
INSERT INTO app_function (FUNCCODE,FUNCNAME,FUNCDESC,FUNCACTION,PARAINFO,ISCHECK,FUNCTYPE,ISMENU,APP_ID,TENANT_ID,FUNCGROUPID) VALUES ('function_edit','修改功能',NULL,'/coframe/framework/function/function_edit.jsp',NULL,'1','page','0',NULL,'default',1);
INSERT INTO app_function (FUNCCODE,FUNCNAME,FUNCDESC,FUNCACTION,PARAINFO,ISCHECK,FUNCTYPE,ISMENU,APP_ID,TENANT_ID,FUNCGROUPID) VALUES ('function_role_auth','功能授权',NULL,'/coframe/framework/function/function_role_auth.jsp',NULL,'1','page','0',NULL,'default',3);
INSERT INTO app_function (FUNCCODE,FUNCNAME,FUNCDESC,FUNCACTION,PARAINFO,ISCHECK,FUNCTYPE,ISMENU,APP_ID,TENANT_ID,FUNCGROUPID) VALUES ('menu_add','添加菜单',NULL,'/coframe/framework/menu/menu_add.jsp',NULL,'1','page','0',NULL,'default',2);
INSERT INTO app_function (FUNCCODE,FUNCNAME,FUNCDESC,FUNCACTION,PARAINFO,ISCHECK,FUNCTYPE,ISMENU,APP_ID,TENANT_ID,FUNCGROUPID) VALUES ('menu_edit','修改菜单',NULL,'/coframe/framework/menu/menu_edit.jsp',NULL,'1','page','0',NULL,'default',2);
INSERT INTO app_function (FUNCCODE,FUNCNAME,FUNCDESC,FUNCACTION,PARAINFO,ISCHECK,FUNCTYPE,ISMENU,APP_ID,TENANT_ID,FUNCGROUPID) VALUES ('menu_manage','管理菜单树',NULL,'/coframe/framework/menu/menu_manage.jsp',NULL,'1','page','1',NULL,'default',2);
INSERT INTO app_function (FUNCCODE,FUNCNAME,FUNCDESC,FUNCACTION,PARAINFO,ISCHECK,FUNCTYPE,ISMENU,APP_ID,TENANT_ID,FUNCGROUPID) VALUES ('org_add','添加机构',NULL,'/coframe/org/organization/org_add.jsp',NULL,'1','page','1',NULL,'default',6);
INSERT INTO app_function (FUNCCODE,FUNCNAME,FUNCDESC,FUNCACTION,PARAINFO,ISCHECK,FUNCTYPE,ISMENU,APP_ID,TENANT_ID,FUNCGROUPID) VALUES ('org_auth','机构授权',NULL,'/coframe/org/organization/org_auth.jsp',NULL,'1','page','0',NULL,'default',3);
INSERT INTO app_function (FUNCCODE,FUNCNAME,FUNCDESC,FUNCACTION,PARAINFO,ISCHECK,FUNCTYPE,ISMENU,APP_ID,TENANT_ID,FUNCGROUPID) VALUES ('org_tree','管理机构树',NULL,'/coframe/org/organization/org_tree.jsp',NULL,'1','page','1',NULL,'default',6);
INSERT INTO app_function (FUNCCODE,FUNCNAME,FUNCDESC,FUNCACTION,PARAINFO,ISCHECK,FUNCTYPE,ISMENU,APP_ID,TENANT_ID,FUNCGROUPID) VALUES ('org_update','修改机构',NULL,'/coframe/org/organization/org_update.jsp',NULL,'1','page','0',NULL,'default',6);
INSERT INTO app_function (FUNCCODE,FUNCNAME,FUNCDESC,FUNCACTION,PARAINFO,ISCHECK,FUNCTYPE,ISMENU,APP_ID,TENANT_ID,FUNCGROUPID) VALUES ('party_auth','权限设置',NULL,'/coframe/auth/partyauth/auth.jsp',NULL,'1','page','0',NULL,'default',6);
INSERT INTO app_function (FUNCCODE,FUNCNAME,FUNCDESC,FUNCACTION,PARAINFO,ISCHECK,FUNCTYPE,ISMENU,APP_ID,TENANT_ID,FUNCGROUPID) VALUES ('position_auth','岗位授权',NULL,'/coframe/org/position/position_auth.jsp',NULL,'1','page','0',NULL,'default',3);
INSERT INTO app_function (FUNCCODE,FUNCNAME,FUNCDESC,FUNCACTION,PARAINFO,ISCHECK,FUNCTYPE,ISMENU,APP_ID,TENANT_ID,FUNCGROUPID) VALUES ('position_org_add','添加岗位',NULL,'/coframe/org/position/position_org_add.jsp',NULL,'1','page','0',NULL,'default',6);
INSERT INTO app_function (FUNCCODE,FUNCNAME,FUNCDESC,FUNCACTION,PARAINFO,ISCHECK,FUNCTYPE,ISMENU,APP_ID,TENANT_ID,FUNCGROUPID) VALUES ('position_org_update','修改岗位',NULL,'/coframe/org/position/position_org_update.jsp',NULL,'1','page','0',NULL,'default',6);
INSERT INTO app_function (FUNCCODE,FUNCNAME,FUNCDESC,FUNCACTION,PARAINFO,ISCHECK,FUNCTYPE,ISMENU,APP_ID,TENANT_ID,FUNCGROUPID) VALUES ('reset_password','重置密码',NULL,'/coframe/rights/user/reset_password.jsp',NULL,'1','page','0',NULL,'default',5);
INSERT INTO app_function (FUNCCODE,FUNCNAME,FUNCDESC,FUNCACTION,PARAINFO,ISCHECK,FUNCTYPE,ISMENU,APP_ID,TENANT_ID,FUNCGROUPID) VALUES ('role_add','添加角色',NULL,'/coframe/rights/role/role_add.jsp',NULL,'1','page','0',NULL,'default',3);
INSERT INTO app_function (FUNCCODE,FUNCNAME,FUNCDESC,FUNCACTION,PARAINFO,ISCHECK,FUNCTYPE,ISMENU,APP_ID,TENANT_ID,FUNCGROUPID) VALUES ('role_manager','角色管理',NULL,'/coframe/rights/role/role_manager.jsp',NULL,'1','page','1',NULL,'default',3);
INSERT INTO app_function (FUNCCODE,FUNCNAME,FUNCDESC,FUNCACTION,PARAINFO,ISCHECK,FUNCTYPE,ISMENU,APP_ID,TENANT_ID,FUNCGROUPID) VALUES ('role_auth','授权管理',NULL,'/coframe/auth/role_auth.jsp',NULL,'1','page','1',NULL,'default',3);
INSERT INTO app_function (FUNCCODE,FUNCNAME,FUNCDESC,FUNCACTION,PARAINFO,ISCHECK,FUNCTYPE,ISMENU,APP_ID,TENANT_ID,FUNCGROUPID) VALUES ('role_update','修改角色',NULL,'/coframe/rights/role/role_update.jsp',NULL,'1','page','0',NULL,'default',3);
INSERT INTO app_function (FUNCCODE,FUNCNAME,FUNCDESC,FUNCACTION,PARAINFO,ISCHECK,FUNCTYPE,ISMENU,APP_ID,TENANT_ID,FUNCGROUPID) VALUES ('user_add','添加用户',NULL,'/coframe/rights/user/user_add.jsp',NULL,'1','page','0',NULL,'default',5);
INSERT INTO app_function (FUNCCODE,FUNCNAME,FUNCDESC,FUNCACTION,PARAINFO,ISCHECK,FUNCTYPE,ISMENU,APP_ID,TENANT_ID,FUNCGROUPID) VALUES ('user_list','查看用户列表',NULL,'/coframe/rights/user/user_list.jsp',NULL,'1','page','1',NULL,'default',5);
INSERT INTO app_function (FUNCCODE,FUNCNAME,FUNCDESC,FUNCACTION,PARAINFO,ISCHECK,FUNCTYPE,ISMENU,APP_ID,TENANT_ID,FUNCGROUPID) VALUES ('user_update','修改用户',NULL,'/coframe/rights/user/user_update.jsp',NULL,'1','page','0',NULL,'default',5);

/*menu*/
INSERT INTO app_menu (MENUID,MENUNAME,MENULABEL,MENUCODE,ISLEAF,PARAMETER,UIENTRY,MENULEVEL,ROOTID,DISPLAYORDER,IMAGEPATH,EXPANDPATH,MENUSEQ,OPENMODE,SUBCOUNT,APPID,FUNCCODE,APP_ID,TENANT_ID,PARENTSID) VALUES ('1','权限管理','权限管理','menu_auth','0',NULL,NULL,1,NULL,1,NULL,NULL,'.1.',NULL,5,NULL,NULL,NULL,'default',NULL);
INSERT INTO app_menu (MENUID,MENUNAME,MENULABEL,MENUCODE,ISLEAF,PARAMETER,UIENTRY,MENULEVEL,ROOTID,DISPLAYORDER,IMAGEPATH,EXPANDPATH,MENUSEQ,OPENMODE,SUBCOUNT,APPID,FUNCCODE,APP_ID,TENANT_ID,PARENTSID) VALUES ('2','组织管理','组织管理','menu_org','0',NULL,NULL,1,NULL,2,NULL,NULL,'.2.',NULL,1,NULL,NULL,NULL,'default',NULL);
INSERT INTO app_menu (MENUID,MENUNAME,MENULABEL,MENUCODE,ISLEAF,PARAMETER,UIENTRY,MENULEVEL,ROOTID,DISPLAYORDER,IMAGEPATH,EXPANDPATH,MENUSEQ,OPENMODE,SUBCOUNT,APPID,FUNCCODE,APP_ID,TENANT_ID,PARENTSID) VALUES ('3','应用功能管理','应用功能管理','menu_app_function','1',NULL,NULL,2,NULL,1,NULL,NULL,'.1.3.',NULL,0,NULL,'application_manage',NULL,'default','1');
INSERT INTO app_menu (MENUID,MENUNAME,MENULABEL,MENUCODE,ISLEAF,PARAMETER,UIENTRY,MENULEVEL,ROOTID,DISPLAYORDER,IMAGEPATH,EXPANDPATH,MENUSEQ,OPENMODE,SUBCOUNT,APPID,FUNCCODE,APP_ID,TENANT_ID,PARENTSID) VALUES ('4','菜单管理','菜单管理','menu_menu_manager','1',NULL,NULL,2,NULL,2,NULL,NULL,'.1.4.',NULL,0,NULL,'menu_manage',NULL,'default','1');
INSERT INTO app_menu (MENUID,MENUNAME,MENULABEL,MENUCODE,ISLEAF,PARAMETER,UIENTRY,MENULEVEL,ROOTID,DISPLAYORDER,IMAGEPATH,EXPANDPATH,MENUSEQ,OPENMODE,SUBCOUNT,APPID,FUNCCODE,APP_ID,TENANT_ID,PARENTSID) VALUES ('5','授权管理','授权管理','menu_auth','1',NULL,NULL,2,NULL,6,NULL,NULL,'.1.5.',NULL,0,NULL,'role_auth',NULL,'default','1');
INSERT INTO app_menu (MENUID,MENUNAME,MENULABEL,MENUCODE,ISLEAF,PARAMETER,UIENTRY,MENULEVEL,ROOTID,DISPLAYORDER,IMAGEPATH,EXPANDPATH,MENUSEQ,OPENMODE,SUBCOUNT,APPID,FUNCCODE,APP_ID,TENANT_ID,PARENTSID) VALUES ('6','角色管理','角色管理','menu_role_manager','1',NULL,NULL,2,NULL,3,NULL,NULL,'.1.6.',NULL,0,NULL,'role_manager',NULL,'default','1');
INSERT INTO app_menu (MENUID,MENUNAME,MENULABEL,MENUCODE,ISLEAF,PARAMETER,UIENTRY,MENULEVEL,ROOTID,DISPLAYORDER,IMAGEPATH,EXPANDPATH,MENUSEQ,OPENMODE,SUBCOUNT,APPID,FUNCCODE,APP_ID,TENANT_ID,PARENTSID) VALUES ('7','用户管理','用户管理','menu_user_manager','1',NULL,NULL,2,NULL,5,NULL,NULL,'.1.7.',NULL,0,NULL,'user_list',NULL,'default','1');
INSERT INTO app_menu (MENUID,MENUNAME,MENULABEL,MENUCODE,ISLEAF,PARAMETER,UIENTRY,MENULEVEL,ROOTID,DISPLAYORDER,IMAGEPATH,EXPANDPATH,MENUSEQ,OPENMODE,SUBCOUNT,APPID,FUNCCODE,APP_ID,TENANT_ID,PARENTSID) VALUES ('8','组织机构管理','组织机构管理','menu_org_manager','1',NULL,NULL,2,NULL,1,NULL,NULL,'.2.8.',NULL,0,NULL,'org_tree',NULL,'default','2');

/*role*/

INSERT INTO CAP_ROLE (ROLE_ID,TENANT_ID,ROLE_CODE,ROLE_NAME,ROLE_DESC,CREATEUSER,CREATETIME) VALUES ('1','default','sysadmin','系统管理员',NULL,NULL,NULL);

/*user*/
INSERT INTO cap_user (OPERATOR_ID,TENANT_ID,USER_ID,PASSWORD,INVALDATE,USER_NAME,AUTHMODE,STATUS,UNLOCKTIME,MENUTYPE,LASTLOGIN,ERRCOUNT,STARTDATE,ENDDATE,VALIDTIME,MACCODE,IPADDRESS,EMAIL,CREATEUSER,CREATETIME) VALUES (1,'default','sysadmin','k2xvHUmCHWw=',NULL,'sysadmin','local','1',TO_DATE('2013-03-16 11:58:31', 'YYYY-MM-DD HH24:MI:SS'),'1',TO_DATE('2013-03-16 11:58:31', 'YYYY-MM-DD HH24:MI:SS'),NULL,TO_DATE('2013-03-16', 'YYYY-MM-DD'),NULL,NULL,NULL,NULL,NULL,'sysadmin',TO_DATE('2013-03-16 11:58:31', 'YYYY-MM-DD HH24:MI:SS'));
/*employee*/
INSERT INTO org_employee (EMPID,EMPCODE,OPERATORID,USERID,EMPNAME,REALNAME,GENDER,BIRTHDATE,POSITION,EMPSTATUS,CARDTYPE,CARDNO,INDATE,OUTDATE,OTEL,OADDRESS,OZIPCODE,OEMAIL,FAXNO,MOBILENO,QQ,HTEL,HADDRESS,HZIPCODE,PEMAIL,PARTY,DEGREE,MAJOR,SPECIALTY,WORKEXP,REGDATE,CREATETIME,LASTMODYTIME,ORGIDLIST,ORGID,REMARK,TENANT_ID,APP_ID,WEIBO) VALUES (1,'sysadmin',1,'sysadmin','sysadmin','sysadmin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,TO_DATE('2013-03-17 12:21:05', 'YYYY-MM-DD HH24:MI:SS'),TO_DATE('2013-03-17 12:21:05', 'YYYY-MM-DD HH24:MI:SS'),NULL,NULL,NULL,'default',NULL,NULL);

/*role user auth*/

INSERT INTO cap_partyauth (ROLE_TYPE,PARTY_ID,PARTY_TYPE,ROLE_ID,TENANT_ID,CREATEUSER,CREATETIME) VALUES ('role','sysadmin','user','1','default','sysadmin',TO_DATE('2013-03-16 12:00:37', 'YYYY-MM-DD HH24:MI:SS'));

/*role resource auth*/

INSERT INTO CAP_RESAUTH (PARTY_ID,PARTY_TYPE,RES_ID,RES_TYPE,TENANT_ID,RES_STATE,PARTY_SCOPE,CREATEUSER,CREATETIME) VALUES ('1','role','application_add','function','default','1','0','sysadmin',TO_DATE('2013-03-16 11:59:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CAP_RESAUTH (PARTY_ID,PARTY_TYPE,RES_ID,RES_TYPE,TENANT_ID,RES_STATE,PARTY_SCOPE,CREATEUSER,CREATETIME) VALUES ('1','role','application_edit','function','default','1','0','sysadmin',TO_DATE('2013-03-16 11:59:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CAP_RESAUTH (PARTY_ID,PARTY_TYPE,RES_ID,RES_TYPE,TENANT_ID,RES_STATE,PARTY_SCOPE,CREATEUSER,CREATETIME) VALUES ('1','role','application_manage','function','default','1','0','sysadmin',TO_DATE('2013-03-16 11:59:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CAP_RESAUTH (PARTY_ID,PARTY_TYPE,RES_ID,RES_TYPE,TENANT_ID,RES_STATE,PARTY_SCOPE,CREATEUSER,CREATETIME) VALUES ('1','role','auth_graph','function','default','1','0','sysadmin',TO_DATE('2013-03-16 11:59:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CAP_RESAUTH (PARTY_ID,PARTY_TYPE,RES_ID,RES_TYPE,TENANT_ID,RES_STATE,PARTY_SCOPE,CREATEUSER,CREATETIME) VALUES ('1','role','employee_add','function','default','1','0','sysadmin',TO_DATE('2013-03-16 11:59:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CAP_RESAUTH (PARTY_ID,PARTY_TYPE,RES_ID,RES_TYPE,TENANT_ID,RES_STATE,PARTY_SCOPE,CREATEUSER,CREATETIME) VALUES ('1','role','employee_auth','function','default','1','0','sysadmin',TO_DATE('2013-03-16 11:59:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CAP_RESAUTH (PARTY_ID,PARTY_TYPE,RES_ID,RES_TYPE,TENANT_ID,RES_STATE,PARTY_SCOPE,CREATEUSER,CREATETIME) VALUES ('1','role','employee_update','function','default','1','0','sysadmin',TO_DATE('2013-03-16 11:59:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CAP_RESAUTH (PARTY_ID,PARTY_TYPE,RES_ID,RES_TYPE,TENANT_ID,RES_STATE,PARTY_SCOPE,CREATEUSER,CREATETIME) VALUES ('1','role','funcgroup_add','function','default','1','0','sysadmin',TO_DATE('2013-03-16 11:59:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CAP_RESAUTH (PARTY_ID,PARTY_TYPE,RES_ID,RES_TYPE,TENANT_ID,RES_STATE,PARTY_SCOPE,CREATEUSER,CREATETIME) VALUES ('1','role','funcgroup_edit','function','default','1','0','sysadmin',TO_DATE('2013-03-16 11:59:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CAP_RESAUTH (PARTY_ID,PARTY_TYPE,RES_ID,RES_TYPE,TENANT_ID,RES_STATE,PARTY_SCOPE,CREATEUSER,CREATETIME) VALUES ('1','role','function_add','function','default','1','0','sysadmin',TO_DATE('2013-03-16 11:59:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CAP_RESAUTH (PARTY_ID,PARTY_TYPE,RES_ID,RES_TYPE,TENANT_ID,RES_STATE,PARTY_SCOPE,CREATEUSER,CREATETIME) VALUES ('1','role','function_edit','function','default','1','0','sysadmin',TO_DATE('2013-03-16 11:59:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CAP_RESAUTH (PARTY_ID,PARTY_TYPE,RES_ID,RES_TYPE,TENANT_ID,RES_STATE,PARTY_SCOPE,CREATEUSER,CREATETIME) VALUES ('1','role','function_role_auth','function','default','1','0','sysadmin',TO_DATE('2013-03-16 11:59:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CAP_RESAUTH (PARTY_ID,PARTY_TYPE,RES_ID,RES_TYPE,TENANT_ID,RES_STATE,PARTY_SCOPE,CREATEUSER,CREATETIME) VALUES ('1','role','menu_add','function','default','1','0','sysadmin',TO_DATE('2013-03-16 11:59:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CAP_RESAUTH (PARTY_ID,PARTY_TYPE,RES_ID,RES_TYPE,TENANT_ID,RES_STATE,PARTY_SCOPE,CREATEUSER,CREATETIME) VALUES ('1','role','menu_edit','function','default','1','0','sysadmin',TO_DATE('2013-03-16 11:59:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CAP_RESAUTH (PARTY_ID,PARTY_TYPE,RES_ID,RES_TYPE,TENANT_ID,RES_STATE,PARTY_SCOPE,CREATEUSER,CREATETIME) VALUES ('1','role','menu_manage','function','default','1','0','sysadmin',TO_DATE('2013-03-16 11:59:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CAP_RESAUTH (PARTY_ID,PARTY_TYPE,RES_ID,RES_TYPE,TENANT_ID,RES_STATE,PARTY_SCOPE,CREATEUSER,CREATETIME) VALUES ('1','role','org_add','function','default','1','0','sysadmin',TO_DATE('2013-03-16 11:59:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CAP_RESAUTH (PARTY_ID,PARTY_TYPE,RES_ID,RES_TYPE,TENANT_ID,RES_STATE,PARTY_SCOPE,CREATEUSER,CREATETIME) VALUES ('1','role','org_auth','function','default','1','0','sysadmin',TO_DATE('2013-03-16 11:59:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CAP_RESAUTH (PARTY_ID,PARTY_TYPE,RES_ID,RES_TYPE,TENANT_ID,RES_STATE,PARTY_SCOPE,CREATEUSER,CREATETIME) VALUES ('1','role','org_tree','function','default','1','0','sysadmin',TO_DATE('2013-03-16 11:59:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CAP_RESAUTH (PARTY_ID,PARTY_TYPE,RES_ID,RES_TYPE,TENANT_ID,RES_STATE,PARTY_SCOPE,CREATEUSER,CREATETIME) VALUES ('1','role','org_update','function','default','1','0','sysadmin',TO_DATE('2013-03-16 11:59:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CAP_RESAUTH (PARTY_ID,PARTY_TYPE,RES_ID,RES_TYPE,TENANT_ID,RES_STATE,PARTY_SCOPE,CREATEUSER,CREATETIME) VALUES ('1','role','party_auth','function','default','1','0','sysadmin',TO_DATE('2013-03-16 11:59:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CAP_RESAUTH (PARTY_ID,PARTY_TYPE,RES_ID,RES_TYPE,TENANT_ID,RES_STATE,PARTY_SCOPE,CREATEUSER,CREATETIME) VALUES ('1','role','position_auth','function','default','1','0','sysadmin',TO_DATE('2013-03-16 11:59:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CAP_RESAUTH (PARTY_ID,PARTY_TYPE,RES_ID,RES_TYPE,TENANT_ID,RES_STATE,PARTY_SCOPE,CREATEUSER,CREATETIME) VALUES ('1','role','position_org_add','function','default','1','0','sysadmin',TO_DATE('2013-03-16 11:59:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CAP_RESAUTH (PARTY_ID,PARTY_TYPE,RES_ID,RES_TYPE,TENANT_ID,RES_STATE,PARTY_SCOPE,CREATEUSER,CREATETIME) VALUES ('1','role','position_org_update','function','default','1','0','sysadmin',TO_DATE('2013-03-16 11:59:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CAP_RESAUTH (PARTY_ID,PARTY_TYPE,RES_ID,RES_TYPE,TENANT_ID,RES_STATE,PARTY_SCOPE,CREATEUSER,CREATETIME) VALUES ('1','role','reset_password','function','default','1','0','sysadmin',TO_DATE('2013-03-16 11:59:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CAP_RESAUTH (PARTY_ID,PARTY_TYPE,RES_ID,RES_TYPE,TENANT_ID,RES_STATE,PARTY_SCOPE,CREATEUSER,CREATETIME) VALUES ('1','role','role_add','function','default','1','0','sysadmin',TO_DATE('2013-03-16 11:59:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CAP_RESAUTH (PARTY_ID,PARTY_TYPE,RES_ID,RES_TYPE,TENANT_ID,RES_STATE,PARTY_SCOPE,CREATEUSER,CREATETIME) VALUES ('1','role','role_auth','function','default','1','0','sysadmin',TO_DATE('2013-03-16 11:59:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CAP_RESAUTH (PARTY_ID,PARTY_TYPE,RES_ID,RES_TYPE,TENANT_ID,RES_STATE,PARTY_SCOPE,CREATEUSER,CREATETIME) VALUES ('1','role','role_manager','function','default','1','0','sysadmin',TO_DATE('2013-03-16 11:59:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CAP_RESAUTH (PARTY_ID,PARTY_TYPE,RES_ID,RES_TYPE,TENANT_ID,RES_STATE,PARTY_SCOPE,CREATEUSER,CREATETIME) VALUES ('1','role','role_update','function','default','1','0','sysadmin',TO_DATE('2013-03-16 11:59:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CAP_RESAUTH (PARTY_ID,PARTY_TYPE,RES_ID,RES_TYPE,TENANT_ID,RES_STATE,PARTY_SCOPE,CREATEUSER,CREATETIME) VALUES ('1','role','user_add','function','default','1','0','sysadmin',TO_DATE('2013-03-16 11:59:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CAP_RESAUTH (PARTY_ID,PARTY_TYPE,RES_ID,RES_TYPE,TENANT_ID,RES_STATE,PARTY_SCOPE,CREATEUSER,CREATETIME) VALUES ('1','role','user_list','function','default','1','0','sysadmin',TO_DATE('2013-03-16 11:59:11', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO CAP_RESAUTH (PARTY_ID,PARTY_TYPE,RES_ID,RES_TYPE,TENANT_ID,RES_STATE,PARTY_SCOPE,CREATEUSER,CREATETIME) VALUES ('1','role','user_update','function','default','1','0','sysadmin',TO_DATE('2013-03-16 11:59:11', 'YYYY-MM-DD HH24:MI:SS'));


/*unique key*/
DELETE FROM EOS_UNIQUE_TABLE WHERE NAME='AppApplication.appid';
INSERT INTO EOS_UNIQUE_TABLE (NAME,CODE) VALUES ('AppApplication.appid',40);
DELETE FROM EOS_UNIQUE_TABLE WHERE NAME='AppFuncgroup.funcgroupid';
INSERT INTO EOS_UNIQUE_TABLE (NAME,CODE) VALUES ('AppFuncgroup.funcgroupid',40);
DELETE FROM EOS_UNIQUE_TABLE WHERE NAME='AppFunction.funccode';
INSERT INTO EOS_UNIQUE_TABLE (NAME,CODE) VALUES ('AppFunction.funccode',40);
DELETE FROM EOS_UNIQUE_TABLE WHERE NAME='AppMenu.menuid';
INSERT INTO EOS_UNIQUE_TABLE (NAME,CODE) VALUES ('AppMenu.menuid',60);
DELETE FROM EOS_UNIQUE_TABLE WHERE NAME='CapRole.roleId';
INSERT INTO EOS_UNIQUE_TABLE (NAME,CODE) VALUES ('CapRole.roleId',160);
DELETE FROM EOS_UNIQUE_TABLE WHERE NAME='CapSsouser.operatorId';
INSERT INTO EOS_UNIQUE_TABLE (NAME,CODE) VALUES ('CapSsouser.operatorId',100);
DELETE FROM EOS_UNIQUE_TABLE WHERE NAME='CapUser.operatorId';
INSERT INTO EOS_UNIQUE_TABLE (NAME,CODE) VALUES ('CapUser.operatorId',180);
DELETE FROM EOS_UNIQUE_TABLE WHERE NAME='OrgEmployee.empid';
INSERT INTO EOS_UNIQUE_TABLE (NAME,CODE) VALUES ('OrgEmployee.empid',40);

DELETE FROM EOS_DICT_ENTRY WHERE DICTTYPEID='COF_AUTHMODE';
DELETE FROM EOS_DICT_TYPE WHERE DICTTYPEID='COF_AUTHMODE';
DELETE FROM EOS_DICT_ENTRY WHERE DICTTYPEID='COF_LAYOUTSTYLE';
DELETE FROM EOS_DICT_TYPE WHERE DICTTYPEID='COF_LAYOUTSTYLE';
DELETE FROM EOS_DICT_ENTRY WHERE DICTTYPEID='COF_USERSTATUS';
DELETE FROM EOS_DICT_TYPE WHERE DICTTYPEID='COF_USERSTATUS';
DELETE FROM EOS_DICT_ENTRY WHERE DICTTYPEID='COF_GENDER';
DELETE FROM EOS_DICT_TYPE WHERE DICTTYPEID='COF_GENDER';
DELETE FROM EOS_DICT_ENTRY WHERE DICTTYPEID='COF_CARDTYPE';
DELETE FROM EOS_DICT_TYPE WHERE DICTTYPEID='COF_CARDTYPE';
DELETE FROM EOS_DICT_ENTRY WHERE DICTTYPEID='COF_EMPSTATUS';
DELETE FROM EOS_DICT_TYPE WHERE DICTTYPEID='COF_EMPSTATUS';
DELETE FROM EOS_DICT_ENTRY WHERE DICTTYPEID='COF_PARTYVISAGE';
DELETE FROM EOS_DICT_TYPE WHERE DICTTYPEID='COF_PARTYVISAGE';
DELETE FROM EOS_DICT_ENTRY WHERE DICTTYPEID='COF_EMPLEVEL';
DELETE FROM EOS_DICT_TYPE WHERE DICTTYPEID='COF_EMPLEVEL';
DELETE FROM EOS_DICT_ENTRY WHERE DICTTYPEID='COF_SKINLAYOUT';
DELETE FROM EOS_DICT_TYPE WHERE DICTTYPEID='COF_SKINLAYOUT';
DELETE FROM EOS_DICT_ENTRY WHERE DICTTYPEID='COF_OPERSTATUS';
DELETE FROM EOS_DICT_TYPE WHERE DICTTYPEID='COF_OPERSTATUS';
DELETE FROM EOS_DICT_ENTRY WHERE DICTTYPEID='COF_ORGTYPE';
DELETE FROM EOS_DICT_TYPE WHERE DICTTYPEID='COF_ORGTYPE';
DELETE FROM EOS_DICT_ENTRY WHERE DICTTYPEID='COF_ORGDEGREE';
DELETE FROM EOS_DICT_TYPE WHERE DICTTYPEID='COF_ORGDEGREE';
DELETE FROM EOS_DICT_ENTRY WHERE DICTTYPEID='COF_ORGSTATUS';
DELETE FROM EOS_DICT_TYPE WHERE DICTTYPEID='COF_ORGSTATUS';
DELETE FROM EOS_DICT_ENTRY WHERE DICTTYPEID='COF_APPTYPE';
DELETE FROM EOS_DICT_TYPE WHERE DICTTYPEID='COF_APPTYPE';
DELETE FROM EOS_DICT_ENTRY WHERE DICTTYPEID='COF_FUNCTYPE';
DELETE FROM EOS_DICT_TYPE WHERE DICTTYPEID='COF_FUNCTYPE';
DELETE FROM EOS_DICT_ENTRY WHERE DICTTYPEID='COF_YESORNO';
DELETE FROM EOS_DICT_TYPE WHERE DICTTYPEID='COF_YESORNO';


insert into EOS_DICT_TYPE (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) values ('COF_AUTHMODE', '认证模式', 1, null, '.COF_AUTHMODE.');
insert into EOS_DICT_TYPE (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) values ('COF_LAYOUTSTYLE', '菜单风格', 1, null, '.COF_LAYOUTSTYLE.');
insert into EOS_DICT_TYPE (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) values ('COF_USERSTATUS', '用户状态', 1, null, '.COF_USERSTATUS.');
insert into EOS_DICT_TYPE (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) values ('COF_GENDER', '性别', 1, null, '.COF_GENDER.');
insert into EOS_DICT_TYPE (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) values ('COF_CARDTYPE', '证件类型', 1, null, '.COF_CARDTYPE.');
insert into EOS_DICT_TYPE (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) values ('COF_EMPSTATUS', '人员状态', 1, null, '.COF_EMPSTATUS.');
insert into EOS_DICT_TYPE (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) values ('COF_PARTYVISAGE', '政治面貌', 1, null, '.COF_PARTYTYPE.');
insert into EOS_DICT_TYPE (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) values ('COF_EMPLEVEL', '人员级别', 1, null, '.COF_EMPLEVEL.');
insert into EOS_DICT_TYPE (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) values ('COF_SKINLAYOUT', '菜单布局', 1, null, '.COF_SKINLAYOUT.');
insert into EOS_DICT_TYPE (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) values ('COF_OPERSTATUS', '操作员状态', 1, null, '.COF_OPERSTATUS.');
insert into EOS_DICT_TYPE (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) values ('COF_ORGTYPE', '机构类型', 1, null, '.COF_ORGTYPE.');
insert into EOS_DICT_TYPE (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) values ('COF_ORGDEGREE', '机构等级', 1, null, '.COF_ORGDEGREE.');
insert into EOS_DICT_TYPE (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) values ('COF_ORGSTATUS', '机构状态', 1, null, '.COF_ORGSTATUS.');
insert into EOS_DICT_TYPE (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) values ('COF_APPTYPE', '应用类型', 1, null, '.COF_APPTYPE.');
insert into EOS_DICT_TYPE (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) values ('COF_FUNCTYPE', '功能类型', 1, null, '.COF_FUNCTYPE.');
insert into EOS_DICT_TYPE (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) values ('COF_YESORNO', '开关', 1, null, '.COF_YESORNO.');


insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_AUTHMODE', 'ldap', 'LDAP认证', 1, 2, 1, null, '.ldap.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_AUTHMODE', 'local', '本地密码认证', 1, 1, 1, null, '.local.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_AUTHMODE', 'portal', 'Portal认证', 1, 4, 1, null, '.portal.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_AUTHMODE', 'remote', '远程认证', 1, 3, 1, null, '.remote.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_LAYOUTSTYLE', '0', '风格1', 1, 1, 1, null, null, null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_LAYOUTSTYLE', '1', '风格2', 1, 2, 1, null, null, null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_USERSTATUS', '0', '挂起', 1, 1, 1, null, '.0.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_USERSTATUS', '1', '正常', 1, 2, 1, null, '.1.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_USERSTATUS', '2', '锁定', 1, 3, 1, null, '.2.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_USERSTATUS', '9', '注销', 1, 4, 1, null, '.9.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_GENDER', 'f', '女', 1, 2, 1, null, '.f.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_GENDER', 'm', '男', 1, 1, 1, null, '.m.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_GENDER', 'n', '未知', 1, 4, 1, null, '.n.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_CARDTYPE', 'id', '身份证', 1, 1, 1, null, '.id.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_CARDTYPE', 'junguan', '军官证', 1, 4, 1, null, '.junguan.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_CARDTYPE', 'passport', '护照', 1, 3, 1, null, '.passport.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_CARDTYPE', 'student', '学生证', 1, 5, 1, null, '.student.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_CARDTYPE', 'zhanzhu', '暂住证', 1, 2, 1, null, '.zhanzhu.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_EMPSTATUS', 'leave', '离职', 1, 4, 1, null, '.leave.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_EMPSTATUS', 'off', '退休', 1, 3, 1, null, '.off.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_EMPSTATUS', 'on', '在岗', 1, 1, 1, null, '.on.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_EMPSTATUS', 'wait', '待岗', 1, 2, 1, null, '.wait.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_PARTYVISAGE', 'comsomol', '团员', null, 1, null, null, '.comsomol.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_PARTYVISAGE', 'crowd', '群众', null, 2, null, null, '.crowd.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_PARTYVISAGE', 'partymember', '党员', null, 3, null, null, '.partymember.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_EMPLEVEL', 'level1', '级别1', 1, 1, 1, null, '.level1.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_EMPLEVEL', 'level2', '级别2', 1, 2, 1, null, '.level2.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_EMPLEVEL', 'level3', '级别3', 1, 3, 1, null, '.level3.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_OPERSTATUS', 'running', '正常', 1, 1, 1, null, '.running.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_OPERSTATUS', 'stop', '不正常', 1, 2, 1, null, '.stop.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_ORGTYPE', 'b', '分公司', 1, 3, 1, null, '.b.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_ORGTYPE', 'bd', '分公司部门', 1, 4, 1, null, '.bd.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_ORGTYPE', 'h', '总公司', 1, 1, 1, null, '.h.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_ORGTYPE', 'hd', '总公司部门', 1, 2, 1, null, '.hd.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_ORGDEGREE', 'branch', '分行', 1, 2, 1, null, '.branch.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_ORGDEGREE', 'hq', '总行', 1, 1, 1, null, '.hq.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_ORGDEGREE', 'oversea', '海外分行', 1, 3, 1, null, '.oversea.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_ORGSTATUS', 'cancel', '注销', 1, 2, 1, null, '.cancel.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_ORGSTATUS', 'running', '正常', 1, 1, 1, null, '.running.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_SKINLAYOUT','default','默认布局',1,1,1,NULL,'.default.',NULL,NULL);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_SKINLAYOUT','outlook','Outlook布局',1,2,1,NULL,'.outlook.',NULL,NULL);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values ('COF_SKINLAYOUT','tabs','多Tab布局',1,3,1,NULL,'.tabs.',NULL,NULL);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values('COF_APPTYPE', '0', '本地', 1, 1, 1, null, '.0.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values('COF_APPTYPE', '1', '远程', 1, 2, 1, null, '.1.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values('COF_FUNCTYPE', 'flow', '页面流', 1, 1, 1, null, '.flow.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values('COF_FUNCTYPE', 'page', '页面', 1, 2, 1, null, '.page.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values('COF_FUNCTYPE', 'form', '表单', 1, 3, 1, null, '.form.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values('COF_FUNCTYPE', 'view', '视图', 1, 4, 1, null, '.view.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values('COF_FUNCTYPE', 'startprocess', '启动流程', 1, 5, 1, null, '.startprocess.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values('COF_FUNCTYPE', 'other', '其他', 1, 6, 1, null, '.other.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values('COF_YESORNO', '0', '否', 1, 2, 1, null, '.0.', null, null);
insert into EOS_DICT_ENTRY (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) values('COF_YESORNO', '1', '是', 1, 1, 1, null, '.1.', null, null);

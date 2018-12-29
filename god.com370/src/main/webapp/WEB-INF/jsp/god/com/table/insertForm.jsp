<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>

<HEAD>
<META NAME="Generator" CONTENT="Hancom HWP 8.5.8.1477">
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=utf-8">
<TITLE>법령안</TITLE>
<STYLE type="text/css">
<!--
p.HStyle0
	{style-name:"바탕글";}
li.HStyle0
	{style-name:"바탕글";}
div.HStyle0
	{style-name:"바탕글";}
p.HStyle1
	{style-name:"조";}
li.HStyle1
	{style-name:"조";}
div.HStyle1
	{style-name:"조";}
p.HStyle2
	{style-name:"항";}
li.HStyle2
	{style-name:"항";}
div.HStyle2
	{style-name:"항";}
p.HStyle3
	{style-name:"호";}
li.HStyle3
	{style-name:"호";}
div.HStyle3
	{style-name:"호";}
p.HStyle4
	{style-name:"목";}
li.HStyle4
	{style-name:"목";}
div.HStyle4
	{style-name:"목";}
p.HStyle5
	{style-name:"세호";}
li.HStyle5
	{style-name:"세호";}
div.HStyle5
	{style-name:"세호";}
p.HStyle6
	{style-name:"세목";}
li.HStyle6
	{style-name:"세목";}
div.HStyle6
	{style-name:"세목";}
p.HStyle7
	{style-name:"세세호";}
li.HStyle7
	{style-name:"세세호";}
div.HStyle7
	{style-name:"세세호";}
p.HStyle8
	{style-name:"세세목";}
li.HStyle8
	{style-name:"세세목";}
div.HStyle8
	{style-name:"세세목";}
p.HStyle9
	{style-name:"법령기본스타일"; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:0.0pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
li.HStyle9
	{style-name:"법령기본스타일"; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:0.0pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
div.HStyle9
	{style-name:"법령기본스타일"; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:0.0pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
p.HStyle10
	{style-name:"편장절관"; margin-top:0.0pt; margin-bottom:0.0pt; text-align:center; text-indent:0.0pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
li.HStyle10
	{style-name:"편장절관"; margin-top:0.0pt; margin-bottom:0.0pt; text-align:center; text-indent:0.0pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
div.HStyle10
	{style-name:"편장절관"; margin-top:0.0pt; margin-bottom:0.0pt; text-align:center; text-indent:0.0pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
p.HStyle11
	{style-name:"조_표"; margin-left:14.0pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-14.0pt; line-height:180%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
li.HStyle11
	{style-name:"조_표"; margin-left:14.0pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-14.0pt; line-height:180%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
div.HStyle11
	{style-name:"조_표"; margin-left:14.0pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-14.0pt; line-height:180%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
p.HStyle12
	{style-name:"항_표"; margin-left:14.0pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-14.0pt; line-height:180%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
li.HStyle12
	{style-name:"항_표"; margin-left:14.0pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-14.0pt; line-height:180%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
div.HStyle12
	{style-name:"항_표"; margin-left:14.0pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-14.0pt; line-height:180%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
p.HStyle13
	{style-name:"호_표"; margin-left:24.4pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-24.4pt; line-height:180%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
li.HStyle13
	{style-name:"호_표"; margin-left:24.4pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-24.4pt; line-height:180%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
div.HStyle13
	{style-name:"호_표"; margin-left:24.4pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-24.4pt; line-height:180%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
p.HStyle14
	{style-name:"목_표"; margin-left:45.4pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-45.4pt; line-height:180%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
li.HStyle14
	{style-name:"목_표"; margin-left:45.4pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-45.4pt; line-height:180%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
div.HStyle14
	{style-name:"목_표"; margin-left:45.4pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-45.4pt; line-height:180%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
p.HStyle15
	{style-name:"세호_표"; margin-left:54.2pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-54.2pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
li.HStyle15
	{style-name:"세호_표"; margin-left:54.2pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-54.2pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
div.HStyle15
	{style-name:"세호_표"; margin-left:54.2pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-54.2pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
p.HStyle16
	{style-name:"세목_표"; margin-left:75.2pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-75.2pt; line-height:180%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
li.HStyle16
	{style-name:"세목_표"; margin-left:75.2pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-75.2pt; line-height:180%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
div.HStyle16
	{style-name:"세목_표"; margin-left:75.2pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-75.2pt; line-height:180%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
p.HStyle17
	{style-name:"세세호_표"; margin-left:87.8pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-87.8pt; line-height:180%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
li.HStyle17
	{style-name:"세세호_표"; margin-left:87.8pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-87.8pt; line-height:180%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
div.HStyle17
	{style-name:"세세호_표"; margin-left:87.8pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-87.8pt; line-height:180%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
p.HStyle18
	{style-name:"세세목_표"; margin-left:108.8pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-108.8pt; line-height:180%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
li.HStyle18
	{style-name:"세세목_표"; margin-left:108.8pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-108.8pt; line-height:180%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
div.HStyle18
	{style-name:"세세목_표"; margin-left:108.8pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-108.8pt; line-height:180%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
p.HStyle19
	{style-name:"편장절관_표"; margin-top:0.0pt; margin-bottom:0.0pt; text-align:center; text-indent:0.0pt; line-height:180%; font-size:14.0pt; font-family:바탕체; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
li.HStyle19
	{style-name:"편장절관_표"; margin-top:0.0pt; margin-bottom:0.0pt; text-align:center; text-indent:0.0pt; line-height:180%; font-size:14.0pt; font-family:바탕체; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
div.HStyle19
	{style-name:"편장절관_표"; margin-top:0.0pt; margin-bottom:0.0pt; text-align:center; text-indent:0.0pt; line-height:180%; font-size:14.0pt; font-family:바탕체; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
p.HStyle20
	{style-name:"제명_표"; margin-top:0.0pt; margin-bottom:0.0pt; text-align:center; text-indent:0.0pt; line-height:180%; font-size:14.0pt; font-family:바탕체; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
li.HStyle20
	{style-name:"제명_표"; margin-top:0.0pt; margin-bottom:0.0pt; text-align:center; text-indent:0.0pt; line-height:180%; font-size:14.0pt; font-family:바탕체; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
div.HStyle20
	{style-name:"제명_표"; margin-top:0.0pt; margin-bottom:0.0pt; text-align:center; text-indent:0.0pt; line-height:180%; font-size:14.0pt; font-family:바탕체; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
p.HStyle21
	{style-name:"타법개정_조"; margin-left:14.0pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-14.0pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
li.HStyle21
	{style-name:"타법개정_조"; margin-left:14.0pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-14.0pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
div.HStyle21
	{style-name:"타법개정_조"; margin-left:14.0pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-14.0pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
p.HStyle22
	{style-name:"타법개정_항"; margin-left:24.4pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-24.4pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
li.HStyle22
	{style-name:"타법개정_항"; margin-left:24.4pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-24.4pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
div.HStyle22
	{style-name:"타법개정_항"; margin-left:24.4pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-24.4pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
p.HStyle23
	{style-name:"타법개정_호"; margin-left:45.4pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-45.4pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
li.HStyle23
	{style-name:"타법개정_호"; margin-left:45.4pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-45.4pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
div.HStyle23
	{style-name:"타법개정_호"; margin-left:45.4pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-45.4pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
p.HStyle24
	{style-name:"타법개정_목"; margin-left:54.2pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-54.2pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
li.HStyle24
	{style-name:"타법개정_목"; margin-left:54.2pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-54.2pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
div.HStyle24
	{style-name:"타법개정_목"; margin-left:54.2pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-54.2pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
p.HStyle25
	{style-name:"입법례_본문"; margin-left:11.0pt; margin-right:2.0pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-9.0pt; line-height:165%; font-size:10.5pt; font-family:-윤명조320; letter-spacing:-5%; font-weight:"normal"; font-style:"normal"; color:#000000;}
li.HStyle25
	{style-name:"입법례_본문"; margin-left:11.0pt; margin-right:2.0pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-9.0pt; line-height:165%; font-size:10.5pt; font-family:-윤명조320; letter-spacing:-5%; font-weight:"normal"; font-style:"normal"; color:#000000;}
div.HStyle25
	{style-name:"입법례_본문"; margin-left:11.0pt; margin-right:2.0pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-9.0pt; line-height:165%; font-size:10.5pt; font-family:-윤명조320; letter-spacing:-5%; font-weight:"normal"; font-style:"normal"; color:#000000;}
p.HStyle26
	{style-name:"당구장"; margin-left:14.6pt; margin-right:2.0pt; margin-top:2.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-12.6pt; line-height:155%; font-size:9.5pt; font-family:KoPub돋움체 Light; letter-spacing:-7%; font-weight:"normal"; font-style:"normal"; color:#000000;}
li.HStyle26
	{style-name:"당구장"; margin-left:14.6pt; margin-right:2.0pt; margin-top:2.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-12.6pt; line-height:155%; font-size:9.5pt; font-family:KoPub돋움체 Light; letter-spacing:-7%; font-weight:"normal"; font-style:"normal"; color:#000000;}
div.HStyle26
	{style-name:"당구장"; margin-left:14.6pt; margin-right:2.0pt; margin-top:2.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-12.6pt; line-height:155%; font-size:9.5pt; font-family:KoPub돋움체 Light; letter-spacing:-7%; font-weight:"normal"; font-style:"normal"; color:#000000;}
p.HStyle27
	{style-name:"법령안_호"; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:0.0pt; line-height:230%; font-size:15.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"bold"; font-style:"normal"; color:#000000;}
li.HStyle27
	{style-name:"법령안_호"; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:0.0pt; line-height:230%; font-size:15.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"bold"; font-style:"normal"; color:#000000;}
div.HStyle27
	{style-name:"법령안_호"; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:0.0pt; line-height:230%; font-size:15.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"bold"; font-style:"normal"; color:#000000;}
p.HStyle28
	{style-name:"법령안_무기호"; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:0.0pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
li.HStyle28
	{style-name:"법령안_무기호"; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:0.0pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
div.HStyle28
	{style-name:"법령안_무기호"; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:0.0pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
p.HStyle29
	{style-name:"법령안_목"; margin-left:17.4pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-17.4pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
li.HStyle29
	{style-name:"법령안_목"; margin-left:17.4pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-17.4pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
div.HStyle29
	{style-name:"법령안_목"; margin-left:17.4pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-17.4pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
p.HStyle30
	{style-name:"법령안_세호"; margin-left:26.2pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-26.2pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
li.HStyle30
	{style-name:"법령안_세호"; margin-left:26.2pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-26.2pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
div.HStyle30
	{style-name:"법령안_세호"; margin-left:26.2pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-26.2pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
p.HStyle31
	{style-name:"법령안_세목"; margin-left:47.2pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-47.2pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
li.HStyle31
	{style-name:"법령안_세목"; margin-left:47.2pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-47.2pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
div.HStyle31
	{style-name:"법령안_세목"; margin-left:47.2pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-47.2pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
p.HStyle32
	{style-name:"법령안_세세호"; margin-left:59.8pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-59.8pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
li.HStyle32
	{style-name:"법령안_세세호"; margin-left:59.8pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-59.8pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
div.HStyle32
	{style-name:"법령안_세세호"; margin-left:59.8pt; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:-59.8pt; line-height:230%; font-size:14.0pt; font-family:한양신명조; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
p.HStyle33
	{style-name:"자료"; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:0.0pt; line-height:130%; font-size:10.0pt; font-family:나눔고딕 Light; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
li.HStyle33
	{style-name:"자료"; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:0.0pt; line-height:130%; font-size:10.0pt; font-family:나눔고딕 Light; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
div.HStyle33
	{style-name:"자료"; margin-top:0.0pt; margin-bottom:0.0pt; text-align:justify; text-indent:0.0pt; line-height:130%; font-size:10.0pt; font-family:나눔고딕 Light; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
p.HStyle34
	{style-name:"표안내용"; margin-top:0.0pt; margin-bottom:0.0pt; text-align:center; text-indent:0.0pt; line-height:130%; font-size:10.0pt; font-family:나눔고딕 Light; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
li.HStyle34
	{style-name:"표안내용"; margin-top:0.0pt; margin-bottom:0.0pt; text-align:center; text-indent:0.0pt; line-height:130%; font-size:10.0pt; font-family:나눔고딕 Light; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
div.HStyle34
	{style-name:"표안내용"; margin-top:0.0pt; margin-bottom:0.0pt; text-align:center; text-indent:0.0pt; line-height:130%; font-size:10.0pt; font-family:나눔고딕 Light; letter-spacing:0; font-weight:"normal"; font-style:"normal"; color:#000000;}
-->
</STYLE>
</HEAD>

<BODY>

<form:form commandName="godTableVO" action="${action}">

<form:input path="tableId" />
<%-- <form:input path="tableNm" /> --%>
<input id="tableNm" name="tableNm" type="text" value="<c:out value="${empty godTableVO.tableNm ? '[별지 제10호서식] 산림기술자 자격증(신규발급¸ 재발급)신청서' : godTableVO.tableNm}" escapeXml="true" />" />

<form:input path="useAt" />
<%-- <form:input path="lastUpdtPnttm" /> --%>
<%-- <form:input path="lastUpdusrId" /> --%>

<input type="submit" value="${submit}">
<a href="selectList.do">목록</a>

<P CLASS=HStyle9 STYLE='margin-left:14.0pt;text-indent:-14.0pt;'>
<TABLE border="1" cellspacing="0" cellpadding="0" style='border-collapse:collapse;border:none;'>
<TR>
	<TD colspan="14" valign="top" style='width:641;height:26;border-left:none;border-right:none;border-top:none;border-bottom:none;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
	<P CLASS=HStyle0><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";line-height:230%'>■ 산림기술 진흥 및 관리에 관한 법률 시행규칙 [별지 제10호서식]</SPAN></P>
	</TD>
</TR>
<TR>
	<TD rowspan="2" colspan="4" valign="middle" style='width:281;height:58;border-left:none;border-right:none;border-top:none;border-bottom:none;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
	<P CLASS=HStyle0><SPAN STYLE='font-size:16.0pt;font-family:"HY견고딕";line-height:230%'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;산림기술자 자격증</SPAN></P>
	</TD>
	<TD colspan="6" valign="middle" style='width:156;height:29;border-left:none;border-right:none;border-top:none;border-bottom:none;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
<!-- 	<P CLASS=HStyle0><SPAN STYLE='font-size:16.0pt;font-family:"HY견고딕";line-height:230%'>[&nbsp; ] 신규발급</SPAN></P> -->
	<P CLASS=HStyle0><SPAN STYLE='font-size:16.0pt;font-family:"HY견고딕";line-height:230%'>[<form:radiobutton path="columnNm" value="신규" />] 신규발급</SPAN></P>
	</TD>
	<TD rowspan="2" colspan="4" valign="middle" style='width:204;height:58;border-left:none;border-right:none;border-top:none;border-bottom:none;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
	<P CLASS=HStyle0><SPAN STYLE='font-size:16.0pt;font-family:"HY견고딕";line-height:230%'>신청서</SPAN></P>
	</TD>
</TR>
<TR>
	<TD colspan="6" valign="middle" style='width:156;height:29;border-left:none;border-right:none;border-top:none;border-bottom:none;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
<!-- 	<P CLASS=HStyle0><SPAN STYLE='font-size:16.0pt;font-family:"HY견고딕";line-height:230%'>[&nbsp; ] 재발급</SPAN></P> -->
	<P CLASS=HStyle0><SPAN STYLE='font-size:16.0pt;font-family:"HY견고딕";line-height:230%'>[<form:radiobutton path="columnNm" value="재발급" />] 재발급</SPAN></P>
	</TD>
</TR>
<TR>
	<TD colspan="14" valign="middle" style='width:641;height:18;border-left:none;border-right:none;border-top:none;border-bottom:none;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
	<P CLASS=HStyle0><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";line-height:230%'>※ </SPAN><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";letter-spacing:-15%;line-height:230%'>[&nbsp; ]에는 해당되는 곳에 √표를 하고, </SPAN><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";line-height:230%'>바탕색이 있는 난은 신청인이 적지 않습니다.</SPAN></P>
	</TD>
</TR>
<TR>
	<TD colspan="14" valign="middle" style='width:641;height:6;border-left:none;border-right:none;border-top:none;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
	<P CLASS=HStyle0><SPAN STYLE='font-size:2.0pt;font-family:"돋움체";line-height:230%'>&nbsp;</SPAN></P>
	</TD>
</TR>
<TR>
	<TD colspan="2" valign="top" bgcolor="#d6d6d6"  style='width:134;height:37;border-left:none;border-right:solid #5d5d5d 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 5.1pt 1.4pt 2.8pt'>
	<P CLASS=HStyle0 STYLE='line-height:110%;'><SPAN STYLE='font-size:8.7pt;font-family:"돋움체";letter-spacing:-7%;line-height:110%'>접수번호</SPAN></P>
	<form:input path="columnNm2" />
	</TD>
	<TD colspan="3" valign="top" bgcolor="#d6d6d6"  style='width:191;height:37;border-left:solid #5d5d5d 0.4pt;border-right:solid #5d5d5d 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 5.1pt 1.4pt 2.8pt'>
	<P CLASS=HStyle0 STYLE='line-height:110%;'><SPAN STYLE='font-size:8.7pt;font-family:"돋움체";letter-spacing:-7%;line-height:110%'>접수일시</SPAN></P>
	<form:input path="columnNm3" />
	</TD>
	<TD colspan="7" valign="top" bgcolor="#d6d6d6"  style='width:184;height:37;border-left:solid #5d5d5d 0.4pt;border-right:solid #5d5d5d 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 5.1pt 1.4pt 2.8pt'>
	<P CLASS=HStyle0 STYLE='line-height:110%;'><SPAN STYLE='font-size:8.7pt;font-family:"돋움체";letter-spacing:-7%;line-height:110%'>발급일</SPAN></P>
	<form:input path="columnNm4" />
	</TD>
	<TD colspan="2" valign="top" bgcolor="#d6d6d6"  style='width:131;height:37;border-left:solid #5d5d5d 0.4pt;border-right:none;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 5.1pt 1.4pt 2.8pt'>
	<P CLASS=HStyle0 STYLE='margin-left:9.8pt;text-indent:-9.8pt;line-height:110%;'><SPAN STYLE='font-size:8.7pt;font-family:"돋움체";letter-spacing:-7%;line-height:110%'>처리기간&nbsp; </SPAN><SPAN STYLE='font-size:8.7pt;font-family:"돋움체";letter-spacing:-7%;color:#0000ff;line-height:110%'> </SPAN><SPAN STYLE='font-size:8.7pt;font-family:"돋움체";letter-spacing:-7%;line-height:110%'>7일</SPAN></P>
	<form:input path="columnNm5" />
	</TD>
</TR>
<TR>
	<TD colspan="14" valign="middle" style='width:641;height:5;border-left:none;border-right:none;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
	<P CLASS=HStyle0 STYLE='text-align:center;'><SPAN STYLE='font-size:1.0pt;font-family:"돋움체";line-height:230%'>&nbsp;</SPAN></P>
	</TD>
</TR>
<TR>
	<TD rowspan="3" valign="middle" style='width:69;height:142;border-left:none;border-right:solid #5d5d5d 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 5.1pt 1.4pt 2.8pt'>
	<P CLASS=HStyle0 STYLE='text-align:center;line-height:110%;'><SPAN STYLE='font-size:10.7pt;font-family:"돋움체";line-height:110%'>신청인</SPAN></P>
	</TD>
	<TD colspan="4" valign="top" style='width:256;height:41;border-left:solid #5d5d5d 0.4pt;border-right:solid #5d5d5d 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #5d5d5d 0.4pt;padding:1.4pt 5.1pt 1.4pt 2.8pt'>
	<P CLASS=HStyle0 STYLE='margin-top:1.0pt;line-height:110%;'><SPAN STYLE='font-family:"돋움체"'>성명</SPAN></P>
	<form:input path="columnNm6" />
	</TD>
	<TD colspan="7" valign="top" style='width:184;height:41;border-left:solid #5d5d5d 0.4pt;border-right:solid #5d5d5d 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #5d5d5d 0.4pt;padding:1.4pt 5.1pt 1.4pt 2.8pt'>
	<P CLASS=HStyle0 STYLE='margin-top:1.0pt;line-height:110%;'><SPAN STYLE='font-family:"돋움체"'>생년월일</SPAN></P>
	<form:input path="columnNm7" />
	</TD>
	<TD colspan="2" valign="top" style='width:131;height:41;border-left:solid #5d5d5d 0.4pt;border-right:none;border-top:solid #000000 0.4pt;border-bottom:solid #5d5d5d 0.4pt;padding:1.4pt 5.1pt 1.4pt 2.8pt'>
	<P CLASS=HStyle0 STYLE='margin-top:1.0pt;line-height:110%;'><SPAN STYLE='font-family:"돋움체"'>성별</SPAN></P>
	<form:input path="columnNm8" />
	</TD>
</TR>
<TR>
	<TD colspan="13" valign="top" style='width:572;height:50;border-left:solid #5d5d5d 0.4pt;border-right:none;border-top:solid #5d5d5d 0.4pt;border-bottom:solid #5d5d5d 0.4pt;padding:1.4pt 5.1pt 1.4pt 2.8pt'>
	<P CLASS=HStyle0 STYLE='margin-top:1.0pt;line-height:110%;'><SPAN STYLE='font-family:"돋움체"'>주소</SPAN></P>
	<P CLASS=HStyle0 STYLE='margin-top:1.0pt;line-height:110%;'><SPAN STYLE='font-family:"돋움체"'><form:input path="columnNm9" />&nbsp;</SPAN></P>
<!-- 	<P CLASS=HStyle0 STYLE='margin-top:1.0pt;text-align:right;line-height:110%;'><SPAN STYLE='font-family:"돋움체"'>(전화:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; )</SPAN></P> -->
	<P CLASS=HStyle0 STYLE='margin-top:1.0pt;text-align:right;line-height:110%;'><SPAN STYLE='font-family:"돋움체"'>(전화:<form:input path="columnNm10" />)</SPAN></P>
	</TD>
</TR>
<TR>
	<TD colspan="4" valign="top" style='width:256;height:50;border-left:solid #5d5d5d 0.4pt;border-right:solid #5d5d5d 0.4pt;border-top:solid #5d5d5d 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 5.1pt 1.4pt 2.8pt'>
	<P CLASS=HStyle0 STYLE='margin-top:1.0pt;line-height:110%;'><SPAN STYLE='font-family:"돋움체"'>직업</SPAN></P>
	<form:input path="columnNm11" />
	</TD>
	<TD colspan="9" valign="top" style='width:315;height:50;border-left:solid #5d5d5d 0.4pt;border-right:none;border-top:solid #5d5d5d 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 5.1pt 1.4pt 2.8pt'>
	<P CLASS=HStyle0 STYLE='margin-top:1.0pt;line-height:110%;'><SPAN STYLE='font-family:"돋움체"'>근무처</SPAN></P>
	<P CLASS=HStyle0 STYLE='margin-top:1.0pt;line-height:110%;'><SPAN STYLE='font-family:"돋움체"'><form:input path="columnNm12" />&nbsp;</SPAN></P>
<!-- 	<P CLASS=HStyle0 STYLE='margin-top:1.0pt;text-align:right;line-height:110%;'><SPAN STYLE='font-family:"돋움체"'>(전화:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; )</SPAN></P> -->
	<P CLASS=HStyle0 STYLE='margin-top:1.0pt;text-align:right;line-height:110%;'><SPAN STYLE='font-family:"돋움체"'>(전화:<form:input path="columnNm13" />)</SPAN></P>
	</TD>
</TR>
<TR>
	<TD colspan="14" valign="middle" style='width:641;height:5;border-left:none;border-right:none;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
	<P CLASS=HStyle0 STYLE='text-align:center;'><SPAN STYLE='font-size:1.0pt;font-family:"돋움체";line-height:230%'>&nbsp;</SPAN></P>
	</TD>
</TR>
<TR>
	<TD rowspan="2" valign="middle" style='width:69;height:69;border-left:none;border-right:solid #5d5d5d 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 5.1pt 1.4pt 2.8pt'>
	<P CLASS=HStyle0 STYLE='text-align:center;line-height:110%;'><SPAN STYLE='font-size:10.7pt;font-family:"돋움체";line-height:110%'>신청명세</SPAN></P>
	</TD>
	<TD colspan="2" valign="middle" style='width:142;height:34;border-left:solid #5d5d5d 0.4pt;border-right:solid #5d5d5d 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #4c4c4c 0.4pt;padding:1.4pt 5.1pt 1.4pt 2.8pt'>
	<P CLASS=HStyle0 STYLE='margin-top:1.0pt;text-align:center;line-height:110%;'><SPAN STYLE='font-family:"돋움체"'>기술종류</SPAN></P>
	</TD>
	<TD colspan="4" valign="middle" style='width:142;height:34;border-left:solid #5d5d5d 0.4pt;border-right:solid #5d5d5d 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #4c4c4c 0.4pt;padding:1.4pt 5.1pt 1.4pt 2.8pt'>
	<P CLASS=HStyle0 STYLE='margin-top:1.0pt;text-align:center;line-height:110%;'><SPAN STYLE='font-family:"돋움체"'>등급</SPAN></P>
	</TD>
	<TD colspan="4" valign="middle" style='width:142;height:34;border-left:solid #5d5d5d 0.4pt;border-right:solid #5d5d5d 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #4c4c4c 0.4pt;padding:1.4pt 5.1pt 1.4pt 2.8pt'>
	<P CLASS=HStyle0 STYLE='margin-top:1.0pt;text-align:center;line-height:110%;'><SPAN STYLE='font-family:"돋움체"'>구분</SPAN></P>
	</TD>
	<TD colspan="3" valign="middle" style='width:145;height:34;border-left:solid #5d5d5d 0.4pt;border-right:none;border-top:solid #000000 0.4pt;border-bottom:solid #4c4c4c 0.4pt;padding:1.4pt 5.1pt 1.4pt 2.8pt'>
	<P CLASS=HStyle0 STYLE='margin-top:1.0pt;text-align:center;line-height:110%;'><SPAN STYLE='font-family:"돋움체"'>재발급 사유</SPAN></P>
	</TD>
</TR>
<TR>
	<TD colspan="2" valign="middle" style='width:142;height:34;border-left:solid #5d5d5d 0.4pt;border-right:solid #5d5d5d 0.4pt;border-top:solid #4c4c4c 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 5.1pt 1.4pt 2.8pt'>
<!-- 	<P CLASS=HStyle0 STYLE='margin-top:1.0pt;text-align:center;line-height:110%;'><SPAN STYLE='font-family:"돋움체"'>&nbsp;</SPAN></P> -->
	<P CLASS=HStyle0 STYLE='margin-top:1.0pt;text-align:center;line-height:110%;'><form:input path="columnNm14" /></P>
	</TD>
	<TD colspan="4" valign="middle" style='width:142;height:34;border-left:solid #5d5d5d 0.4pt;border-right:solid #5d5d5d 0.4pt;border-top:solid #4c4c4c 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 5.1pt 1.4pt 2.8pt'>
<!-- 	<P CLASS=HStyle0 STYLE='margin-top:1.0pt;text-align:center;line-height:110%;'><SPAN STYLE='font-family:"돋움체"'>&nbsp;</SPAN></P> -->
	<P CLASS=HStyle0 STYLE='margin-top:1.0pt;text-align:center;line-height:110%;'><form:input path="columnNm15" /></P>
	</TD>
	<TD colspan="4" valign="middle" style='width:142;height:34;border-left:solid #5d5d5d 0.4pt;border-right:solid #5d5d5d 0.4pt;border-top:solid #4c4c4c 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 5.1pt 1.4pt 2.8pt'>
	<P CLASS=HStyle0 STYLE='margin-top:1.0pt;line-height:110%;'><SPAN STYLE='font-family:"돋움체"'>&nbsp;&nbsp;&nbsp;&nbsp;[<span class="spanColumnNm1">√</span>]신규발급</SPAN></P>
	<P CLASS=HStyle0 STYLE='margin-top:1.0pt;line-height:110%;'><SPAN STYLE='font-family:"돋움체"'>&nbsp;&nbsp;&nbsp;&nbsp;[<span class="spanColumnNm2">√</span>]재발급</SPAN></P>
	</TD>
	<TD colspan="3" valign="middle" style='width:145;height:34;border-left:solid #5d5d5d 0.4pt;border-right:none;border-top:solid #4c4c4c 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 5.1pt 1.4pt 2.8pt'>
<!-- 	<P CLASS=HStyle0 STYLE='margin-top:1.0pt;text-align:center;line-height:110%;'><SPAN STYLE='font-family:"돋움체"'>&nbsp;</SPAN></P> -->
	<P CLASS=HStyle0 STYLE='margin-top:1.0pt;text-align:center;line-height:110%;'><form:input path="columnNm17" /></P>
	</TD>
</TR>
<TR>
	<TD colspan="14" valign="middle" style='width:641;height:5;border-left:none;border-right:none;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
	<P CLASS=HStyle0 STYLE='text-align:center;'><SPAN STYLE='font-size:1.0pt;font-family:"돋움체";line-height:230%'>&nbsp;</SPAN></P>
	</TD>
</TR>
<TR>
	<TD rowspan="2" valign="middle" style='width:69;height:63;border-left:none;border-right:solid #5d5d5d 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 5.1pt 1.4pt 2.8pt'>
	<P CLASS=HStyle0 STYLE='text-align:center;line-height:110%;'><SPAN STYLE='font-size:10.7pt;font-family:"돋움체";line-height:110%'>발급명세</SPAN></P>
	<P CLASS=HStyle0 STYLE='text-align:center;line-height:110%;'><SPAN STYLE='font-size:10.7pt;font-family:"돋움체";line-height:110%'>(재발급)</SPAN></P>
	</TD>
	<TD colspan="2" valign="middle" style='width:142;height:31;border-left:solid #5d5d5d 0.4pt;border-right:solid #5d5d5d 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #4c4c4c 0.4pt;padding:1.4pt 5.1pt 1.4pt 2.8pt'>
	<P CLASS=HStyle0 STYLE='margin-top:1.0pt;text-align:center;line-height:110%;'><SPAN STYLE='font-family:"돋움체"'>발급번호</SPAN></P>
	</TD>
	<TD colspan="3" valign="middle" style='width:142;height:31;border-left:solid #5d5d5d 0.4pt;border-right:solid #5d5d5d 0.4pt;border-top:solid #000000 0.4pt;border-bottom:solid #4c4c4c 0.4pt;padding:1.4pt 5.1pt 1.4pt 2.8pt'>
	<P CLASS=HStyle0 STYLE='margin-top:1.0pt;text-align:center;line-height:110%;'><SPAN STYLE='font-family:"돋움체"'>발급일자</SPAN></P>
	</TD>
	<TD colspan="8" valign="middle" style='width:287;height:31;border-left:solid #5d5d5d 0.4pt;border-right:none;border-top:solid #000000 0.4pt;border-bottom:solid #4c4c4c 0.4pt;padding:1.4pt 5.1pt 1.4pt 2.8pt'>
	<P CLASS=HStyle0 STYLE='margin-top:1.0pt;text-align:center;line-height:180%;'><SPAN STYLE='font-family:"돋움체"'>발급기관</SPAN></P>
	</TD>
</TR>
<TR>
	<TD colspan="2" valign="top" style='width:142;height:31;border-left:solid #5d5d5d 0.4pt;border-right:solid #5d5d5d 0.4pt;border-top:solid #4c4c4c 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 5.1pt 1.4pt 2.8pt'>
<!-- 	<P CLASS=HStyle0 STYLE='margin-top:1.0pt;line-height:110%;'><SPAN STYLE='font-family:"돋움체"'>&nbsp;</SPAN></P> -->
	<P CLASS=HStyle0 STYLE='margin-top:1.0pt;line-height:110%;'><form:input path="columnNm18" /></P>
	</TD>
	<TD colspan="3" valign="top" style='width:142;height:31;border-left:solid #5d5d5d 0.4pt;border-right:solid #5d5d5d 0.4pt;border-top:solid #4c4c4c 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 5.1pt 1.4pt 2.8pt'>
<!-- 	<P CLASS=HStyle0 STYLE='margin-top:1.0pt;line-height:110%;'><SPAN STYLE='font-family:"돋움체"'>&nbsp;</SPAN></P> -->
	<P CLASS=HStyle0 STYLE='margin-top:1.0pt;line-height:110%;'><form:input path="columnNm19" /></P>
	</TD>
	<TD colspan="8" valign="top" style='width:287;height:31;border-left:solid #5d5d5d 0.4pt;border-right:none;border-top:solid #4c4c4c 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 5.1pt 1.4pt 2.8pt'>
<!-- 	<P CLASS=HStyle0 STYLE='margin-top:1.0pt;line-height:180%;'><SPAN STYLE='font-family:"돋움체"'>&nbsp;</SPAN></P> -->
	<P CLASS=HStyle0 STYLE='margin-top:1.0pt;line-height:180%;'><form:input path="columnNm20" /></P>
	</TD>
</TR>
<TR>
	<TD colspan="14" valign="middle" style='width:641;height:57;border-left:none;border-right:none;border-top:solid #000000 0.4pt;border-bottom:none;padding:1.4pt 5.1pt 1.4pt 5.1pt'>
	<P CLASS=HStyle0 STYLE='margin-left:10.6pt;text-indent:-10.6pt;line-height:160%;'><SPAN STYLE='font-family:"돋움체";letter-spacing:-1%'>&nbsp; </SPAN><SPAN STYLE='font-size:10.7pt;font-family:"돋움체";line-height:160%'>「산림기술 진흥 및 관리에 관한 법률」 제9조제1항, 같은 법 시행규칙 제6조제1항 및 제7조제1항에 따라 위와 같이 산림기술자 자격증 [<span class="spanColumnNm1">√</span>]신규발급 [<span class="spanColumnNm2">√</span>]재발급을 신청합니다.</SPAN></P>
	</TD>
</TR>
<TR>
	<TD colspan="14" valign="middle" style='width:641;height:32;border-left:none;border-right:none;border-top:none;border-bottom:none;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
	<P CLASS=HStyle0 STYLE='text-align:right;line-height:120%;'><SPAN STYLE='font-size:8.7pt;font-family:"돋움체";letter-spacing:-7%;line-height:120%'>&nbsp;년&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 월&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 일</SPAN><SPAN STYLE='font-family:"돋움체";color:#0000ff'> </SPAN></P>
	</TD>
</TR>
<TR>
	<TD colspan="8" valign="middle" style='width:387;height:32;border-left:none;border-right:none;border-top:none;border-bottom:none;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
	<P CLASS=HStyle0 STYLE='margin-left:7.5pt;text-align:right;line-height:130%;'><SPAN STYLE='font-family:"돋움체"'>신청인&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </SPAN></P>
	</TD>
	<TD colspan="6" valign="middle" style='width:254;height:32;border-left:none;border-right:none;border-top:none;border-bottom:none;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
	<P CLASS=HStyle0 STYLE='text-align:right;line-height:120%;'><SPAN STYLE='font-size:7.8pt;font-family:"돋움";letter-spacing:-7%;color:#7f7f7f;line-height:120%'>(서명 또는 인)</SPAN></P>
	</TD>
</TR>
<TR>
	<TD colspan="14" valign="middle" style='width:641;height:36;border-left:none;border-right:none;border-top:none;border-bottom:solid #808080 2.0pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
	<P CLASS=HStyle0 STYLE='margin-left:7.5pt;text-indent:-7.5pt;line-height:110%;'><SPAN STYLE='font-size:12.6pt;font-family:"돋움체";letter-spacing:8%;font-weight:"bold";line-height:110%'>수탁기관의 장 </SPAN><SPAN STYLE='font-family:"돋움체"'>귀하</SPAN></P>
	</TD>
</TR>
<TR>
	<TD colspan="14" valign="bottom" style='width:641;height:7;border-left:none;border-right:none;border-top:solid #808080 0.4pt;border-bottom:solid #666666 0.4pt;padding:2.8pt 2.8pt 1.4pt 2.8pt'>
	<P CLASS=HStyle0 STYLE='text-align:right;line-height:110%;'><SPAN STYLE='font-size:1.0pt;font-family:"돋움체";line-height:110%'>&nbsp;</SPAN></P>
	</TD>
</TR>
<TR>
	<TD valign="middle" style='width:69;height:132;border-left:none;border-right:solid #666666 0.4pt;border-top:solid #666666 0.4pt;border-bottom:solid #666666 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
	<P CLASS=HStyle0 STYLE='text-align:center;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";line-height:230%'>첨부서류</SPAN></P>
	</TD>
	<TD colspan="12" valign="middle" style='width:477;height:132;border-left:solid #666666 0.4pt;border-right:solid #666666 0.4pt;border-top:solid #666666 0.4pt;border-bottom:solid #666666 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
	<P CLASS=HStyle0 STYLE='margin-left:12.6pt;text-indent:-12.6pt;line-height:130%;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";line-height:130%'>1. 신규발급을 받으려는 경우</SPAN></P>
	<P CLASS=HStyle0 STYLE='margin-left:19.9pt;text-indent:-19.9pt;line-height:130%;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";line-height:130%'>&nbsp;&nbsp;가. 별지 제16호서식의 산림기술경력증명서(경력증명이 필요한 경우만 해당합니다) </SPAN></P>
	<P CLASS=HStyle0 STYLE='margin-left:20.0pt;text-indent:-20.0pt;line-height:130%;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";line-height:130%'>&nbsp;&nbsp;나. 산림교육원 또는 교육기관에서 운영하는 교육ㆍ훈련 과정을 이수하였음을 증명하는 서류(교육이수 증명이 필요한 경우만 해당합니다)</SPAN></P>
	<P CLASS=HStyle0 STYLE='margin-left:20.0pt;text-indent:-20.0pt;line-height:130%;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";line-height:130%'>&nbsp;&nbsp;다. 최근 6개월 이내에 촬영한 3.5㎝ × 4.5㎝ 증명사진</SPAN></P>
	<P CLASS=HStyle0 STYLE='margin-left:20.0pt;text-indent:-20.0pt;line-height:130%;'><SPAN STYLE='font-size:3.0pt;font-family:"돋움체";line-height:130%'>&nbsp;</SPAN></P>
	<P CLASS=HStyle0 STYLE='margin-left:12.6pt;text-indent:-12.6pt;line-height:130%;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";line-height:130%'>2. 재발급을 받으려는 경우</SPAN></P>
	<P CLASS=HStyle0 STYLE='margin-left:21.4pt;text-indent:-21.4pt;line-height:130%;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";line-height:130%'>&nbsp;&nbsp;가. 산림기술자 자격증(자격증을 잃어버린 경우는 제외합니다)</SPAN></P>
	<P CLASS=HStyle0 STYLE='margin-left:12.6pt;text-indent:-12.6pt;line-height:130%;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";line-height:130%'>&nbsp;&nbsp;나. 최근 6개월 이내에 촬영한 3.5㎝ × 4.5㎝ 증명사진</SPAN></P>
	</TD>
	<TD rowspan="2" valign="middle" style='width:94;height:167;border-left:solid #666666 0.4pt;border-right:none;border-top:solid #666666 0.4pt;border-bottom:solid #666666 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
	<P CLASS=HStyle0 STYLE='margin-left:7.5pt;text-align:center;text-indent:-7.5pt;line-height:160%;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";line-height:160%'>수수료</SPAN></P>
	<P CLASS=HStyle0 STYLE='text-align:center;line-height:160%;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";line-height:160%'>「산림기술 진흥 및 관리에 관한 법률 시행규칙」 별표 6에 따른 금액</SPAN></P>
	</TD>
</TR>
<TR>
	<TD valign="middle" style='width:69;height:36;border-left:none;border-right:solid #666666 0.4pt;border-top:solid #666666 0.4pt;border-bottom:solid #666666 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
	<P CLASS=HStyle0 STYLE='text-align:center;line-height:120%;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";line-height:120%'>수탁기관</SPAN></P>
	<P CLASS=HStyle0 STYLE='text-align:center;line-height:120%;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";line-height:120%'>확인사항</SPAN></P>
	</TD>
	<TD colspan="12" valign="middle" style='width:477;height:36;border-left:solid #666666 0.4pt;border-right:solid #666666 0.4pt;border-top:solid #666666 0.4pt;border-bottom:solid #666666 0.4pt;padding:1.4pt 1.4pt 1.4pt 1.4pt'>
	<P CLASS=HStyle0 STYLE='margin-left:7.5pt;text-indent:-7.5pt;line-height:130%;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";line-height:130%'>1. 주민등록표 초본</SPAN></P>
	<P CLASS=HStyle0 STYLE='margin-left:7.5pt;text-indent:-7.5pt;line-height:130%;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";line-height:130%'>2. 국가기술자격 취득사항 확인서</SPAN></P>
	</TD>
</TR>
<TR>
	<TD colspan="14" valign="middle" style='width:641;height:6;border-left:none;border-right:none;border-top:solid #666666 0.4pt;border-bottom:solid #000000 0.4pt;padding:1.4pt 0.0pt 1.4pt 0.0pt'>
	<P CLASS=HStyle0 STYLE='text-align:center;'><SPAN STYLE='font-size:2.0pt;font-family:"돋움체";line-height:230%'>&nbsp;</SPAN></P>
	</TD>
</TR>
<TR>
	<TD colspan="14" valign="middle" bgcolor="#bbbbbb"  style='width:641;height:26;border-left:none;border-right:none;border-top:solid #5d5d5d 2.0pt;border-bottom:solid #5d5d5d 0.4pt;padding:1.4pt 5.1pt 1.4pt 2.8pt'>
	<P CLASS=HStyle0 STYLE='text-align:center;line-height:120%;'><SPAN STYLE='font-family:"돋움체";letter-spacing:-10%'>행정정보 공동이용 동의서</SPAN></P>
	</TD>
</TR>
<TR>
	<TD colspan="14" valign="middle" style='width:641;height:42;border-left:none;border-right:none;border-top:solid #5d5d5d 0.4pt;border-bottom:none;padding:1.4pt 5.1pt 1.4pt 2.8pt'>
	<P CLASS=HStyle0 STYLE='margin-left:7.5pt;text-indent:-7.5pt;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";letter-spacing:-5%;line-height:230%'> </SPAN><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";letter-spacing:-7%;line-height:230%'> </SPAN><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";letter-spacing:-8%;line-height:230%'>본인은 이 건 업무처리와 관련하여 수탁기관이 「전자정부법」 제36조제2항에 따른 행정정보의 공동이용을 통하여 위의 수탁기관 확인</SPAN><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";letter-spacing:-7%;line-height:230%'> 사항을</SPAN><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";letter-spacing:-7%;color:#ff0000;line-height:230%'> </SPAN><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";letter-spacing:-7%;line-height:230%'>확인하는 것에 동의합니다.&nbsp; </SPAN><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";letter-spacing:-5%;line-height:230%'> * 동의하지 않는 경우에는 신청인이 직접 해당 서류를 제출해야 합니다.</SPAN></P>
	</TD>
</TR>
<TR>
	<TD colspan="9" valign="middle" style='width:391;height:32;border-left:none;border-right:none;border-top:none;border-bottom:solid #5d5d5d 0.4pt;padding:1.4pt 5.1pt 1.4pt 2.8pt'>
	<P CLASS=HStyle0 STYLE='text-align:right;line-height:120%;'><SPAN STYLE='font-family:"돋움체";letter-spacing:-10%'>신청인</SPAN></P>
	</TD>
	<TD colspan="5" valign="middle" style='width:250;height:32;border-left:none;border-right:none;border-top:none;border-bottom:solid #5d5d5d 0.4pt;padding:1.4pt 5.1pt 1.4pt 2.8pt'>
	<P CLASS=HStyle0 STYLE='text-align:right;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";letter-spacing:-3%;color:#7f7f7f;line-height:230%'>(서명 또는 인)</SPAN></P>
	</TD>
</TR>
<TR>
	<TD colspan="14" valign="middle" style='width:641;height:8;border-left:none;border-right:none;border-top:none;border-bottom:solid #5d5d5d 2.0pt;padding:1.4pt 5.1pt 1.4pt 5.1pt'>
	<P CLASS=HStyle0><SPAN STYLE='font-size:1.0pt;font-family:"돋움체";line-height:230%'>&nbsp;</SPAN></P>
	</TD>
</TR>
<TR>
	<TD colspan="14" valign="middle" bgcolor="#bbbbbb"  style='width:641;height:26;border-left:none;border-right:none;border-top:solid #5d5d5d 2.0pt;border-bottom:solid #5d5d5d 0.4pt;padding:0.0pt 1.4pt 1.4pt 1.4pt'>
	<P CLASS=HStyle0 STYLE='text-align:center;line-height:130%;'><SPAN STYLE='font-family:"돋움체";letter-spacing:-7%'>처 리 절 차</SPAN></P>
	</TD>
</TR>
<TR>
	<TD colspan="14" valign="top" style='width:641;height:78;border-left:none;border-right:none;border-top:solid #5d5d5d 0.4pt;border-bottom:solid #5d5d5d 0.4pt;padding:1.4pt 5.1pt 1.4pt 2.8pt'>
	<P CLASS=HStyle0 STYLE='text-align:center;line-height:120%;'></P>
<TABLE border="1" cellspacing="0" cellpadding="0" style='border-collapse:collapse;border:none;'>
<TR>
	<TD valign="middle" style='width:104;height:32;border-left:solid #808080 0.4pt;border-right:solid #5d5d5d 0.4pt;border-top:solid #808080 0.4pt;border-bottom:solid #5d5d5d 0.4pt;padding:0.0pt 0.0pt 0.0pt 0.0pt'>
	<P CLASS=HStyle0 STYLE='text-align:center;line-height:130%;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";letter-spacing:-10%;line-height:130%'>신청서 작성</SPAN></P>
	</TD>
	<TD valign="middle" style='width:21;height:32;border-left:solid #5d5d5d 0.4pt;border-right:solid #5d5d5d 0.4pt;border-top:none;border-bottom:none;padding:0.0pt 0.0pt 0.0pt 0.0pt'>
	<P CLASS=HStyle0 STYLE='text-align:center;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";color:#666666;line-height:230%'>&#61672;</SPAN></P>
	</TD>
	<TD valign="middle" style='width:101;height:32;border-left:solid #5d5d5d 0.4pt;border-right:solid #5d5d5d 0.4pt;border-top:solid #5d5d5d 0.4pt;border-bottom:solid #5d5d5d 0.4pt;padding:0.0pt 0.0pt 0.0pt 0.0pt'>
	<P CLASS=HStyle0 STYLE='text-align:center;line-height:130%;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";letter-spacing:-10%;line-height:130%'>접 수</SPAN></P>
	</TD>
	<TD valign="middle" style='width:25;height:32;border-left:solid #5d5d5d 0.4pt;border-right:solid #5d5d5d 0.4pt;border-top:none;border-bottom:none;padding:0.0pt 0.0pt 0.0pt 0.0pt'>
	<P CLASS=HStyle0 STYLE='text-align:center;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";color:#666666;line-height:230%'>&#61672;</SPAN></P>
	</TD>
	<TD valign="middle" style='width:101;height:32;border-left:solid #5d5d5d 0.4pt;border-right:solid #5d5d5d 0.4pt;border-top:solid #5d5d5d 0.4pt;border-bottom:solid #5d5d5d 0.4pt;padding:0.0pt 0.0pt 0.0pt 0.0pt'>
	<P CLASS=HStyle0 STYLE='text-align:center;line-height:130%;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";line-height:130%'>기술자격요건 검토</SPAN></P>
	</TD>
	<TD valign="middle" style='width:27;height:32;border-left:solid #5d5d5d 0.4pt;border-right:solid #5d5d5d 0.4pt;border-top:none;border-bottom:none;padding:0.0pt 0.0pt 0.0pt 0.0pt'>
	<P CLASS=HStyle0 STYLE='text-align:center;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";color:#666666;line-height:230%'>&#61672;</SPAN></P>
	</TD>
	<TD valign="middle" style='width:109;height:32;border-left:solid #5d5d5d 0.4pt;border-right:solid #5d5d5d 0.4pt;border-top:solid #5d5d5d 0.4pt;border-bottom:solid #5d5d5d 0.4pt;padding:0.0pt 0.0pt 0.0pt 0.0pt'>
	<P CLASS=HStyle0 STYLE='text-align:center;line-height:130%;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";line-height:130%'>기안ㆍ결재</SPAN></P>
	</TD>
	<TD valign="middle" style='width:29;height:32;border-left:solid #5d5d5d 0.4pt;border-right:solid #5d5d5d 0.4pt;border-top:none;border-bottom:none;padding:0.0pt 0.0pt 0.0pt 0.0pt'>
	<P CLASS=HStyle0 STYLE='text-align:center;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";color:#666666;line-height:230%'>&#61672;</SPAN></P>
	</TD>
	<TD valign="middle" style='width:109;height:32;border-left:solid #5d5d5d 0.4pt;border-right:solid #5d5d5d 0.6pt;border-top:solid #5d5d5d 0.4pt;border-bottom:solid #5d5d5d 0.4pt;padding:0.0pt 0.0pt 0.0pt 0.0pt'>
	<P CLASS=HStyle0 STYLE='text-align:center;line-height:130%;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";line-height:130%'>발급 및 정보체계 등재</SPAN></P>
	</TD>
</TR>
<TR>
	<TD valign="middle" style='width:104;height:28;border-left:none;border-right:none;border-top:solid #5d5d5d 0.4pt;border-bottom:none;padding:0.0pt 0.0pt 0.0pt 0.0pt'>
	<P CLASS=HStyle0 STYLE='text-align:center;line-height:130%;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";letter-spacing:-15%;line-height:130%'>신청인</SPAN></P>
	</TD>
	<TD valign="middle" style='width:21;height:28;border-left:none;border-right:none;border-top:none;border-bottom:none;padding:0.0pt 0.0pt 0.0pt 0.0pt'>
	<P CLASS=HStyle0 STYLE='text-align:center;line-height:130%;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";letter-spacing:-15%;line-height:130%'>&nbsp;</SPAN></P>
	</TD>
	<TD valign="middle" style='width:101;height:28;border-left:none;border-right:none;border-top:solid #5d5d5d 0.4pt;border-bottom:none;padding:0.0pt 0.0pt 0.0pt 0.0pt'>
	<P CLASS=HStyle0 STYLE='text-align:center;line-height:130%;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";letter-spacing:-15%;line-height:130%'>처 리 기 관</SPAN></P>
	<P CLASS=HStyle0 STYLE='text-align:center;line-height:130%;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";letter-spacing:-15%;line-height:130%'>(수탁기관)</SPAN></P>
	</TD>
	<TD valign="middle" style='width:25;height:28;border-left:none;border-right:none;border-top:none;border-bottom:none;padding:0.0pt 0.0pt 0.0pt 0.0pt'>
	<P CLASS=HStyle0 STYLE='text-align:center;line-height:130%;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";letter-spacing:-15%;line-height:130%'>&nbsp;</SPAN></P>
	</TD>
	<TD valign="middle" style='width:101;height:28;border-left:none;border-right:none;border-top:solid #5d5d5d 0.4pt;border-bottom:none;padding:0.0pt 0.0pt 0.0pt 0.0pt'>
	<P CLASS=HStyle0 STYLE='text-align:center;line-height:130%;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";letter-spacing:-15%;line-height:130%'>처 리 기 관</SPAN></P>
	<P CLASS=HStyle0 STYLE='text-align:center;line-height:130%;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";letter-spacing:-15%;line-height:130%'>(수탁기관)</SPAN></P>
	</TD>
	<TD valign="middle" style='width:27;height:28;border-left:none;border-right:none;border-top:none;border-bottom:none;padding:0.0pt 0.0pt 0.0pt 0.0pt'>
	<P CLASS=HStyle0 STYLE='text-align:center;line-height:130%;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";letter-spacing:-15%;line-height:130%'>&nbsp;</SPAN></P>
	</TD>
	<TD valign="middle" style='width:109;height:28;border-left:none;border-right:none;border-top:solid #5d5d5d 0.4pt;border-bottom:none;padding:0.0pt 0.0pt 0.0pt 0.0pt'>
	<P CLASS=HStyle0 STYLE='text-align:center;line-height:130%;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";letter-spacing:-15%;line-height:130%'>처 리 기 관</SPAN></P>
	<P CLASS=HStyle0 STYLE='text-align:center;line-height:130%;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";letter-spacing:-15%;line-height:130%'>(수탁기관)</SPAN></P>
	</TD>
	<TD valign="middle" style='width:29;height:28;border-left:none;border-right:none;border-top:none;border-bottom:none;padding:0.0pt 0.0pt 0.0pt 0.0pt'>
	<P CLASS=HStyle0 STYLE='line-height:130%;'><SPAN STYLE='font-size:1.0pt;font-family:"돋움체";letter-spacing:-10%;line-height:130%'>&nbsp;</SPAN></P>
	</TD>
	<TD valign="middle" style='width:109;height:28;border-left:none;border-right:none;border-top:solid #5d5d5d 0.4pt;border-bottom:none;padding:0.0pt 0.0pt 0.0pt 0.0pt'>
	<P CLASS=HStyle0 STYLE='text-align:center;line-height:130%;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";letter-spacing:-15%;line-height:130%'>처 리 기 관</SPAN></P>
	<P CLASS=HStyle0 STYLE='text-align:center;line-height:130%;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";letter-spacing:-15%;line-height:130%'>(수탁기관)</SPAN></P>
	</TD>
</TR>
</TABLE>
<P CLASS=HStyle0 STYLE='text-align:center;line-height:120%;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";letter-spacing:-10%;line-height:120%'>&nbsp;&nbsp;</SPAN></P>
	<P CLASS=HStyle0 STYLE='text-align:center;line-height:120%;'><SPAN STYLE='font-size:2.0pt;font-family:"돋움체";letter-spacing:-10%;line-height:120%'>&nbsp;</SPAN></P>
	</TD>
</TR>
<TR>
	<TD colspan="14" valign="bottom" style='width:641;height:18;border-left:none;border-right:none;border-top:none;border-bottom:none;padding:1.4pt 5.1pt 1.4pt 5.1pt'>
	<P CLASS=HStyle0 STYLE='text-align:right;'><SPAN STYLE='font-size:8.0pt;font-family:"돋움체";line-height:230%'>210mm×297mm[백상지(80g/㎡) 또는 중질지(80g/㎡)]</SPAN></P>
	</TD>
</TR>
</TABLE>
<P CLASS=HStyle9 STYLE='margin-left:14.0pt;text-indent:-14.0pt;'></P>

</form:form>

<%-- <script type="text/javascript" src="<c:url value="/js/egovframework/com/cmm/jquery-1.4.2.min.js" />"></script> --%>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
var pageContext_request_contextPath = '${pageContext.request.contextPath}';

$(document).ready(function() {

	if ($('#godTableVO').attr('action') == 'insert.do') {
		$('#columnNm1').attr('checked', true);
		
		$('[name=columnNm2]').val('접수번호');
		$('#columnNm3').val('접수일시');
		$('#columnNm4').val('발급일');
		$('#columnNm5').val('7일');
		
		// 신청인
		$('#columnNm6').val('성명');
		$('#columnNm7').val('생년월일');
		$('#columnNm8').val('성별');
		$('#columnNm9').val('주소');
		$('#columnNm10').val('주소전화');
		$('#columnNm11').val('직업');
		$('#columnNm12').val('근무처');
		$('#columnNm13').val('근무처전화');
		
		// 신청명세
		$('#columnNm14').val('기술종류');
		$('#columnNm15').val('등급');
		$('#columnNm16').val('구분');
		$('#columnNm17').val('재발급 사유');
		
		// 발급명세(재발급)
		$('#columnNm18').val('발급번호');
		$('#columnNm19').val('발급일자');
		$('#columnNm20').val('발급기관');
		$('#columnNm21').val('신청일');
		$('#columnNm22').val('신청인');
		$('#columnNm23').val('');
		$('#columnNm24').val('');
		$('#columnNm25').val('');
		$('#columnNm26').val('');
		$('#columnNm27').val('');
		$('#columnNm28').val('');
		$('#columnNm29').val('');
		$('#columnNm30').val('');
	}

	$('.spanColumnNm1').hide();
	$('.spanColumnNm2').hide();

	$('[name=columnNm]').on({
		change : function(event) {
			var checked = $('[name=columnNm]:eq(0)').prop('checked');
			if (checked == true) {
				$('.spanColumnNm1').show();
				$('.spanColumnNm2').hide();
			} else {
				$('.spanColumnNm1').hide();
				$('.spanColumnNm2').show();
			}
		}
	});
	
	$('[name=columnNm]:checked').trigger('change');
	
	$('#columnNm14, #columnNm15').on({
		click : function(event) {
			window.open(pageContext_request_contextPath + '/html/god/com/table/[별표 3] 산림기술자의 종류¸ 자격 요건 및 업무 범위(제10조 관련).htm')
		}
	});
	
});
</script>

</BODY>

</HTML>

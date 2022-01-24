Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DB72D4979AB
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 24 Jan 2022 08:41:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1nBtxq-0006wM-Rn; Mon, 24 Jan 2022 07:40:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dd.anderegg@hotmail.com>) id 1nBtxo-0006wF-Q7
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 24 Jan 2022 07:40:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=p2C8nxFA/O0Tccqm+gIU6oJZfEaM/dKVZwta2P66wf8=; b=gkel/RZnpaaXlifhK57rJvPEPP
 3TGJUgnaUcswk7jdfgBAPhzxnmqn7mxqQ8E7wqIjO4TqLpEP1phVxQsIPguiDdnE5tplC+MEwq+GF
 jawcorCsyj1Qy39VpIuFZSXBcLz7+cQtwosprtT8eCPyc/QrB+15RtUoyZwC063B5NTM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=p2C8nxFA/O0Tccqm+gIU6oJZfEaM/dKVZwta2P66wf8=; b=U
 izeNEx50suiELH5m7OYFbwYQJTguhY0uYFf6p0ZDINnVwy7Q4pctCx/WcdLUV4IShGtPcty9wET60
 aXiAaFePp/kRcp13Aqy/kQUhoALOfGSrjOJ8KhxleRAqnF1WRctmDSgn7lE2fC6sQzStOJTePXCqp
 LkNl0oBybWXKwieY=;
Received: from mail-db8eur05olkn2099.outbound.protection.outlook.com
 ([40.92.89.99] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nBtxh-00A3Xy-Gj
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 24 Jan 2022 07:40:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R3e9mkQ5A0G+pji90P1m8sHs5Fv8M+4g50/sBFVETbISSuGkLgkCBOQ8je5CGlHgoXnGgLZdT0OnhjXBITXDvGKqacHAxy11qcUgT9re46L33wmHsOxz9vGrWXpUK3CAGbZ/wiphcqEWzpaRMD10nVuGYCFXBRdtONYQMcKne63sBDe2TxGzUwd05gXpMS14pQFWc+L1MxgFuqQoT4f4gatXBIk2jtvd8hD+t9axVL6GR1AGn3lXZ1Kka0oP9vFTznCYICckqlth6oP4CNe5cSVYhH7+DDIsGuHDBv7PFWX+vfVf7upsSp2N7YWIVOlxfBS23roSTrCioqjK3Njk9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p2C8nxFA/O0Tccqm+gIU6oJZfEaM/dKVZwta2P66wf8=;
 b=EaBn+IayzDjO6+3dxEkJe0PnJDuDbIXn98/L25Bcuh22T2PMY6hkRrA8bBwgSeXmtHedrv0JGOElfKb0gCeVUKHbLyOET43SmgZR4ZayalR8LEbK3n9mKx7Su86ieO0AXYKVmfnT1Dk0u9GJR1lut+jJxxgamg+J1ud/qKLj8y0DeZpyPyzhiYM+9fYvdQV3j25PjQ9OCAYvHuzYDxK0egf7BpXR1KP3WyqS53XkpiYBeZvLuq8QOjID1NL1oij0RfGoFWr+s/ZYYpAKzAtxe/RZ0NMQ3sKVInWLcrPR+60WWhlY4UzvBQIDVwgB9u9kOAdT5/9FO6BC8SCF48oclA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p2C8nxFA/O0Tccqm+gIU6oJZfEaM/dKVZwta2P66wf8=;
 b=LxhjN19dTg6c1fSkiawbVEe3HW0Wdwu+ThCKoOMtYkSYrzATWvQTEyBojbwt5eMWvHKEJZ5LWTuvH56kAiV+XakkkwoJ+MRkgqhYDduDWFaIKigBVc/yjl1fVvy0uLgEmhdPgdR39GwddfQMRsjfCtQ9DDVbmgXOAsQqEmvZ48tqE/jw582whmUxkK2AaKgY1BokWkQpb43c/XgFcv2/qeKjy1QaFN8S8mzBV39xeQB1NscZ1hDf7ogujgqyS0AlKIrlA8yY9hnuQBExRXgYvq5IHTC7w8wJ55yRuTI1K4ZAVZ9D0ISpRObfV0KwLupOwuu2sB8n1iBYv9/qMBwQ2A==
Received: from DB9P189MB1625.EURP189.PROD.OUTLOOK.COM (2603:10a6:10:2aa::22)
 by PA4P189MB1357.EURP189.PROD.OUTLOOK.COM (2603:10a6:102:c9::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.7; Mon, 24 Jan
 2022 07:40:18 +0000
Received: from DB9P189MB1625.EURP189.PROD.OUTLOOK.COM
 ([fe80::4da:b3d7:b2aa:5862]) by DB9P189MB1625.EURP189.PROD.OUTLOOK.COM
 ([fe80::4da:b3d7:b2aa:5862%6]) with mapi id 15.20.4909.017; Mon, 24 Jan 2022
 07:40:18 +0000
From: David Anderegg <dd.anderegg@hotmail.com>
To: "ibm-acpi-devel@lists.sourceforge.net"
 <ibm-acpi-devel@lists.sourceforge.net>
Thread-Topic: thinkpad_acpi: Unknown/reserved multi mode value 0x0000 for type
 4
Thread-Index: AQHYEPWUFZGUDP+EgkqrDxa9BdYSKA==
Date: Mon, 24 Jan 2022 07:40:18 +0000
Message-ID: <DB9P189MB1625CCFFD77D005BB7A5E4EDF85E9@DB9P189MB1625.EURP189.PROD.OUTLOOK.COM>
Accept-Language: de-CH, en-US
Content-Language: de-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: e559959d-c575-a30d-4403-e25be4eaa04d
x-tmn: [dOP6WR9jtW0xBpyTs0QSm0h6WftE1g8h]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2ac02728-1b8b-4635-a504-08d9df0cc4ce
x-ms-traffictypediagnostic: PA4P189MB1357:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 06LdzR0NI97L82b6Cc+P1WyFVY+IAtmjCEKjFB2yU0/BIM19Wl3m7OgVpNfcYM3NPujdvnKAx3YcGveqJxD/+9pvE/JZR/+Gw1R6DWM52kA0Hn2QBaswQqi/z/0xTPWcj5eAtyS9CJkK0zFjZvBGzGeAsEAV98ulEV1C2N7+2jc3B/KGysOPSwTENHGknfPZ1eBSPu0ebmZwBkAB/pnW+vzxIkjf6jKJPLtu/fcidEwb5ooyN5M3TS9+Wopj/8EW6UElLoEqMhYKotFvoH1GJpPaMY+FRD0vwUI56mh/JZDlOpFq+/fUmvQ8EMHkZKTQ4LXPk42NHvCmYY7RO+P/ppVJklCRUVb8xafUL1qf2GvGQzRecdgLozGk7zTTgrdhtl1q2o8QsPf4l923xWqO/YJ/hE7dBaMMSv4irXXeya6cq9tCQnubowCLgdcLTa0TgwyUdNnGjazUEZx8CM2BNCwbBLiTtsZ/u54JOrvlMOEXT79iYY1e3rcv+INOeUOLkCsyS2XGGI0FW/YZMyOaAJ7UmNIDO8oPGS1FBevbbS0MLu9qjVgm4ERY02XeKZfFmHi2/4qlSjR4NZRdmsXntPrEVn9yDLlq+Yz3B+wYAThJkL84hyXkTHoZ9jaAlmwx
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: EqyGjSfetVp2+H+ft0rOAJ0zlL9yuyA+myPq1/M0rdo6SBt2Gpx+mzPwz5mWReyHYE4BgOyMtpFH0bhfs2JlyXwY22bLEyzLa4W+9/sRvgg9e08Sc3YlxSRB/76h09mzNOzWomnolk/K1Ek5kRCvzQ3FOIQv3SN3U6dvKQEhWRcFnmIMgUCfFWxCCa/dv7tQy4y7J2GxccZ/gitgPLq2DgwVPSIgcmg7rusu1aJlCa5q1SRhJMYwKtv+QDtLoY5kcOE7R/+dmb4xpuyq80JfNBWTWQ9tMT0+5oVomyr210wkBGX110fErWBFshJOwsL4x223JgQqXMY0KLpLTwIzGlWHzrW6DXX1McaqL+JxCjHSUyEL2b1YP3ySXYussB1soLDqwhXgLJG8x0W2fiBnVAc6YzHMIdzu+035aIXXj/XEqO8fo6al+XDbDy9xHMhe3AAUMEqYC+XHnyxrwSPZNRiNgSGgFY2B69maCgbk9nZQHlTpkmE1dGGDcyOMXwOdb80WLC2CbXXOaouaGVX+wcrKMACnGy4N9gqdF1iOHZd9Yuulf9qIdvlMjEVjzBmw5n2MrmK8zGOyKWJOKf8t+S20wq0C8UD7/SnmXnd8b+zuQxuNnAOYbbp2kDPjM6ZZTgjFVC3okH7TGXq3bplrkOi5IBqcQB+TjwtkFw0AMfFbLM8we+f8YXaCQtyFOFblcBfs0zdE1VcRym2ECQzzY1JDd0zOHol1/vVtr3DF/DLCXhY988rogk6ROk0ln/2e4i5NdLI3PwkRqtZJUSWd4sNp5yRMnU/id29NatkK5ie8CEfsHlzwxvJ63jRu5Dsf5fGkAZxuqtL3c4kkePNfUgISbZNiJZ1Zb0cS3kWaEJ9WhavKEs1izUgRfdPLaqZG+ISYWyer3pJlkBRIQpZ0gknoUa+o9b0yIu7WRJx1JpGbFBNrn10fdI3PsHibVdYz
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4734-24-msonline-outlook-c54b5.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB9P189MB1625.EURP189.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ac02728-1b8b-4635-a504-08d9df0cc4ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2022 07:40:18.3802 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4P189MB1357
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Hi everybody I expirience some problems with my Thinkpad and
 found the message in the title in my logs. It says i should report it here.
 Here is my archlinux-topic where I dumped some logs:
 https://bbs.archlinux.org/viewtopic.php?pid=2016865#p2016865
 Content analysis details:   (1.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.89.99 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.89.99 listed in wl.mailspike.net]
 1.2 FORGED_HOTMAIL_RCVD2   hotmail.com 'From' address, but no
 'Received:'
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dd.anderegg[at]hotmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1nBtxh-00A3Xy-Gj
Subject: [ibm-acpi-devel] thinkpad_acpi: Unknown/reserved multi mode value
 0x0000 for type 4
X-BeenThere: ibm-acpi-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: thinkpad-acpi/ibm-acpi Linux driver development
 <ibm-acpi-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/ibm-acpi-devel>, 
 <mailto:ibm-acpi-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=ibm-acpi-devel>
List-Post: <mailto:ibm-acpi-devel@lists.sourceforge.net>
List-Help: <mailto:ibm-acpi-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel>, 
 <mailto:ibm-acpi-devel-request@lists.sourceforge.net?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4236177684005135359=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

--===============4236177684005135359==
Content-Language: de-CH
Content-Type: multipart/alternative;
	boundary="_000_DB9P189MB1625CCFFD77D005BB7A5E4EDF85E9DB9P189MB1625EURP_"

--_000_DB9P189MB1625CCFFD77D005BB7A5E4EDF85E9DB9P189MB1625EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi everybody

I expirience some problems with my Thinkpad and found the message in the ti=
tle in my logs. It says i should report it here.

Here is my archlinux-topic where I dumped some logs:
https://bbs.archlinux.org/viewtopic.php?pid=3D2016865#p2016865

Thank you
David

--_000_DB9P189MB1625CCFFD77D005BB7A5E4EDF85E9DB9P189MB1625EURP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<span style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255=
)">Hi everybody</span></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255)=
"><br>
</div>
<div style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255)=
">I expirience some problems with my Thinkpad and found the message in the =
title in my logs. It says i should report it here.</div>
<div style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255)=
"><br>
</div>
<div style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255)=
">Here is my archlinux-topic where I dumped some logs:</div>
<div style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255)=
"><a href=3D"https://bbs.archlinux.org/viewtopic.php?pid=3D2016865#p2016865=
" target=3D"_blank" rel=3D"noopener noreferrer" data-auth=3D"NotApplicable"=
 data-linkindex=3D"0" style=3D"margin:0px">https://bbs.archlinux.org/viewto=
pic.php?pid=3D2016865#p2016865</a><br>
</div>
<div style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255)=
"><br>
</div>
<div style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255)=
">Thank you</div>
<span style=3D"margin:0px;font-size:12pt;background-color:rgb(255, 255, 255=
)">David</span><br>
</div>
</body>
</html>

--_000_DB9P189MB1625CCFFD77D005BB7A5E4EDF85E9DB9P189MB1625EURP_--


--===============4236177684005135359==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4236177684005135359==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============4236177684005135359==--


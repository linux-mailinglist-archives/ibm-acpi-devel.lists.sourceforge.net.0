Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1285768055A
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 30 Jan 2023 06:05:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1pMMLC-0007QU-Q4;
	Mon, 30 Jan 2023 05:04:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <RainSlide@outlook.com>) id 1pMMLA-0007QJ-I5
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 30 Jan 2023 05:04:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U5dCNkRn4SpXKsaUPBcFZiG11BkdZmOybyd3oEU2WE0=; b=F5k4ffqAkLIYFsRQ1OeEtfmHGH
 8B5GqDzfUXhhi7zCgy/hvc+SLMis1/OM7fPkDNYNWNpK5aw1ET3In57XtkfAzcmbpA0m2gmHOyD9y
 DXg1YKjWntdcEH+1ndY8zuvmQqZPKSNTJ4ZUv8uyzCd6IWVRmjZ7ikmjvu4M6jaCuoiE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=U5dCNkRn4SpXKsaUPBcFZiG11BkdZmOybyd3oEU2WE0=; b=V
 DH9NBwO8B37JjayPM5DYyilR0JSciSV9ufcrVRCZjSuTetKU2g1/kCthUrrjtAuLZ3bbc7jD1FmRm
 KgEV4U4IGfW2mzBRNmwpJP3J5Mj1ZTkSlqhvqO1Nbhj17/tAc0aYlOC4tyGF0un+lCDvxSv1WGAWc
 yId52/u0oFWC6Jmw=;
Received: from mail-psaapc01olkn2047.outbound.protection.outlook.com
 ([40.92.52.47] helo=APC01-PSA-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pMML7-0004H4-17 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 30 Jan 2023 05:04:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h7dYwHgixhIlPPPUvnIBMbQfdGJxqKzCDkllYJCC1zcICBsY0jtu1KsNccXD+7ejok/5a99S258pk5KVyXnf0T4AofDuQg2WWxNXamDbFxGVpkYnPgxRtL3MyvWrWP7Y/cbdBGvIlHN7LdXlkDtp1zX+gh5uPrvHu9omZyiZzoccJjitlb1k5UO6sQK9HWT+pLhPlRe1otzIvlx7DMVlMf/pXpuRQZG3qR2EbbJk11CO3bKrTSxAG4HclxFJHpOV+GKnl4glEWCw6ri2zlwgPvbGWDIlSQsoLxkmYqsPb6doj6exY3uzjvOI/QKBa4yL3Abuhyea4ADShdCYYyMsUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U5dCNkRn4SpXKsaUPBcFZiG11BkdZmOybyd3oEU2WE0=;
 b=kiqQUODBP0hOaNXs44XsReL5Y2KZVMK/cE3PXkgqqn9aGOHq0kiYvBoBn45W1TmvRP8RLFr4Ab8LO9djRcJltGmjg2qbCI1p2mWsy+mhcgVc1CcWXBhFs7qbcrLql7724wW8Q+Z2HP0ueLiLrn62tJRuGqmE53aEEf3MEvMCBkdOZ+J+fwSkqIvGJAng+TSRvDXtvpbi1U1Aijv5N3deSa0r3zhi6ZP5atUgiTBObtADV0tDp63faIjQtVN905BW2HPhmtBfjvZvjFS+jZq1jI8IvZ85x5mR7UGpUB3zDVe2IEa3iiep7FDwFlAnJcQPZriGuJLNbhLk4Tx09gsiag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U5dCNkRn4SpXKsaUPBcFZiG11BkdZmOybyd3oEU2WE0=;
 b=q3WuBLkqKGIvBWeAsTMMY0MJBr7s0Oxze7fDuGbTyPoIbMaD8bUlNnk+NQSOEGgdTujoWoqans0Ls+cyhxyNVqy+BBIlkwvrKIUHsE0jEfelyprDGX9wYhJeYmN2HdBQmDaUXpW7yZ31WkOsPHb8ThsE035b2jD+qpwpruKNAfOcdPmne654Uy8xO1+kVR3V5jwbQLFB3cPPf1VFhsaZxkJEfcK7G0SoGytfrdHZpBXC9nFuczJQFXfSCXzDu+vxX44yv2Cxh3mqnQsNG4iBvo5WBBtjq6YIWmq3qA8rMUo01pzvCTrEkJkOS4qQ1yp/i5EpalXM63iV1aDbsjFaPQ==
Received: from OS0PR01MB5985.jpnprd01.prod.outlook.com (2603:1096:604:cb::9)
 by TYCPR01MB10914.jpnprd01.prod.outlook.com (2603:1096:400:3a9::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36; Mon, 30 Jan
 2023 05:04:11 +0000
Received: from OS0PR01MB5985.jpnprd01.prod.outlook.com
 ([fe80::ebd9:33b7:389:117b]) by OS0PR01MB5985.jpnprd01.prod.outlook.com
 ([fe80::ebd9:33b7:389:117b%9]) with mapi id 15.20.6043.036; Mon, 30 Jan 2023
 05:04:11 +0000
From: Slide Rain <RainSlide@outlook.com>
To: "ibm-acpi-devel@lists.sourceforge.net"
 <ibm-acpi-devel@lists.sourceforge.net>
Thread-Topic: ThinkPad neo 14 (Intel): Unknown/reserved multi mode value
 0x0000 for type 4
Thread-Index: AQHZNGhDdSPJ6m0q5Ues5S/O5MR+3A==
Date: Mon, 30 Jan 2023 05:04:11 +0000
Message-ID: <OS0PR01MB598559D8CEB8F8F28C292B26BFD39@OS0PR01MB5985.jpnprd01.prod.outlook.com>
Accept-Language: zh-SG, zh-CN, en-US
Content-Language: zh-SG
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-tmn: [Fg1fonxNNE7gR++PC72iFU9ctoEkZBFD]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: OS0PR01MB5985:EE_|TYCPR01MB10914:EE_
x-ms-office365-filtering-correlation-id: f2eb49d3-7194-47e6-e1ab-08db027f6ce0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Zk3+/4mR9niaDN7dWC7seHR4M4sfYw8doxFh9+d1fjRwlZ6EQ6vAfgDJ/4np6jipjyLsyOVNs8F8tGM7j7kiJdOxK3giA3yb/w3fQYcNossd/u/ajen4q1KAvur4Sb0Iqs0qgK4ckQM4HjIGDGZRkfImPo3fhxWqyEiA2E8t4y+5B9bjTm/r+7zKB25c6beO6yxyM4df09TiC4NI1B6pCu02SlkRyh6UMus4m0fvdpi85gMrSPeu/sJ+YCxTYN0D22+PraJtadi80VBqDRfU0zOVP5gpW3Km3Mh0a/n4nafBPZpDFUAUvBjogKTh9yprVj8j9S+PrDVqEKTZ0evbKJ4BlfXZlJCjR1nJa5iRw83GON/yjX1eQt6aI0pSmy1/4aNA7W8LAD+T2FWpQvHj/hM8aBXX7PODAS5zm50fETRuflh86N9Xb1EqjMFrhuU4LNplAesKGA+tjh54Z0z1sEIrwaucLk/6XB+jejnp5UmXl3hfFwfKg1gK0NO26ZS79EYoab+s0L6mvJIFdjdkmhVY2o+8v249LrFo1Mc29LHtnwq80cPN4wJqcMXpCrWn4ICghGgFi959sR7RMAahAqr6huLJEPxDrpFYXSSYhIUru5nBdgbH9KMEhbHxaXKP2B7fBxicA0yGh0xh5re0Yg==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?gb2312?B?ZXg2YVFaTVhLb3FDdVVqNnlablVUcDRlZ29meHE3VkZLcVB4djZISUhCL0xw?=
 =?gb2312?B?ZVRzbUZLVlVkWnZwMExwOXpFRGZ0R3F0Z3Q5d2VNa3AyVzlrcUE4SXBiakVh?=
 =?gb2312?B?a3RjbVcwMlY1WUQ4eFZEQlZVdDZ1amJNNFpCU3ZYc3hyU2ZMMDRKaHBNcmlI?=
 =?gb2312?B?SnNqaUUxVGhaUjNhcUp0M3NXUVU5b1dUb3ZWVGdFdkx5ZzBEVWpSNUQ2K1JW?=
 =?gb2312?B?WVN1NTY3R0owN0taejZtdENKMUs1OGFHSVRhREJ0Y1A5UlR6V2FyalZQbEdF?=
 =?gb2312?B?alI4VE5zY0ZMeUpoOU1vMm9oV0lubnNXNHgrTWcvalJzNGIzRGdhSFFURURm?=
 =?gb2312?B?UUI5RWRUVHA4cThPZEhndjFkNGVMYzdKcTZxNWNrUWFGc1pEM3RydDhCbWtB?=
 =?gb2312?B?TGpFQS9uLy9idmRJdmU4UkpvVDJFYkZhM2RHYWZpSG9iS3FGS2h5bXg0ODRU?=
 =?gb2312?B?OTZkYTd6UTUwQ3Z3cTcwYzRmZXJ5TU5CUjVzMXdFUzJRNUlhNUh4VFQzTDI4?=
 =?gb2312?B?enQ4KzNveTZSTElXeEZtUVIzWXVUalBEbFFzV1BGODV3UUJNRlJHcy9BOU9D?=
 =?gb2312?B?aHFrMGpUd1R6TzlmUVptZ2I5YXYrS080SnNzY2gvMm1CTWdIUHVUWXVtWG13?=
 =?gb2312?B?TUJkVWpIODBOT0xLZ0Jqckw4b2hHd0MwdERYRTdUQzd4VGxwWk0zdWRIVkRK?=
 =?gb2312?B?cUl6SmhGK2RuUDBPdy90MVk2U1NUK2xNS0R5NDQwUkNsbFVUNlZWTWhKbWZW?=
 =?gb2312?B?a0NOWDVVanVBOUVCWWp0MjhhK2ZzSUQwdml1OHp2a25UTmxTbHB2Q21LZHpp?=
 =?gb2312?B?UFM5bXR5THhhc2ZpNWxMRktJTUtSR09RZ1ZjdWlNbW5RWWpRZk9YVnJ4NDVM?=
 =?gb2312?B?S0p0dDBIblo4c3M1dTZQQnVUak4yUngvR0wyRzYxelVXcXN3RlZzNi81bmlk?=
 =?gb2312?B?UVN1SWwrUmp0ZTVzNmFpNzhGVE51VE5Vb04xeVhZZ3JNNGRZaUxCcW9abWxs?=
 =?gb2312?B?Z1RTNm9heXA1bmV2YnpGVHJXVXdXdkdUa3B2T1Z3c3BHZ0hnb0VhUnpnb3lU?=
 =?gb2312?B?QWVFWXNIbGNaVDc0aVdKczlRV2FudTZIbTV6azFCcFQ1QlZDSm1uV0g2bFkv?=
 =?gb2312?B?WnBzVHN3SnFoTkNSc1pyWGlBR1BUbEZLL08wS2JyT3NKczFWSXZSZjl0TnZB?=
 =?gb2312?B?K2pTMmV0QmZjdXdjOG1lS0NDdTlPQTcrdFFydzFyTVU5dFYvUmhYWG9GVEkx?=
 =?gb2312?B?ZmZQTHdCNHVaSUVBaDRGWjd5dnNJdlRSNC9pR1hkbHJRazhwVUFoZkJaSUQ2?=
 =?gb2312?B?OE5MVG1teERMdWxnVmZZSEZWb0JPYW9CL2Nlb0Fnc3RLUVJMNkVxSDVYSVZF?=
 =?gb2312?B?a0JNWCt3dFdRSTdHZDJVYkpWS1dyK00zVUp0ZVJyYm1KZFRXckcvWDc3N3JX?=
 =?gb2312?B?S2ZQT0hZQ2ttZEtFNG5TNnF3cHg0aThyelAxYVROVHA2c2ErMXNwOHduYzRp?=
 =?gb2312?B?Qks0dEV5dVYyMmJEN0x2bGxZUmNxUmpZLzgwa0tPd3A3WFEyTE1XT09KT3NI?=
 =?gb2312?B?aitoY3VGbUQzMCt4Vmh6YVhaeHozUjVMMW14UWlmRlh1ZTNKNVJvd0gzblUv?=
 =?gb2312?B?MkZDVm0vQVovaGVTZldaTlNHOFBJVnIzK0N6cmNBeHdLazZKNFZLeTFsRCtB?=
 =?gb2312?B?aE5HdEc3L0dpQ0N2Q013cXVDd28zaXViU0paZzJMbmE5cDNOeHZsM0Z3PT0=?=
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OS0PR01MB5985.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: f2eb49d3-7194-47e6-e1ab-08db027f6ce0
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2023 05:04:11.3367 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB10914
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: OS: Fedora 37 kernel: 6.1.5-200.fc37.x86_64 From `journalctl
 --boot=-1 -g thinkpad_acpi`: thinkpad_acpi: ThinkPad ACPI Extras v0.26
 thinkpad_acpi:
 http://ibm-acpi.sf.net/ thinkpad_acpi: ThinkPad BIOS R1RET46W(1.18),
 EC R1RHT46W
 thinkpad_acpi: Lenovo ThinkPad neo 14, model 21DN0009CD thinkp [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.52.47 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.52.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rainslide[at]outlook.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1pMML7-0004H4-17
Subject: [ibm-acpi-devel] ThinkPad neo 14 (Intel): Unknown/reserved multi
 mode value 0x0000 for type 4
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
Content-Type: multipart/mixed; boundary="===============8089880480186380598=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

--===============8089880480186380598==
Content-Language: zh-SG
Content-Type: multipart/alternative;
	boundary="_000_OS0PR01MB598559D8CEB8F8F28C292B26BFD39OS0PR01MB5985jpnp_"

--_000_OS0PR01MB598559D8CEB8F8F28C292B26BFD39OS0PR01MB5985jpnp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

T1M6IEZlZG9yYSAzNw0Ka2VybmVsOiA2LjEuNS0yMDAuZmMzNy54ODZfNjQNCg0KRnJvbSBgam91
cm5hbGN0bCAtLWJvb3Q9LTEgLWcgdGhpbmtwYWRfYWNwaWA6DQoNCnRoaW5rcGFkX2FjcGk6IFRo
aW5rUGFkIEFDUEkgRXh0cmFzIHYwLjI2DQp0aGlua3BhZF9hY3BpOiBodHRwOi8vaWJtLWFjcGku
c2YubmV0Lw0KdGhpbmtwYWRfYWNwaTogVGhpbmtQYWQgQklPUyBSMVJFVDQ2VygxLjE4KSwgRUMg
UjFSSFQ0NlcNCnRoaW5rcGFkX2FjcGk6IExlbm92byBUaGlua1BhZCBuZW8gMTQsIG1vZGVsIDIx
RE4wMDA5Q0QNCnRoaW5rcGFkX2FjcGk6IHJhZGlvIHN3aXRjaCBmb3VuZDsgcmFkaW9zIGFyZSBl
bmFibGVkDQp0aGlua3BhZF9hY3BpOiBVbmtub3duL3Jlc2VydmVkIG11bHRpIG1vZGUgdmFsdWUg
MHgwMDAwIGZvciB0eXBlIDQsIHBsZWFzZSByZXBvcnQgdGhpcyB0byBpYm0tYWNwaS1kZXZlbEBs
aXN0cy5zb3VyY2Vmb3JnZS5uZXQNCnRoaW5rcGFkX2FjcGk6IFRhYmxldCBtb2RlIHN3aXRjaCBm
b3VuZCAodHlwZTogR01NUyksIGN1cnJlbnRseSBpbiBsYXB0b3AgbW9kZQ0KdGhpbmtwYWRfYWNw
aTogVGhpcyBUaGlua1BhZCBoYXMgc3RhbmRhcmQgQUNQSSBiYWNrbGlnaHQgYnJpZ2h0bmVzcyBj
b250cm9sLCBzdXBwb3J0ZWQgYnkgdGhlIEFDUEkgdmlkZW8gZHJpdmVyDQp0aGlua3BhZF9hY3Bp
OiBEaXNhYmxpbmcgdGhpbmtwYWQtYWNwaSBicmlnaHRuZXNzIGV2ZW50cyBieSBkZWZhdWx0Li4u
DQp0aGlua3BhZF9hY3BpOiByZmtpbGwgc3dpdGNoIHRwYWNwaV9ibHVldG9vdGhfc3c6IHJhZGlv
IGlzIGJsb2NrZWQNCnRoaW5rcGFkX2FjcGk6IHNlY29uZGFyeSBmYW4gY29udHJvbCBkZXRlY3Rl
ZCAmIGVuYWJsZWQNCnRoaW5rcGFkX2FjcGk6IGJhdHRlcnkgMSByZWdpc3RlcmVkIChzdGFydCAw
LCBzdG9wIDEwMCwgYmVoYXZpb3VyczogMHg3KQ0KaW5wdXQ6IFRoaW5rUGFkIEV4dHJhIEJ1dHRv
bnMgYXMgL2RldmljZXMvcGxhdGZvcm0vdGhpbmtwYWRfYWNwaS9pbnB1dC9pbnB1dDE1DQo=

--_000_OS0PR01MB598559D8CEB8F8F28C292B26BFD39OS0PR01MB5985jpnp_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
<font size=3D"2"><span style=3D"font-size:11pt" class=3D"ContentPasted0">OS=
: Fedora 37<br class=3D"ContentPasted0">
</span></font></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
<font size=3D"2"><span style=3D"font-size:11pt" class=3D"ContentPasted0">ke=
rnel: 6.1.5-200.fc37.x86_64<br class=3D"ContentPasted0">
<br class=3D"ContentPasted0">
From `journalctl --boot=3D-1 -g thinkpad_acpi`:<br class=3D"ContentPasted0"=
>
<br class=3D"ContentPasted0">
thinkpad_acpi: ThinkPad ACPI Extras v0.26<br class=3D"ContentPasted0">
thinkpad_acpi: <a href=3D"http://ibm-acpi.sf.net/" target=3D"_blank" rel=3D=
"noopener noreferrer" data-auth=3D"NotApplicable" data-linkindex=3D"0" clas=
s=3D"ContentPasted0">
http://ibm-acpi.sf.net/</a><br class=3D"ContentPasted0">
thinkpad_acpi: ThinkPad BIOS R1RET46W(1.18), EC R1RHT46W<br class=3D"Conten=
tPasted0">
thinkpad_acpi: Lenovo ThinkPad neo 14, model 21DN0009CD<br class=3D"Content=
Pasted0">
thinkpad_acpi: radio switch found; radios are enabled<br class=3D"ContentPa=
sted0">
thinkpad_acpi: Unknown/reserved multi mode value 0x0000 for type 4, please =
report this to ibm-acpi-devel@lists.sourceforge.net<br class=3D"ContentPast=
ed0">
thinkpad_acpi: Tablet mode switch found (type: GMMS), currently in laptop m=
ode<br class=3D"ContentPasted0">
thinkpad_acpi: This ThinkPad has standard ACPI backlight brightness control=
, supported by the ACPI video driver<br class=3D"ContentPasted0">
thinkpad_acpi: Disabling thinkpad-acpi brightness events by default...<br c=
lass=3D"ContentPasted0">
thinkpad_acpi: rfkill switch tpacpi_bluetooth_sw: radio is blocked<br class=
=3D"ContentPasted0">
thinkpad_acpi: secondary fan control detected &amp; enabled<br class=3D"Con=
tentPasted0">
thinkpad_acpi: battery 1 registered (start 0, stop 100, behaviours: 0x7)<br=
 class=3D"ContentPasted0">
input: ThinkPad Extra Buttons as /devices/platform/thinkpad_acpi/input/inpu=
t15</span></font><br>
</div>
</body>
</html>

--_000_OS0PR01MB598559D8CEB8F8F28C292B26BFD39OS0PR01MB5985jpnp_--


--===============8089880480186380598==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8089880480186380598==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============8089880480186380598==--


Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 86282968ABE
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  2 Sep 2024 17:15:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1sl8lS-0000GD-Ie;
	Mon, 02 Sep 2024 15:14:46 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <njoshi1@lenovo.com>) id 1sl8lQ-0000G4-Il
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 02 Sep 2024 15:14:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UrpF9k3vrQg6P+SD8u5aIoj14KRhRuY5VdkA/KTZtsA=; b=VNpFy4RNaSduFB5fwNzYx5xknJ
 /XKsLx4nHiysOdkLshrfUexi5hkU/M0Uw3CZVKLzjwWWojVKua5EVB88wx8X+3gEVL+60cXrlA7MM
 a+IO4tLqU9F0nZHyPUXjlshflcG2neveigPDRD99+CMd/krX1J/PpnQR7jmz/YvCzO6g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UrpF9k3vrQg6P+SD8u5aIoj14KRhRuY5VdkA/KTZtsA=; b=HZ/5Pz+43kAHvHS+7SWqPX3i0C
 Qu/ePQy5BzQwcDKIQ2Vc2vNudfjkS3Qo+pymS9ixDdtcRpEB4hKJOOmbYiZJy1UmJHyC7PDuq1J1H
 XdrVBKQu7iGYU+rtIPZfgEd3SW6acxcrAE4+QJsNOT0kv+dfxNP0nuDm8SmozB9uT6u8=;
Received: from mx0a-00823401.pphosted.com ([148.163.148.104])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sl8lP-0003DK-Kp for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 02 Sep 2024 15:14:44 +0000
Received: from pps.filterd (m0355087.ppops.net [127.0.0.1])
 by mx0a-00823401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 482CbjY3011876;
 Mon, 2 Sep 2024 13:42:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lenovo.com; h=
 content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=DKIM202306; bh=UrpF9k3vrQg6P+SD8u5aIoj
 14KRhRuY5VdkA/KTZtsA=; b=EibVs3FWkMgMsOFx7MRbNElorcs8KK8+Ts8b5cS
 T7KTTTRb6ZEDqyTgOAwfsQuz6ao7YWaoe3Qma4OKdWAErxXliKodI9uPBde/RIM6
 97xWN/JSo5+3Jz+cPNiAkBay7i3HbZGTYOi7wD72rg8PUfTcpB8r787+qw6Y/wZQ
 TOQITJbkEZj4zofkeoi2S+YqiJUmZcRB/ae7xmWMvq412xqkgMYTVb4bH1NEcKT8
 OquamTASVR8f3vrGf8PtUJjG0bTqKwEngd0sUeMIBSE8S+Nn9AZaX3fz/QrqPUDh
 cTBhVtRC01yPWgye0cFvqFEMzJDXd3TE4DZvQN1rjmrKJiA==
Received: from apc01-sg2-obe.outbound.protection.outlook.com
 (mail-sgaapc01lp2111.outbound.protection.outlook.com [104.47.26.111])
 by mx0a-00823401.pphosted.com (PPS) with ESMTPS id 41cg1hkpkj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 02 Sep 2024 13:42:24 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M02SZG9bgHlXtdhvzRwYIm8QedwTFKNulVdFvvG+IOqtr0JhAxfWgkHMnGTovpEwuUwxJEKrRsFW6Og6Qxh7/adGyrdwp6DrmbqaAFv6mQweuWfaBJL+qyj2sJ6cL/n1ZxULtY1OjmONGCBcqrxR0QrHcSaQHyVw283g+IqYN30pjTfGTTHQOD8BaJiOSLG10Hct5qEVJBW+DOpHUrkdSw5uvx2SkXtiFRTYHe9RF7UFsYB6nvNYD3+WmP3AbWLqE3jphBmwrsNQaAt81OQ4WyANSszWrGjUPknPbfa+U9eFEl6JnTpxGl+seFji1Bb/RoUwKexV/WjNeTN4zl8E4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UrpF9k3vrQg6P+SD8u5aIoj14KRhRuY5VdkA/KTZtsA=;
 b=YWsZ+R86IR3zHzPY0194q/qUp47h34nLraO1aJY51tj03quRQQg6+yEAJQVqq/sXRzl6Mmoltl8XDux1ujrvGqdN3O3eAK9ek8HfqKY5X4IApTYG8z+8lALHmczbrJCTuDo6Ir9BVc6tphwzm2Ar7ESv9d2RNKfkNm9vOTXqPHX7zXLEsRBJVUT+A0Rv2vjSJQdECebGBrmTxDg2ja4snBIJCawMK0zmED1P4rwdLevJt8hEm0z5Ejn9zZzf1R3raRhGP4qUj+iNENOwyaEZhYCQ+1S0wFbwnowHZrhyUQ5Vn6VCMYovj0LDDhCbslHolonWhOTvETQrp0CEMqPZRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=lenovo.com; dmarc=pass action=none header.from=lenovo.com;
 dkim=pass header.d=lenovo.com; arc=none
Received: from SEZPR03MB7959.apcprd03.prod.outlook.com (2603:1096:101:18a::10)
 by SI2PR03MB6807.apcprd03.prod.outlook.com (2603:1096:4:1ee::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.24; Mon, 2 Sep
 2024 13:42:19 +0000
Received: from SEZPR03MB7959.apcprd03.prod.outlook.com
 ([fe80::6df6:a96c:dd65:a7ab]) by SEZPR03MB7959.apcprd03.prod.outlook.com
 ([fe80::6df6:a96c:dd65:a7ab%4]) with mapi id 15.20.7875.019; Mon, 2 Sep 2024
 13:42:19 +0000
To: Pellaeon Lin <nfsmwlin@gmail.com>, "ibm-acpi-devel@lists.sourceforge.net"
 <ibm-acpi-devel@lists.sourceforge.net>
Thread-Topic: [External] Re: [ibm-acpi-devel] PrivacyGuard doesn't work even
 by sending ACPI commands directly
Thread-Index: AQHateEGcpYs/oLV6Ui8X+K5axXYkrJC9NSAgAIaOjA=
Date: Mon, 2 Sep 2024 13:42:19 +0000
Message-ID: <SEZPR03MB795996A1F0F4CA3A7DA69A638C922@SEZPR03MB7959.apcprd03.prod.outlook.com>
References: <CADjcfxZy3LPTmapAvqO7uNZx1Dow5JscyG3L-J3_YB1zaCf1WQ@mail.gmail.com>
 <8ADA47CC-8883-4977-AC6E-C4BCD7365EB0@getmailspring.com>
 <CADjcfxYCUfKmQuZwhhPZvt+TjbWc1ChKdq55QnCF5VRx3stBnQ@mail.gmail.com>
In-Reply-To: <CADjcfxYCUfKmQuZwhhPZvt+TjbWc1ChKdq55QnCF5VRx3stBnQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SEZPR03MB7959:EE_|SI2PR03MB6807:EE_
x-ms-office365-filtering-correlation-id: 48d1199b-7862-40c6-3eca-08dccb5510ef
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?T0UyRk10ZlZ6clFLNVc1cDZVOThsT0I0R3BlTUpCOHJ5VFVLYWVkMGlBdVdR?=
 =?utf-8?B?blU1cWQ5RUlzUHZmYlM3OTNOTUNmRGVlaVJsVWhBTGtTVGZISkdTTGp5Sy9z?=
 =?utf-8?B?c2xSRFVwdkdjTE15K3NMZDhub0VVVUs0R01iVFBwOXgxNFRYb3hFN3MyMysr?=
 =?utf-8?B?Rk9KR2Jpa01lTmdwOXFBMmIreTYwRWMrUFdOeFVxajdZWDdoWUZnbzVBcmRQ?=
 =?utf-8?B?NXAwa0wwVzZzVFVTTnRXY1JGVzVsMG1QMUZGbE42L294SGNBczJsWFUzaUJv?=
 =?utf-8?B?MHN4SVlRVjk3ZzlLNmdjb012UGxNK1JPZjdTOTliZnZJNzFjU29kWHlIMWxO?=
 =?utf-8?B?Z0VJajVFMzhTbFFnWE83MXUxTFArdWZhcHhtaGhUSnRwaXZScjIwQ3BhbStq?=
 =?utf-8?B?dkc3akNMNkVudk1ic3FTTjhBd05sS0FJZkJleERJWExrSWZCbElRL1lmZzBm?=
 =?utf-8?B?OGdMSTZOQzV2eEx4SFUvU3hNaHREQm9tajRmcmhadk5ndTJsbXlHTE1Icm5M?=
 =?utf-8?B?eWlYTDJtZW1teG95VG1LZ2ZZTWRMT3RoRkMwSFN4Rm80bVVQRmJqTkYwZzZv?=
 =?utf-8?B?Yld3Szh2WnBDNXU2Um13VzhqVGtDMmlrdFNWTVZLemQxeTkxNDRmS3RYWHRy?=
 =?utf-8?B?Z0FTcnVQdWZuRllzK2UrV3B1OWNpbnVhTTNrL3hycXliVDlCZHVaakJmcDhX?=
 =?utf-8?B?VEp4VjVSVEtYd0FEdThZRWxYTlNSVEZNdHlVWjV5WHRRQ1BUdE5xUTFNYURw?=
 =?utf-8?B?SCtaSSsvWHJrc3ZoZTBUM3oyZXVmaEwyWWZGYzFjMWFkVjRNWHJpTXFLVk9E?=
 =?utf-8?B?ZlVVT3IzcWgyMUpLUjY1SHB4dG9oWnlNSHN3dDRjSHE5cXQ3QXk4OVA4dmZl?=
 =?utf-8?B?TmdZUkdxN2Z1S0pveTFuaUdCVGdJbjhsU0FhckpibTNlMnhjQ2U2dkVBMzBT?=
 =?utf-8?B?cDlCL1FseFJzcDFwUEQ2dUVUT0NMSjFyd0ZuZk9xc3U3S01DSzk1cFdQRFVp?=
 =?utf-8?B?RjdkWUxKbXFHSSs5MG50WlFDbExULzRpRGU4RnZlVk5Bei9IcHNjWlpWLzBC?=
 =?utf-8?B?c3locnBSZDZvSlJyVjh1ZE9mUE9XNkZoUnp3bUVqbjlMeVNvVTVnVGVVVzdG?=
 =?utf-8?B?anBCbTdEY1Q3YXZZU2JCTmZ5aitubUQ5eDVpSkZJRUhwa0RHM2laT3VzM2Vs?=
 =?utf-8?B?a2EyWUM1NlFBYXduQVR2OE9WWW9DTTRjd2hXRUFaci9Jbkh3MVFaM2pXVmJE?=
 =?utf-8?B?ZlpPNUhndlp2TGh5Z1JuRi9TeGdiMHhyZCtuVTRPcTFrbWRXa0RQd0dPUjVO?=
 =?utf-8?B?MDkzL3psQk0yVG9EYUtkTmFMeWdGY0dpeitybG5lNEFuUkpSUFVVa2dmMTcw?=
 =?utf-8?B?WmlOMEtpc211Y01rSmJPNFQyYVdFRE91U2FRMWE4dy9UZGNuOVhBZDIzdmpn?=
 =?utf-8?B?YjQ5b2FLdHVBU1lpcVVDcE9jajFVRGdkWWVSWGNyRDZDVjlUQXZrL1lxcHYx?=
 =?utf-8?B?MTlCTnkzUkY3UmtlMjRjdnVETkFkSGwyRFpTM0YzYVRmVWlkQVQrc08xbklD?=
 =?utf-8?B?WEdoSU42cUpVcG52QXpvckZSWW5zMWhrZEk2TkNmRUpUTVI3dlVTQnZNaElM?=
 =?utf-8?B?M0k4QTZzOVF4MzgwWlphWHRreWd0aXpvamlXNk13NnAwb0grakM3WHBWWlhS?=
 =?utf-8?B?OE1FTXpCd2s5dkNmUU9ZNndLMEtNc2V3ZnFsT0ZocVFlYlpEYnNJNUN1a081?=
 =?utf-8?B?N2RhYllUQ3dycDRqQTJyZi9MVEhoSWMzQlBhUzlwcGVpNGxzMWJCbTVrOGN0?=
 =?utf-8?B?bWhydnBveXhURUhxRkRhOGJqd1dQWm0wcUJmbU1kNUs0eE94NmhwZmdwb1B2?=
 =?utf-8?B?bGk4b1lmTDlpNnJsWWtuNS9hVlVtU2hvVWVTKytCR3dSYkE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SEZPR03MB7959.apcprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S2FTVk52WUQxYWdqZitRRVR1WlBwelAwaCtoQUpBUFdlVmQxWUFwRDA5Y29x?=
 =?utf-8?B?QWlBdGpNclE5UU1uanU5TGJJOTFsYnpDcFRIUFViaVAyNjhTUllPMitFYnV5?=
 =?utf-8?B?blR1ZW5odWMwemZLODhNaUVYOUpIampoa0c5b2lSQWdvME0wRXhaRVVhdlE3?=
 =?utf-8?B?T1lxQmxIUXJrTlc3WUduU1dzL1JFT3NmZXc5NVhTREpGV05SY20vdG0vWWhn?=
 =?utf-8?B?MGE2L3pHSk04N0RQV0FYR3JGTGlFaXVOcElZOVNmMXJHSEtINFFyMlpmYzdK?=
 =?utf-8?B?cXFCM3hLWU14MDF5MkZRSUZBTmJvOS9TT0VhbUxDcDJscVVWV1pMakdMeGdV?=
 =?utf-8?B?U1VWRi9LdnlPSXhKSDJVbWd4aFJNTGtFNXI0UUpxTFVmRStjKzRYZlVjNmxz?=
 =?utf-8?B?SFY2WERGOFdnRlpPQTFzTldQYSt4bm9GN3J6UklCRWVMdjZLMitxTlVvKzhQ?=
 =?utf-8?B?UHpwOVNxTkRJYUY3L3Zmd1FycmFMSUFGM0g2OVhUUVRROGRXR0tuRitvL2FS?=
 =?utf-8?B?Nk5FbUIyOXFtVUhQRTVMM1RzeUNNRDc0OTdpZmJ2ZXRHclJ3NmVqanAzRG0w?=
 =?utf-8?B?UXY5UitiSGk4SURWNGNkbXA5RDdsTUg3bmtTMEdPY1cvSGVVMEVVSGxmNEFj?=
 =?utf-8?B?YWo5SngwbVNOY1Q3Z2dGcU9IZDRyM3JiNlNHU2ZOMXhrZGtXVTY1TmkzSVVL?=
 =?utf-8?B?SGVZTnZZSllrcXFjQ3FmVHcvNTIvUGpjTngxcTFiUGVmSFRseVNlVHROaGdC?=
 =?utf-8?B?MWhxdTlFcjk5N2llZi9hbVkrZFlTVU9TeThNb2RyWVlNVHpNaktZV1pJZmpi?=
 =?utf-8?B?UG5HRzJ0b1pJNXlhenMyRkhWdFpleUpzK21GUURmMmozb2ljbTNGbE1Mazgr?=
 =?utf-8?B?NFJLVGVUMUNETERkeHFqTEtrNDduZjRwdHk1M1MvcnJhVytaQ2lsangvYjI4?=
 =?utf-8?B?Z2ZLSlJVSTl0aUdkYk43YkVQaWZGdGpHcXVRQndnZ1JsRWpqS29UTXpyQkdJ?=
 =?utf-8?B?MjdUL2VBLzh5WmRYdERCb3RqRmVTQ05XcmNndWF4M21IS0NwZkptd294dy9T?=
 =?utf-8?B?UkxCNEVWOVhXVFVEdWs2eFpNa1MvdnpyOGpXd20vVXhoWHEwdGV3V2VZVzVx?=
 =?utf-8?B?ZFNJcE9PelZnTzFtWlpIekxoSUZYK3VlSXlhN05hMk45TklMQ3BwMHUra0Q3?=
 =?utf-8?B?UEppaG9SNlNNWGlIcDZQZXhjaTYxcTVTaDVEZWN1M0RBNVkzQ09MYlU2Tit4?=
 =?utf-8?B?bURwNm5BRURCNlkvbFE4eC8yREhVeWM4cHdXeWlSQy9Qdk5nS2laSU1DdkhX?=
 =?utf-8?B?alZYV210YzZ2VktIMGZGd0pLZ3dUYjdCS2k5eFZ3UkdLOFJ4amo5TVFMOUxF?=
 =?utf-8?B?TVZQbXU0WlBlbm9tRE5lNjV2Z2ZLWDh0WVZMSlUwTTh6dzBsQ0FjMnB3eVFh?=
 =?utf-8?B?eG4rRXgyeVp3MCtBbUJzR3Z1anNOeHozRmhkamRXb1NxaWhXalN2UnlzblBy?=
 =?utf-8?B?ZjdSNjNsZnJKNlpOT0Jway9PclJ5M3NpOWpHNXNCZDFMK3hSSEtOTjF1VWZK?=
 =?utf-8?B?VTFkRjJ0MVVkVGVPRGtMaU45VW84NnlKYWN0bVhLMnU0ODJWdU9WVU0xa1pv?=
 =?utf-8?B?M29jckgwRDEveG8wUENKTGoxUlJDemlDWFhmeDdEK1dQQVFacVpORjdMQmgy?=
 =?utf-8?B?Ri8zc2ZvaFhQQkhncHNibytqRnBrNHFaMEF4bU1ScktITzIzRHVlbktKaDEx?=
 =?utf-8?B?UEVJWE9ZVXZUVHdBaUZIREthdDJ6eG1oUmgxWXZVSWlRZlNKUG9LaTVHYVMr?=
 =?utf-8?B?NFpydUpVZUtKMVlRSHJuWFZVREJrUjRicWlkQzZob3VWYllydXZCUjdNZGIv?=
 =?utf-8?B?TE02UXErZmZCQjhPc0l3WEV0N3dWbW9DUEs3N0xwejl3Qk5SNmdWNjZZM3lS?=
 =?utf-8?B?UXVNdmE3R29aTjhObWhQYnA1dE5iWDl4aFloVFpXV05LczUxQ0pBVEk2WElj?=
 =?utf-8?B?RldiNjRCZUt1aTd6R1pPM2tiYzN5R3FzcXU3ejBIZ0phbUlzeGFRaWdhUE9q?=
 =?utf-8?B?Z094QlV0b2xYRDhpRjNjSHFPNzZsdkNXS3RtbmZPd3ZDOVBmWGZRdUFTYmwy?=
 =?utf-8?Q?PL2Ptt5cBse/ZdkdGen7NTU4P?=
MIME-Version: 1.0
X-OriginatorOrg: lenovo.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SEZPR03MB7959.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48d1199b-7862-40c6-3eca-08dccb5510ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2024 13:42:19.6419 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5c7d0b28-bdf8-410c-aa93-4df372b16203
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: INK1h6ZP+2ank279SmI8BHdddSFgXSclLpX2/VXopa0CALbKetT4UzUAnaES7QMDENEX9z/K2C/fPNfjZfLuZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SI2PR03MB6807
X-Proofpoint-ORIG-GUID: ZNd59ntZu-wIcWiFqCYwjwTxZRuqSo4C
X-Proofpoint-GUID: ZNd59ntZu-wIcWiFqCYwjwTxZRuqSo4C
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-02_04,2024-09-02_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 spamscore=0 impostorscore=0 clxscore=1011 mlxlogscore=999 malwarescore=0
 mlxscore=0 classifier=spam adjust=-20 reason=mlx scancount=1
 engine=8.19.0-2407110000 definitions=main-2409020108
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello Pellaeon, >> @Mark: has the team replied anything? Mark
 has informed me regarding this and I am yet to check this . Sorry for this
 ! I will try to get hold of system and try this within this week , if I find
 AM [...] 
 Content analysis details:   (-0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [148.163.148.104 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.148.104 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1sl8lP-0003DK-Kp
Subject: Re: [ibm-acpi-devel] [External] Re: PrivacyGuard doesn't work even
 by sending ACPI commands directly
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
From: Nitin Joshi1 via ibm-acpi-devel <ibm-acpi-devel@lists.sourceforge.net>
Reply-To: Nitin Joshi1 <njoshi1@lenovo.com>
Content-Type: multipart/mixed; boundary="===============5365259663282745629=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

--===============5365259663282745629==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SEZPR03MB795996A1F0F4CA3A7DA69A638C922SEZPR03MB7959apcp_"

--_000_SEZPR03MB795996A1F0F4CA3A7DA69A638C922SEZPR03MB7959apcp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gUGVsbGFlb24sDQoNCj4+IEBNYXJrOiBoYXMgdGhlIHRlYW0gcmVwbGllZCBhbnl0aGlu
Zz8NCk1hcmsgaGFzIGluZm9ybWVkIG1lIHJlZ2FyZGluZyB0aGlzIGFuZCBJIGFtIHlldCB0byBj
aGVjayB0aGlzIC4gU29ycnkgZm9yIHRoaXMgIQ0KSSB3aWxsIHRyeSB0byBnZXQgaG9sZCBvZiBz
eXN0ZW0gYW5kIHRyeSB0aGlzIHdpdGhpbiB0aGlzIHdlZWsgLCBpZiBJIGZpbmQgQU1EIGUtcHJp
dmFjeSBndWFyZCBtYWNoaW5lIC4NCg0KVGhhbmtzDQoNCkZyb206IFBlbGxhZW9uIExpbiA8bmZz
bXdsaW5AZ21haWwuY29tPg0KU2VudDogU3VuZGF5LCBTZXB0ZW1iZXIgMSwgMjAyNCAyOjMyIFBN
DQpUbzogaWJtLWFjcGktZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0DQpTdWJqZWN0OiBbRXh0
ZXJuYWxdIFJlOiBbaWJtLWFjcGktZGV2ZWxdIFByaXZhY3lHdWFyZCBkb2Vzbid0IHdvcmsgZXZl
biBieSBzZW5kaW5nIEFDUEkgY29tbWFuZHMgZGlyZWN0bHkNCg0KSGksDQoNCkBNYXJrOiBoYXMg
dGhlIHRlYW0gcmVwbGllZCBhbnl0aGluZz8NCg0KQE1hcmNvOiBgcHJvcHRlc3RgIG9uIG15IHN5
c3RlbSBkaWQgbm90IHJldHVybiBhbnkgcHJvcGVydHkgcmVsYXRlZCB0byBwcml2YWN5IHNjcmVl
biwgaXMgdGhpcyBub3JtYWw/IChJIHJhbiBgcHJvcHRlc3QgfCBncmVwIC1pIHByaXZhY3lgLCB3
aGljaCByZXR1cm5lZCBlbXB0eSByZXN1bHQuKQ0KDQpUaGFua3MsDQoNCk1hcmNvIFRyZXZpc2Fu
IChUcmV2acOxbykgPG1haWxAM3YxbjAubmV0PG1haWx0bzptYWlsQDN2MW4wLm5ldD4+IOaWvCAy
MDI05bm0NuaciDTml6Ug6YCx5LqMIOS4iuWNiDI6MDflr6vpgZPvvJoNCkhpLA0KDQpOb3Qgc3Vy
ZSBpZiBzb21ldGhpbmcgY2hhbmdlZCBvciBpdCBpcyBkaWZmZXJlbnQgaW4gbmV3ZXIgbW9kZWxz
LCBidXQNCnRoZSBwcml2YWN5IHNjcmVlbiBmZWF0dXJlIHNvIGZhciBoYXMgYmVlbiBleHBvc2Vk
IGFzIGEgS01TIHByb3BlcnR5IHlvdQ0KY2FuIGluc3BlY3QgYW5kIHNldCB3aXRoIHRvb2xzIGxp
a2UgcHJvcHRlc3QgKGluIGxpYmRybS10ZXN0cyBwYWNrYWdlDQpmb3Igd2hhdCBjb25jZXJucyB1
YnVudHUpDQoNCkNoZWVycw0KDQpPbiBnaXUgMyAyMDI0LCBhdCAxOjQ2IHBtLCBQZWxsYWVvbiBM
aW4gPG5mc213bGluQGdtYWlsLmNvbTxtYWlsdG86bmZzbXdsaW5AZ21haWwuY29tPj4gd3JvdGU6
DQoNCj4gSGksDQo+DQo+IEkgaGF2ZSBhIFRoaW5rUGFkIFgxMyBHZW4gMiBBTUQgd2l0aCBQcml2
YWN5R3VhcmQuIEJ1dCBieSBwcmVzc2luZyB0aGUNCj4gY29tYmluYXRpb24ga2V5IEZuK0QgaXQg
ZG9lcyBub3QgdG9nZ2xlIHRoZSBQcml2YWN5R3VhcmQsIHRoZQ0KPiBQcml2YWN5R3VhcmQgc3Rh
eXMgb24uIEkndmUgdGVzdGVkOg0KPg0KPiAtIEZuK0QgZG9lcyB0b2dnbGUgUHJpdmFjeUd1YXJk
IHdoZW4gSSdtIGluIHRoZSBCSU9TDQo+IC0gRm4rRCBoYXMgbm8gZWZmZWN0IG9uIFVidW50dSAy
Mi4xMCwgVWJ1bnR1IDIzLjA0LCBVYnVudHUgMjMuMTAsDQo+IFVidW50dSAyNC4wNCBhbmQgRmVk
b3JhIDQwIChleGNlcHQgVWJ1bnR1IDIzLjEwIGFuZCAyNC4wNCwgYWxsIHdhcw0KPiB0ZXN0ZWQg
dXNpbmcgTGl2ZVVTQikNCj4NCj4gSW4gYWxsIG9mIHRoZSBMaW51eCBjYXNlcywgSSBjYW4gY29u
ZmlybSB0aGF0IGJ5IHByZXNzaW5nIEZuK0QsIHRoZQ0KPiBzdGF0dXMgdmFsdWUgb2YgL3Byb2Mv
YWNwaS9pYm0vbGNkc2hhZG93IGFjdHVhbGx5IGNoYW5nZXMuDQo+DQo+IEkndmUgYWx3YXlzIHRo
b3VnaHQgdGhpcyB3YXMgYSBVYnVudHUtc3BlY2lmaWMgaXNzdWUsIHVudGlsIEkgdGVzdGVkIEZl
ZG9yYS4NCj4NCj4gSSB0ZXN0ZWQgdGhpcyBmdXJ0aGVyIGJ5IGluc3RhbGxpbmcgdGhlIGFjcGkt
Y2FsbC1ka21zIHBhY2thZ2Ugb24NCj4gVWJ1bnR1IGFuZCBpc3N1ZXMgdGhlIGZvbGxvd2luZyBj
YWxsOg0KPg0KPiBlY2hvICdcX1NCLlBDSTAuTFBDMC5FQzAuSEtFWS5TU1NTIDB4MScgfCBzdWRv
IHRlZSAvcHJvYy9hY3BpL2NhbGwNCj4NCj4gSXQgcmV0dXJuZWQgMCAod2hpY2ggc2hvdWxkIG1l
YW4gc3VjY2VzcyksIGJ1dCBQcml2YWN5R3VhcmQgaXMgc3RpbGwNCj4gT04uIFRoZW4gSSB0cmll
ZCB0byBjYWxsIGl0IHdpdGggMHgwOg0KPg0KPiBlY2hvICdcX1NCLlBDSTAuTFBDMC5FQzAuSEtF
WS5TU1NTIDB4MCcgfCBzdWRvIHRlZSAvcHJvYy9hY3BpL2NhbGwNCj4NCj4gQWxzbyBnZXR0aW5n
IDAgaW4gcmV0dXJuLiBQcml2YWN5R3VhcmQgaXMgc3RpbGwgT04uDQo+DQo+IEJhc2VkIG9uIG15
IGxpbWl0ZWQgdW5kZXJzdGFuZGluZyBvZiBBQ1BJIGFuZCB0aGUga2VybmVsLCBhdCB0aGlzDQo+
IHBvaW50IGl0IG1pZ2h0IGJlIGEgZmlybXdhcmUgaXNzdWU/IChmd3VwZG1nciBzaG93cyB0aGF0
IHRoZXJlIGlzIG5vDQo+IGF2YWlsYWJsZSB1cGRhdGVzKSBCdXQgYmFzZWQgb24gbXkgcmVhZGlu
ZyBhbmQgdW5kZXJzdGFuZGluZyBvZg0KPiB0aGlua3BhZF9hY3BpLmMsIHRoZSBwYXJ0aWN1bGFy
IEFDUEkgY2FsbCB0aGF0IEkgaXNzdWVkIGlzIGFsc28gaG93DQo+IHRoZSBMaW51eCBkcml2ZXIg
Y3VycmVudGx5IG9wZXJhdGVzIHRoZSBQcml2YWN5R3VhcmQgZmVhdHVyZSwgd2hpY2gNCj4gbWVh
bnMgdGhlIGRyaXZlciBtaWdodCBhbHNvIGJlIGFmZmVjdGVkIGJ5IHRoaXMgaXNzdWUuIFNvIEkn
bSBob3BpbmcNCj4gc29tZW9uZSBjb3VsZCBoZWxwIG1lIGRlYnVnIHRoaXMgZnVydGhlciwgb3Ig
cG9pbnQgb3V0IGFueXRoaW5nIHRoYXQNCj4gSSdtIG5vdCB1bmRlcnN0YW5kaW5nIGNvcnJlY3Rs
eS4NCj4NCj4gVGhhbmtzIQ0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXw0KPg0KPiBpYm0tYWNwaS1kZXZlbCBtYWlsaW5nIGxpc3QNCj4NCj4gaWJtLWFj
cGktZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0PG1haWx0bzppYm0tYWNwaS1kZXZlbEBsaXN0
cy5zb3VyY2Vmb3JnZS5uZXQ+DQo+DQo+IGh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL2libS1hY3BpLWRldmVsDQo=

--_000_SEZPR03MB795996A1F0F4CA3A7DA69A638C922SEZPR03MB7959apcp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
TWFuZ2FsOw0KCXBhbm9zZS0xOjIgNCA1IDMgNSAyIDMgMyAyIDI7fQ0KQGZvbnQtZmFjZQ0KCXtm
b250LWZhbWlseToiQ2FtYnJpYSBNYXRoIjsNCglwYW5vc2UtMToyIDQgNSAzIDUgNCA2IDMgMiA0
O30NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk65ri444K044K344OD44KvOw0KCXBhbm9zZS0x
OjIgMTEgNCAwIDAgMCAwIDAgMCAwO30NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6Q2FsaWJy
aTsNCglwYW5vc2UtMToyIDE1IDUgMiAyIDIgNCAzIDIgNDt9DQpAZm9udC1mYWNlDQoJe2ZvbnQt
ZmFtaWx5OiJcQOa4uOOCtOOCt+ODg+OCryI7DQoJcGFub3NlLTE6MiAxMSA0IDAgMCAwIDAgMCAw
IDA7fQ0KLyogU3R5bGUgRGVmaW5pdGlvbnMgKi8NCnAuTXNvTm9ybWFsLCBsaS5Nc29Ob3JtYWws
IGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBpbjsNCglmb250LXNpemU6MTEuMHB0Ow0KCWZvbnQt
ZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmO30NCmE6bGluaywgc3Bhbi5Nc29IeXBlcmxpbmsN
Cgl7bXNvLXN0eWxlLXByaW9yaXR5Ojk5Ow0KCWNvbG9yOmJsdWU7DQoJdGV4dC1kZWNvcmF0aW9u
OnVuZGVybGluZTt9DQpzcGFuLkVtYWlsU3R5bGUxOA0KCXttc28tc3R5bGUtdHlwZTpwZXJzb25h
bC1yZXBseTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjsNCgljb2xvcjp3aW5k
b3d0ZXh0O30NCi5Nc29DaHBEZWZhdWx0DQoJe21zby1zdHlsZS10eXBlOmV4cG9ydC1vbmx5Ow0K
CW1zby1mYXJlYXN0LWxhbmd1YWdlOkpBO30NCkBwYWdlIFdvcmRTZWN0aW9uMQ0KCXtzaXplOjgu
NWluIDExLjBpbjsNCgltYXJnaW46OTkuMjVwdCA4NS4wNXB0IDg1LjA1cHQgODUuMDVwdDt9DQpk
aXYuV29yZFNlY3Rpb24xDQoJe3BhZ2U6V29yZFNlY3Rpb24xO30NCi0tPjwvc3R5bGU+PCEtLVtp
ZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWRlZmF1bHRzIHY6ZXh0PSJlZGl0IiBzcGlkbWF4
PSIxMDI2IiAvPg0KPC94bWw+PCFbZW5kaWZdLS0+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8
bzpzaGFwZWxheW91dCB2OmV4dD0iZWRpdCI+DQo8bzppZG1hcCB2OmV4dD0iZWRpdCIgZGF0YT0i
MSIgLz4NCjwvbzpzaGFwZWxheW91dD48L3htbD48IVtlbmRpZl0tLT4NCjwvaGVhZD4NCjxib2R5
IGxhbmc9IkVOLVVTIiBsaW5rPSJibHVlIiB2bGluaz0icHVycGxlIiBzdHlsZT0id29yZC13cmFw
OmJyZWFrLXdvcmQiPg0KPGRpdiBjbGFzcz0iV29yZFNlY3Rpb24xIj4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjxzcGFuIHN0eWxlPSJtc28tZmFyZWFzdC1sYW5ndWFnZTpKQSI+SGVsbG8gUGVsbGFl
b24sPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5
bGU9Im1zby1mYXJlYXN0LWxhbmd1YWdlOkpBIj48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0ibXNvLWZhcmVhc3QtbGFuZ3VhZ2U6
SkEiPiZndDsmZ3Q7IDwvc3Bhbj5ATWFyazogaGFzIHRoZSB0ZWFtIHJlcGxpZWQgYW55dGhpbmc/
PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0ibXNvLWZh
cmVhc3QtbGFuZ3VhZ2U6SkEiPk1hcmsgaGFzIGluZm9ybWVkIG1lIHJlZ2FyZGluZyB0aGlzIGFu
ZCBJIGFtIHlldCB0byBjaGVjayB0aGlzIC4gU29ycnkgZm9yIHRoaXMgITxvOnA+PC9vOnA+PC9z
cGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJtc28tZmFyZWFzdC1s
YW5ndWFnZTpKQSI+SSB3aWxsIHRyeSB0byBnZXQgaG9sZCBvZiBzeXN0ZW0gYW5kIHRyeSB0aGlz
IHdpdGhpbiB0aGlzIHdlZWsgLCBpZiBJIGZpbmQgQU1EIGUtcHJpdmFjeSBndWFyZCBtYWNoaW5l
IC48bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHls
ZT0ibXNvLWZhcmVhc3QtbGFuZ3VhZ2U6SkEiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJtc28tZmFyZWFzdC1sYW5ndWFnZTpK
QSI+VGhhbmtzIDxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxz
cGFuIHN0eWxlPSJtc28tZmFyZWFzdC1sYW5ndWFnZTpKQSI+PG86cD4mbmJzcDs8L286cD48L3Nw
YW4+PC9wPg0KPGRpdiBzdHlsZT0iYm9yZGVyOm5vbmU7Ym9yZGVyLWxlZnQ6c29saWQgYmx1ZSAx
LjVwdDtwYWRkaW5nOjBpbiAwaW4gMGluIDQuMHB0Ij4NCjxkaXY+DQo8ZGl2IHN0eWxlPSJib3Jk
ZXI6bm9uZTtib3JkZXItdG9wOnNvbGlkICNFMUUxRTEgMS4wcHQ7cGFkZGluZzozLjBwdCAwaW4g
MGluIDBpbiI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48Yj5Gcm9tOjwvYj4gUGVsbGFlb24gTGlu
ICZsdDtuZnNtd2xpbkBnbWFpbC5jb20mZ3Q7IDxicj4NCjxiPlNlbnQ6PC9iPiBTdW5kYXksIFNl
cHRlbWJlciAxLCAyMDI0IDI6MzIgUE08YnI+DQo8Yj5Ubzo8L2I+IGlibS1hY3BpLWRldmVsQGxp
c3RzLnNvdXJjZWZvcmdlLm5ldDxicj4NCjxiPlN1YmplY3Q6PC9iPiBbRXh0ZXJuYWxdIFJlOiBb
aWJtLWFjcGktZGV2ZWxdIFByaXZhY3lHdWFyZCBkb2Vzbid0IHdvcmsgZXZlbiBieSBzZW5kaW5n
IEFDUEkgY29tbWFuZHMgZGlyZWN0bHk8bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPC9kaXY+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxkaXY+DQo8ZGl2Pg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+SGksPG86cD48L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRpdj4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPkBNYXJrOiBoYXMgdGhlIHRlYW0gcmVwbGllZCBhbnl0aGlu
Zz88bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxv
OnA+Jm5ic3A7PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
QE1hcmNvOiBgcHJvcHRlc3RgIG9uIG15IHN5c3RlbSBkaWQgbm90IHJldHVybiBhbnkgcHJvcGVy
dHkgcmVsYXRlZCB0byBwcml2YWN5IHNjcmVlbiwgaXMgdGhpcyBub3JtYWw/IChJIHJhbiBgcHJv
cHRlc3QgfCBncmVwIC1pIHByaXZhY3lgLCB3aGljaCByZXR1cm5lZCBlbXB0eSByZXN1bHQuKTxv
OnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4m
bmJzcDs8L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5UaGFu
a3MsPG86cD48L286cD48L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PG86cD4mbmJzcDs8L286cD48L3A+DQo8ZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
Pk1hcmNvIFRyZXZpc2FuIChUcmV2acOxbykgJmx0OzxhIGhyZWY9Im1haWx0bzptYWlsQDN2MW4w
Lm5ldCI+bWFpbEAzdjFuMC5uZXQ8L2E+Jmd0Ow0KPHNwYW4gbGFuZz0iWkgtQ04iIHN0eWxlPSJm
b250LWZhbWlseTrmuLjjgrTjgrfjg4Pjgq8iPuaWvDwvc3Bhbj4gMjAyNDxzcGFuIGxhbmc9IlpI
LUNOIiBzdHlsZT0iZm9udC1mYW1pbHk65ri444K044K344OD44KvIj7lubQ8L3NwYW4+NjxzcGFu
IGxhbmc9IlpILUNOIiBzdHlsZT0iZm9udC1mYW1pbHk65ri444K044K344OD44KvIj7mnIg8L3Nw
YW4+NDxzcGFuIGxhbmc9IlpILUNOIiBzdHlsZT0iZm9udC1mYW1pbHk65ri444K044K344OD44Kv
Ij7ml6U8L3NwYW4+PHNwYW4gbGFuZz0iWkgtQ04iPg0KPC9zcGFuPjxzcGFuIGxhbmc9IlpILUNO
IiBzdHlsZT0iZm9udC1mYW1pbHk65ri444K044K344OD44KvIj7pgLHkuow8L3NwYW4+PHNwYW4g
bGFuZz0iWkgtQ04iPiA8L3NwYW4+DQo8c3BhbiBsYW5nPSJaSC1DTiIgc3R5bGU9ImZvbnQtZmFt
aWx5Oua4uOOCtOOCt+ODg+OCryI+5LiK5Y2IPC9zcGFuPjI6MDc8c3BhbiBsYW5nPSJaSC1DTiIg
c3R5bGU9ImZvbnQtZmFtaWx5Oua4uOOCtOOCt+ODg+OCryI+5a+r6YGT77yaPC9zcGFuPjxvOnA+
PC9vOnA+PC9wPg0KPC9kaXY+DQo8YmxvY2txdW90ZSBzdHlsZT0iYm9yZGVyOm5vbmU7Ym9yZGVy
LWxlZnQ6c29saWQgI0NDQ0NDQyAxLjBwdDtwYWRkaW5nOjBpbiAwaW4gMGluIDYuMHB0O21hcmdp
bi1sZWZ0OjQuOHB0O21hcmdpbi1yaWdodDowaW4iPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+SGks
PGJyPg0KPGJyPg0KTm90IHN1cmUgaWYgc29tZXRoaW5nIGNoYW5nZWQgb3IgaXQgaXMgZGlmZmVy
ZW50IGluIG5ld2VyIG1vZGVscywgYnV0PGJyPg0KdGhlIHByaXZhY3kgc2NyZWVuIGZlYXR1cmUg
c28gZmFyIGhhcyBiZWVuIGV4cG9zZWQgYXMgYSBLTVMgcHJvcGVydHkgeW91PGJyPg0KY2FuIGlu
c3BlY3QgYW5kIHNldCB3aXRoIHRvb2xzIGxpa2UgcHJvcHRlc3QgKGluIGxpYmRybS10ZXN0cyBw
YWNrYWdlPGJyPg0KZm9yIHdoYXQgY29uY2VybnMgdWJ1bnR1KTxicj4NCjxicj4NCkNoZWVyczxi
cj4NCjxicj4NCk9uIGdpdSAzIDIwMjQsIGF0IDE6NDYgcG0sIFBlbGxhZW9uIExpbiAmbHQ7PGEg
aHJlZj0ibWFpbHRvOm5mc213bGluQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm5mc213bGlu
QGdtYWlsLmNvbTwvYT4mZ3Q7IHdyb3RlOjxicj4NCjxicj4NCiZndDsgSGksPGJyPg0KJmd0OyA8
YnI+DQomZ3Q7IEkgaGF2ZSBhIFRoaW5rUGFkIFgxMyBHZW4gMiBBTUQgd2l0aCBQcml2YWN5R3Vh
cmQuIEJ1dCBieSBwcmVzc2luZyB0aGU8YnI+DQomZ3Q7IGNvbWJpbmF0aW9uIGtleSBGbitEIGl0
IGRvZXMgbm90IHRvZ2dsZSB0aGUgUHJpdmFjeUd1YXJkLCB0aGU8YnI+DQomZ3Q7IFByaXZhY3lH
dWFyZCBzdGF5cyBvbi4gSSd2ZSB0ZXN0ZWQ6PGJyPg0KJmd0OyA8YnI+DQomZ3Q7IC0gRm4rRCBk
b2VzIHRvZ2dsZSBQcml2YWN5R3VhcmQgd2hlbiBJJ20gaW4gdGhlIEJJT1M8YnI+DQomZ3Q7IC0g
Rm4rRCBoYXMgbm8gZWZmZWN0IG9uIFVidW50dSAyMi4xMCwgVWJ1bnR1IDIzLjA0LCBVYnVudHUg
MjMuMTAsPGJyPg0KJmd0OyBVYnVudHUgMjQuMDQgYW5kIEZlZG9yYSA0MCAoZXhjZXB0IFVidW50
dSAyMy4xMCBhbmQgMjQuMDQsIGFsbCB3YXM8YnI+DQomZ3Q7IHRlc3RlZCB1c2luZyBMaXZlVVNC
KTxicj4NCiZndDsgPGJyPg0KJmd0OyBJbiBhbGwgb2YgdGhlIExpbnV4IGNhc2VzLCBJIGNhbiBj
b25maXJtIHRoYXQgYnkgcHJlc3NpbmcgRm4rRCwgdGhlPGJyPg0KJmd0OyBzdGF0dXMgdmFsdWUg
b2YgL3Byb2MvYWNwaS9pYm0vbGNkc2hhZG93IGFjdHVhbGx5IGNoYW5nZXMuPGJyPg0KJmd0OyA8
YnI+DQomZ3Q7IEkndmUgYWx3YXlzIHRob3VnaHQgdGhpcyB3YXMgYSBVYnVudHUtc3BlY2lmaWMg
aXNzdWUsIHVudGlsIEkgdGVzdGVkIEZlZG9yYS48YnI+DQomZ3Q7IDxicj4NCiZndDsgSSB0ZXN0
ZWQgdGhpcyBmdXJ0aGVyIGJ5IGluc3RhbGxpbmcgdGhlIGFjcGktY2FsbC1ka21zIHBhY2thZ2Ug
b248YnI+DQomZ3Q7IFVidW50dSBhbmQgaXNzdWVzIHRoZSBmb2xsb3dpbmcgY2FsbDo8YnI+DQom
Z3Q7IDxicj4NCiZndDsgZWNobyAnXF9TQi5QQ0kwLkxQQzAuRUMwLkhLRVkuU1NTUyAweDEnIHwg
c3VkbyB0ZWUgL3Byb2MvYWNwaS9jYWxsPGJyPg0KJmd0OyA8YnI+DQomZ3Q7IEl0IHJldHVybmVk
IDAgKHdoaWNoIHNob3VsZCBtZWFuIHN1Y2Nlc3MpLCBidXQgUHJpdmFjeUd1YXJkIGlzIHN0aWxs
PGJyPg0KJmd0OyBPTi4gVGhlbiBJIHRyaWVkIHRvIGNhbGwgaXQgd2l0aCAweDA6PGJyPg0KJmd0
OyA8YnI+DQomZ3Q7IGVjaG8gJ1xfU0IuUENJMC5MUEMwLkVDMC5IS0VZLlNTU1MgMHgwJyB8IHN1
ZG8gdGVlIC9wcm9jL2FjcGkvY2FsbDxicj4NCiZndDsgPGJyPg0KJmd0OyBBbHNvIGdldHRpbmcg
MCBpbiByZXR1cm4uIFByaXZhY3lHdWFyZCBpcyBzdGlsbCBPTi48YnI+DQomZ3Q7IDxicj4NCiZn
dDsgQmFzZWQgb24gbXkgbGltaXRlZCB1bmRlcnN0YW5kaW5nIG9mIEFDUEkgYW5kIHRoZSBrZXJu
ZWwsIGF0IHRoaXM8YnI+DQomZ3Q7IHBvaW50IGl0IG1pZ2h0IGJlIGEgZmlybXdhcmUgaXNzdWU/
IChmd3VwZG1nciBzaG93cyB0aGF0IHRoZXJlIGlzIG5vPGJyPg0KJmd0OyBhdmFpbGFibGUgdXBk
YXRlcykgQnV0IGJhc2VkIG9uIG15IHJlYWRpbmcgYW5kIHVuZGVyc3RhbmRpbmcgb2Y8YnI+DQom
Z3Q7IHRoaW5rcGFkX2FjcGkuYywgdGhlIHBhcnRpY3VsYXIgQUNQSSBjYWxsIHRoYXQgSSBpc3N1
ZWQgaXMgYWxzbyBob3c8YnI+DQomZ3Q7IHRoZSBMaW51eCBkcml2ZXIgY3VycmVudGx5IG9wZXJh
dGVzIHRoZSBQcml2YWN5R3VhcmQgZmVhdHVyZSwgd2hpY2g8YnI+DQomZ3Q7IG1lYW5zIHRoZSBk
cml2ZXIgbWlnaHQgYWxzbyBiZSBhZmZlY3RlZCBieSB0aGlzIGlzc3VlLiBTbyBJJ20gaG9waW5n
PGJyPg0KJmd0OyBzb21lb25lIGNvdWxkIGhlbHAgbWUgZGVidWcgdGhpcyBmdXJ0aGVyLCBvciBw
b2ludCBvdXQgYW55dGhpbmcgdGhhdDxicj4NCiZndDsgSSdtIG5vdCB1bmRlcnN0YW5kaW5nIGNv
cnJlY3RseS48YnI+DQomZ3Q7IDxicj4NCiZndDsgVGhhbmtzITxicj4NCiZndDsgX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX188YnI+DQomZ3Q7IDxicj4NCiZn
dDsgaWJtLWFjcGktZGV2ZWwgbWFpbGluZyBsaXN0PGJyPg0KJmd0OyA8YnI+DQomZ3Q7IDxhIGhy
ZWY9Im1haWx0bzppYm0tYWNwaS1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQiIHRhcmdldD0i
X2JsYW5rIj5pYm0tYWNwaS1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQ8L2E+PGJyPg0KJmd0
OyA8YnI+DQomZ3Q7IDxhIGhyZWY9Imh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3Rz
L2xpc3RpbmZvL2libS1hY3BpLWRldmVsIiB0YXJnZXQ9Il9ibGFuayI+DQpodHRwczovL2xpc3Rz
LnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9pYm0tYWNwaS1kZXZlbDwvYT48bzpwPjwv
bzpwPjwvcD4NCjwvYmxvY2txdW90ZT4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvYm9keT4N
CjwvaHRtbD4NCg==

--_000_SEZPR03MB795996A1F0F4CA3A7DA69A638C922SEZPR03MB7959apcp_--


--===============5365259663282745629==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5365259663282745629==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============5365259663282745629==--


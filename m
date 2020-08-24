Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D15142500D4
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 24 Aug 2020 17:22:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kAEIG-00058w-KP; Mon, 24 Aug 2020 15:21:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Mario.Limonciello@dell.com>) id 1kAEIF-00058h-0D
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 24 Aug 2020 15:21:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lY4v7iU703F48H/durzY48VlH9eE81bSmGxZ9TXn/RM=; b=g8JUIklcPUyQVFHMw4YfAPsZZX
 QUtYDiEab4KLGCa2vOasWx5DU/+U6CUzaDBxwVe86d8G1DYhvFWslBBtdiQHDVCpqMFexh9EvLnXo
 uMf1l9AyioPee3wYX0r3Id+eXJ0lSofBIi3hdk07bPnkU0vIi3sOrYgpHM8lu0e9kb8I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lY4v7iU703F48H/durzY48VlH9eE81bSmGxZ9TXn/RM=; b=ezhHhlZjDbsQDNm8Em+94yJoUA
 TkkxcHlF72dhKV6sZqCmxQZrIHEk/jIdKdL3rQAcYDb2zJoC+I2kt6ETbcUWPkAJcSNHrcsvmc9nw
 sqU3HTgW8JiTyxm+08PC5kN0UUJDGXUx7zvuwYPlETtOni+PurkTvvjeWjjIDZ/w4MnQ=;
Received: from mx0b-00154904.pphosted.com ([148.163.137.20])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kAEI9-00H9t2-Vu
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 24 Aug 2020 15:21:54 +0000
Received: from pps.filterd (m0170396.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 07OFCnXU012227; Mon, 24 Aug 2020 11:21:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=lY4v7iU703F48H/durzY48VlH9eE81bSmGxZ9TXn/RM=;
 b=bNcMMcMzvoECc+ayTH4cNUPSZniJccYypLX9qnu2qt7+7xvBzBy7ZAgM4g0hnzwlIDVf
 TwZ3VOY7xWRfNTKfu1uLAQxuBoH4xFkv0XSc599rT25O9UDc4mGedK8i9x8lfTCqqD/R
 FyGxP08CXiMFAsoC3zAzE1qRNL4wjjRm+rzsQHeTvIWidxwaHVk1nNGNOlbvNG2wnL2W
 w+DK4RHVE3pL8GLf/mP+kLaDu/uGCo19uTv8Wvh1lCNFvLCB+5h0lqcpOx+Z+y/hEncH
 xSv5VHm358CLGw0G9VQ3xochE44I/gwroL6vguKrgoc1XdvL/A1k0kYwpFisJyA4LUID eA== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0b-00154904.pphosted.com with ESMTP id 332y6ww563-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 24 Aug 2020 11:21:33 -0400
Received: from pps.filterd (m0090351.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 07OFLTSc045111; Mon, 24 Aug 2020 11:21:32 -0400
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2107.outbound.protection.outlook.com [104.47.58.107])
 by mx0b-00154901.pphosted.com with ESMTP id 3345rf8c90-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 24 Aug 2020 11:21:30 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GiU2SmlCdnKz/xW6dQeIoSUCPYjeFWJkm8m43pmc1I+nAM1LxA9nIpEViTa9Gn2gIm14r2I+lww1qidnleImHKBcyI22OygQbd0bHBMlLwUUw2PG9zLKttvlwdHgk7B2sx/uW4SJJenvBiqZv/ZEOIBJArwZ/HSs0gc/C/jpaJey/tMv9uYrW48sPgSdsBYvE67SSescrpboMHTTDFAGmm0CfCmIVontcvGG360iuU+E7G82aiJJnu2yhZsIrDq/rZHjkAKtBSmM/POR4mkgjjjMgcoJqEDYCEtD9z5T2ibATvi+sYpMkgWu6WTdJXb66LegUSTHPgfJvlxHjcmeeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lY4v7iU703F48H/durzY48VlH9eE81bSmGxZ9TXn/RM=;
 b=Dh6ePIswv6U7GRrfHGd5zBZIJ2y8gCbSnp9hyUB9qxvsTqKvwcMDP7ln+AwE9PyIlGVAVCCddoW+PITza/gSNQsDxelb+Wb8la94m7Op7NFibyhF8gA/YO6UZM1ZACw/HrRH8Pp9qtDouc3FJ0WlvbqbqoZlGY45E/ofzWORCappIS7yVkgn1La3ljZSps//3swi4FylW4LE2iXHGnCmyvQFTvzk4xIM6Ot53tfYtgbCDUKJmx+2xZKwx2oLFIq3juauhJsRITyg1M/eKQ1GhHpH0RmS3h++JaC9m4WMcz9ZHFehq8p/JekvmAupmz4INaREAM14GcT8ShB/NAwBLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dell.com; dmarc=pass action=none header.from=dell.com;
 dkim=pass header.d=dell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Dell.onmicrosoft.com; 
 s=selector1-Dell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lY4v7iU703F48H/durzY48VlH9eE81bSmGxZ9TXn/RM=;
 b=drJxGCeJJeSZfi7Du8pq2x867Ccy5zytVncsR66/6+HKjVK/N33RWPKE4DLDWRFzRBagNMPADCcibmbXt/ubDZdLfTTaL1iCiojpwIIU7BfhY9d1iEAyXZXnpdHrOpIvjfKJaq32ZEZifzpuQ49eSOMIGFdswEHMLu2MarQbQ4U=
Received: from DM6PR19MB2636.namprd19.prod.outlook.com (2603:10b6:5:15f::15)
 by DM6PR19MB2716.namprd19.prod.outlook.com (2603:10b6:5:145::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.25; Mon, 24 Aug
 2020 15:20:29 +0000
Received: from DM6PR19MB2636.namprd19.prod.outlook.com
 ([fe80::f1c7:5bf4:a3b:ff40]) by DM6PR19MB2636.namprd19.prod.outlook.com
 ([fe80::f1c7:5bf4:a3b:ff40%6]) with mapi id 15.20.3305.026; Mon, 24 Aug 2020
 15:20:29 +0000
From: "Limonciello, Mario" <Mario.Limonciello@dell.com>
To: Mark Pearson <markpearson@lenovo.com>
Thread-Topic: [External] RE: [PATCH v2] platform/x86: thinkpad_acpi:
 performance mode interface
Thread-Index: AQHWd+QBvbgdvM4ZREOC8jacDgPt5KlC7TcAgAAHfwCAAAZQ8IAAAi4AgAAB9yCAAFkHAIAECv6w
Date: Mon, 24 Aug 2020 15:20:29 +0000
Message-ID: <DM6PR19MB26362A7F5A8749637EE8487EFA560@DM6PR19MB2636.namprd19.prod.outlook.com>
References: <markpearson@lenovo.com>
 <20200821175310.335873-1-markpearson@lenovo.com>
 <DM6PR19MB2636F1CFCE1E386D6E793E25FA5B0@DM6PR19MB2636.namprd19.prod.outlook.com>
 <1806c4ec-6788-bcc7-7e09-8e5274d2b9d5@lenovo.com>
 <DM6PR19MB26369308415B8235B3C9997EFA5B0@DM6PR19MB2636.namprd19.prod.outlook.com>
 <9e0c14a9-3b24-4b64-6d9e-b312d28dfd44@lenovo.com>
 <DM6PR19MB263621A07F59D91C8E2F7205FA5B0@DM6PR19MB2636.namprd19.prod.outlook.com>
 <52fc84b9-f87d-c91d-4d24-1db768c5c812@lenovo.com>
In-Reply-To: <52fc84b9-f87d-c91d-4d24-1db768c5c812@lenovo.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Enabled=True;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SiteId=945c199a-83a2-4e80-9f8c-5a91be5752dd;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Owner=Mario_Limonciello@Dell.com;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SetDate=2020-08-24T15:20:26.0779108Z;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Name=External Public;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_ActionId=cdeac5e9-dadd-4229-95c3-963bc250438c;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Extended_MSFT_Method=Manual
authentication-results: lenovo.com; dkim=none (message not signed)
 header.d=none;lenovo.com; dmarc=none action=none header.from=Dell.com;
x-originating-ip: [76.251.167.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 372fe41f-54db-4760-c063-08d848413c6f
x-ms-traffictypediagnostic: DM6PR19MB2716:
x-microsoft-antispam-prvs: <DM6PR19MB27168E808ED567CAFAAA4DA7FA560@DM6PR19MB2716.namprd19.prod.outlook.com>
x-exotenant: 2khUwGVqB6N9v58KS13ncyUmMJd8q4
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gJ67O/kc/d+vMoOU7tZvlUCwSjKkqJi6yDzzqecDajnCq5YmO+ZRGvnfJRhrBN6T2jD0jlTF80fNxaID5iERWojYdDR7L6vkkUP2s7gypepkJNWaAMRozKazQdfZfkSBfjwrbKiDFbktpE44l9QTs9q/hf0NN+QtE8r3qYD0Xn2Tr06+uxBW8KZakLEe+6jFfnrzsKghoUp6ECzzg7/d2RMFRQrTW1bFES/KgWYJ0HyxYK//5SstOsBkCL4aI35muELYBrplIAdcGLpdchQw1kIFZ7OrnsZt36KVxA77FYoARUmJswwSByLpyjZH8epfEAHZgRtEPawDnD+9G+Hkew==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR19MB2636.namprd19.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(376002)(366004)(39860400002)(396003)(136003)(83380400001)(4326008)(76116006)(54906003)(478600001)(71200400001)(2906002)(66446008)(66556008)(9686003)(66946007)(8936002)(786003)(316002)(64756008)(8676002)(86362001)(66476007)(55016002)(6506007)(53546011)(52536014)(26005)(186003)(33656002)(5660300002)(7696005)(6916009);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: BrajD5wv4QQHIcmG95ferr3IYQ9EaFP/qAS7Ku2JHcc2X2Ie1vrWEuNHzFf5x7sy9Zrnmz6r7Di0SSvy1KegFEghDqvkx3P91xpr1Wc6Cv1VbordG/IOEelM50SoMD1zb9VCBku81XKaOsWnDE8LrZ4H/IH4xc0BbSUx4blu6FJGf5nFC/X3leeuaz8mMBVXpKuqmanihtnunppNWWLxgAc3ZrSIOmIYZEhPjG+fmL8qOx8yrPMOH6VCp4X8V0I8alTMFqWO3UpbEOG1GGPAtFZiiBC8CtFGJ5zys8zpHuwYS9zyBhFoQoPm3qQ0ACTxromckLyUevHq/4DNovnVWPOQBr6Gyxlx5PZHeVVEJ2BaiwAKm1pO3e3R8Whofh3MM8yo+jBD4kZYurf3Lfa3I/eHlavc3r6B1cXTWKcI/lejhDKE5tG7MDBYGYEUUpF+U87u795IecfQpXIyXXmKO67+TvRoJROcRrH6N8t+XAOQsLxlIYRFutBYaIK1briCezTVn4CiS/maxReEBFDEGxdOrbo6vOrg6o7KnuslrKrp89OVCvRjstlY7yz+HepyjCZwLiyPa8nV4kr2VRqhSRa+/Djeo/rdSyotxGTueH1e06l5JQxN/9JvrQz75Fjysd044L/ScDAsXuCaUs5WnQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: Dell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR19MB2636.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 372fe41f-54db-4760-c063-08d848413c6f
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2020 15:20:29.5206 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 945c199a-83a2-4e80-9f8c-5a91be5752dd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zl2xNjPbUvCOY90Biy6jxN+vQZ+TFcTUijwW3l2UGwz9EFPFY0m2MTGOrnLCpajI0COYFlD5Uo3F6uo/kgcjCKkDx2hEcd2knIDQEiJl99k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR19MB2716
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-08-24_12:2020-08-24,
 2020-08-24 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0
 spamscore=0 clxscore=1015 priorityscore=1501 bulkscore=0 adultscore=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 mlxlogscore=999 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2008240123
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 mlxlogscore=999 phishscore=0
 adultscore=0 spamscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2008240123
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.137.20 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -1.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1kAEI9-00H9t2-Vu
Subject: Re: [ibm-acpi-devel] [External] RE: [PATCH v2] platform/x86:
 thinkpad_acpi: performance mode interface
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
Cc: "ibm-acpi-devel@lists.sourceforge.net"
 <ibm-acpi-devel@lists.sourceforge.net>,
 "bnocera@redhat.com" <bnocera@redhat.com>,
 "ibm-acpi@hmh.eng.br" <ibm-acpi@hmh.eng.br>, Nitin Joshi <njoshi1@lenovo.com>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

> On 8/21/2020 4:43 PM, Limonciello, Mario wrote:
> >> -----Original Message----- From: Mark Pearson
> >> <markpearson@lenovo.com> Sent: Friday, August 21, 2020 15:06
> >>
> >> On 8/21/2020 4:00 PM, Limonciello, Mario wrote: <snip>
> >>>>>> + +The sysfs entry provides the ability to return the
> >>>>>> current status and to set the +desired mode. For example::
> >>>>>>  + +        echo H >
> >>>>>> /sys/devices/platform/thinkpad_acpi/dytc_perfmode + echo M
> >>>>>>> /sys/devices/platform/thinkpad_acpi/dytc_perfmode + echo
> >>>>>> L > /sys/devices/platform/thinkpad_acpi/dytc_perfmode +
> >>>>>
> >>>>> I was thinking about this some more, do you actually want
> >>>>> another mode that "disables" this feature?   IE "O" turns it
> >>>>>  off an calls DYTC_DISABLE_CQL.
> >>>>>
> >>>>> For example if a user wanted to test the recently landed code
> >>>>> in thermald 2.3 and compare performance between the two it
> >>>>> seems like this and that "might" fight. As an outsider
> >>>>> looking in - I of course may be wrong too here.
> >>>>>
> >>>>> If at some point in the future thermald does a better job
> >>>>> than this implementation you might also want an "out" to let
> >>>>>  thermald or another piece of userland turn this off if it's
> >>>>>  in the picture.
> >>>>>
> >>>> I'm still digging into this one. Right now I haven't found a
> >>>> good clean way of just disabling the firmware. Currently when
> >>>> thermald goes in and tweaks the CPU power registers it has the
> >>>>  effect of overriding the FW anyway - but I appreciate that's
> >>>> not quite the same as actually doing it explicitly.
> >>>>
> >>>
> >>> What about a modprobe parameter to disable at least?  That would
> >>>  at least make it pretty easy to make a change, reboot and
> >>> compare with thermald (or other software) without disabling the
> >>> rest of the functionality of the thinkpad_acpi driver.
> >>>
> >> The problem is I don't have a good way to disable the firmware
> >> (that I know of yet) so a modprobe parameter wouldn't really do
> >> much. I guess it could skip providing the sysfs entry points - but
> >>  the FW will still be there doing it's thing, so I'm not sure I see
> >>  the benefit of that. At least the sysfs entry point gives a bit
> >> more insight into what is going on. Let me know if I'm missing
> >> something obvious.
> >>
> >
> > Oh so it's not actually the driver loading tells the firmware it's
> > supposed to work this way.  The firmware actually detects "I'm
> > running on Linux, so I'll do this differently"?
> >
> Right. This patch is just providing a more friendly interface so user
> space can see what is going on and be able to do control of the
> different modes without the need for hotkeys.
> 
> Afraid I don't have much insight into the nitty gritty details of
> exactly how that works - I believe it's related to detecting the use of
> DPTF but the details aren't shared with me because of NDA's. As a
> thought it's quite possible (probable?) that if thermald is using DPTF
> the firmware will automatically disable itself. Proving that might be
> tricky - I'll see if the firmware team have any ideas.
> 

Right - it's a reverse engineered implementation done in thermald and there
are still some missing items.  So your comment makes perfect sense to me now,
and if/when those other things are added this may change and it will make
sense to offer a way to turn this off at that time.


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A7F24E237
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 21 Aug 2020 22:44:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1k9Dt9-0006Pp-0H; Fri, 21 Aug 2020 20:43:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Mario.Limonciello@dell.com>) id 1k9Dt7-0006Pi-NH
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 21 Aug 2020 20:43:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y1CPZbiRJiX+yhWf78NUN6jkCg327QMsWBFENi2Tsx0=; b=Ht/9fEJGeWov7VW5yhSVphEFVX
 dwP2w5PHbQToyPFmbhr2vdoZa84JR/8G1pi/3uBpYR5GZwGH4Tb28kq/TV/tcrH5LSjmgZxwBPMnc
 tMogFxwTBy3PaO/q9A0ZvE1bq5RQQRs8zOMZuQg40paz64G+1VudFUtIgxNGp/WRuGiQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Y1CPZbiRJiX+yhWf78NUN6jkCg327QMsWBFENi2Tsx0=; b=Nafl+K9Tmys6sqqchshSzziwsj
 /oPVulRZTnRh8BVAF3eqASrHUOp8ytPHZ+GPeVGG/yuS2OvVcbcYQ1PVCiUGGxNvQmWdOSujp9VqG
 nGmekarsJXB29tYO8WAmLOGCWefmUrWgjq6X91EOjd9QRWPHCDAr5zfwa9qkII6bu5fQ=;
Received: from mx0a-00154904.pphosted.com ([148.163.133.20])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k9Dt4-00EpOQ-8X
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 21 Aug 2020 20:43:49 +0000
Received: from pps.filterd (m0170391.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 07LKfif5001973; Fri, 21 Aug 2020 16:43:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=Y1CPZbiRJiX+yhWf78NUN6jkCg327QMsWBFENi2Tsx0=;
 b=GP8VBlt5pFgIpZZczt/1Wuqj+Z3OjMMpkJjSGoaNH+iDKG2PyaeoPZ/3eaLNAfkhizip
 GivTE4D+ke7WnRqsc201XnlULhDT7HFdO0cMimkoVNQQ08ChgfR4YyM7a1xkbD+7MCMB
 2MNBJ51zOk0HFjGdcNvK2NwRSWKZTfE/yiTYGWLRHY3XBnatd4C/x9Ya8795e3dwU/6n
 C1LtRpj4ISMYlRXzUdkA5b/CWv4Qm4/4Am5wYw+USM28pRcQ87gf/M/H36cpe1uDXAr0
 xiZvhJy2H+zu7FsZ/t8MlBus8jxGFbpgOoCIo+JboJEsGNWdovI8HCievgQV2ch0uJwX Vg== 
Received: from mx0a-00154901.pphosted.com (mx0b-00154901.pphosted.com
 [67.231.157.37])
 by mx0a-00154904.pphosted.com with ESMTP id 3304fsg4ck-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 21 Aug 2020 16:43:26 -0400
Received: from pps.filterd (m0089484.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 07LKc3CM005889; Fri, 21 Aug 2020 16:43:25 -0400
Received: from nam04-sn1-obe.outbound.protection.outlook.com
 (mail-sn1nam04lp2050.outbound.protection.outlook.com [104.47.44.50])
 by mx0b-00154901.pphosted.com with ESMTP id 332fk5wcx7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 21 Aug 2020 16:43:25 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TymZr5qkZLxt2WixNnX97clZiCaeEIrnv+rtmrr9wH89fYBnz8lGnldx4maAbDOmI6s3Gvgsu2oq2LAz1/Zzz94AxphZ9XYZDoOZkWz1+dKkjYNYndkpT3Y520BJabznujETk7PuJ+KxkH/J7iG/sp01072EkEazVg6GN0AKAjeGqa8hHBtpxWcI/8OqWNk43lphiYA7N/ZtLt98YKAkhaJ25pBB4T3THmXQBomIzpJYq7Oqgi4hL1d9vzUUxxXJEidkjaF4N4S25U9bJMA6uZy3tZFIX2AoOEoO9Yp+HxPdKqZcA0lrXgpXP61kdUa6f9UVhaOIDFthSd41j7PsjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y1CPZbiRJiX+yhWf78NUN6jkCg327QMsWBFENi2Tsx0=;
 b=I/cgkynrL77pNGFcJyz/xkTRfCPqgfhsbLiBHIEsTAfCIzRMhFE697gKHEckpzbnweY/0EUokMVGltz1bECY+DjIF9mlPzL561QD2YAt+81BGZhTost6kqHid4OpxUo6smJgVxnip03O7sfHUisfCixUkzYXC/bLlqQtYnQbYe9elTnzxuH8ioVIh1cYa/MKMr+AqsX6BWfHYB9RXaimjFpUrgod3kMaip4sJ8ml4FpDZTH2c93Kiy/yhLOSoiTOoJJn9dQiX12vS/TnjzdzNr5zDhanSar7iDSb289XTUlqyrN+OGhX/nTqOi9aPdIsTH7p33/npAp4Dutwu1ez0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dell.com; dmarc=pass action=none header.from=dell.com;
 dkim=pass header.d=dell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Dell.onmicrosoft.com; 
 s=selector1-Dell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y1CPZbiRJiX+yhWf78NUN6jkCg327QMsWBFENi2Tsx0=;
 b=CWqKREKS7CHg9q7c+DcndtOdxAnXc+K8WRwd96PUvStk6VPwaC1IGdExdCfddl16NG/IFx02AZnOAxknAz65/PnwudBwozkQn1aYMjo8dxcirRNpoHkVtwQz6Lzopfj1RuWQcTsqaXmEYerUMKCpD1OoNeBjujjJGxWR6G5ePU8=
Received: from DM6PR19MB2636.namprd19.prod.outlook.com (2603:10b6:5:15f::15)
 by DM6PR19MB3146.namprd19.prod.outlook.com (2603:10b6:5:6::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3305.25; Fri, 21 Aug 2020 20:43:24 +0000
Received: from DM6PR19MB2636.namprd19.prod.outlook.com
 ([fe80::f1c7:5bf4:a3b:ff40]) by DM6PR19MB2636.namprd19.prod.outlook.com
 ([fe80::f1c7:5bf4:a3b:ff40%6]) with mapi id 15.20.3305.024; Fri, 21 Aug 2020
 20:43:24 +0000
From: "Limonciello, Mario" <Mario.Limonciello@dell.com>
To: Mark Pearson <markpearson@lenovo.com>
Thread-Topic: [External] RE: [PATCH v2] platform/x86: thinkpad_acpi:
 performance mode interface
Thread-Index: AQHWd+QBvbgdvM4ZREOC8jacDgPt5KlC7TcAgAAHfwCAAAZQ8IAAAi4AgAAB9yA=
Date: Fri, 21 Aug 2020 20:43:24 +0000
Message-ID: <DM6PR19MB263621A07F59D91C8E2F7205FA5B0@DM6PR19MB2636.namprd19.prod.outlook.com>
References: <markpearson@lenovo.com>
 <20200821175310.335873-1-markpearson@lenovo.com>
 <DM6PR19MB2636F1CFCE1E386D6E793E25FA5B0@DM6PR19MB2636.namprd19.prod.outlook.com>
 <1806c4ec-6788-bcc7-7e09-8e5274d2b9d5@lenovo.com>
 <DM6PR19MB26369308415B8235B3C9997EFA5B0@DM6PR19MB2636.namprd19.prod.outlook.com>
 <9e0c14a9-3b24-4b64-6d9e-b312d28dfd44@lenovo.com>
In-Reply-To: <9e0c14a9-3b24-4b64-6d9e-b312d28dfd44@lenovo.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Enabled=True;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SiteId=945c199a-83a2-4e80-9f8c-5a91be5752dd;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Owner=Mario_Limonciello@Dell.com;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SetDate=2020-08-21T20:43:22.9250893Z;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Name=External Public;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_ActionId=d4b8ace1-ae17-4b24-ad5d-335e93279632;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Extended_MSFT_Method=Manual
authentication-results: lenovo.com; dkim=none (message not signed)
 header.d=none;lenovo.com; dmarc=none action=none header.from=Dell.com;
x-originating-ip: [76.251.167.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 14a4d8fe-5e86-4d8d-8cf0-08d84612d97e
x-ms-traffictypediagnostic: DM6PR19MB3146:
x-microsoft-antispam-prvs: <DM6PR19MB3146CF78DCFE171BFEC29C16FA5B0@DM6PR19MB3146.namprd19.prod.outlook.com>
x-exotenant: 2khUwGVqB6N9v58KS13ncyUmMJd8q4
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QjWCcvCOIf6c+NZyw8VH0KvftD3rejEiIiFF8O0gFjnOfz/RxihHXesVkeS+wB4tqVgZvV3C6mHCQ00bNQBGiO2PoGu1kYK51cEQ5cDDfK0YkacNCAgMzfcc79CpJUmw31h//+2nFIsKz7Z2eXixrbMTllKnjbNuqyPbYZxMJJEnLarneWIxTM7/jjGPC5pbg8yjgqm0nCHrxsmysDV+MdcVyB+yYA1HBxaJasNHaSOHT5tEALJMLiuIuBcvpS+JBuLyZjfTg8DbT++ZGyBM+P9ZV3bXUXPynebn64Nfwcl642sFo95hN/YkI9/yxCyjAve+GIiGX/KlqRrybCKh7A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR19MB2636.namprd19.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(39860400002)(376002)(136003)(396003)(366004)(316002)(26005)(8936002)(86362001)(33656002)(71200400001)(478600001)(186003)(9686003)(55016002)(786003)(54906003)(76116006)(64756008)(66446008)(66556008)(52536014)(4326008)(66946007)(8676002)(2906002)(6916009)(53546011)(7696005)(66476007)(6506007)(83380400001)(5660300002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: t7uj+Tku8umN9EUkl/eMvjzEJo9LyUu2KVuxFgOTzkxxrn+Z9o6LKveXqu+6wfWeiCFwYKuuiluur/E+ohjl5Cln+3Hl0FWMBqJeR74nRdowWavVx4WVaE5IKSGtf7v1JYeZ6lYTJctB+ZkUGPItf4OootJ0byADtOJpPIe56CeyWT57vAafHFXcNv52ZJZH3bGfaqS3VHOODZhMBXHNWmly6sX2KsMAoNCywAlfeouTKqEnzp6kfzPcQcmv4rCqBSYwAfLpgiZTeKeQvwGLkP737UqUrv7GqG0GljanO0OHzPbajvfxbTdhHM36yFYj0EoN1OjZZyZ4UUrUzYsRFAp52rjfYr66ISXfjTUEYO4IqGnlNus4pUork67XpKq8i9twX2RXjONA3zQpDgkyAdTPQx9M7purcCRo5arEe56IvB1UMh22gH0uB4snJfP+om7AWUnudId+N9PfO0pqo3sUBlGA2lgGn1HuI0C3A5V3h8BmtntTlajZmsMPfkZP3aRSUIZted+7qgCdbh33G1+HKqYcVzMcR1QVP8DYJ7/3P0MN++HVQ2XCzOMxZ5/vKo6fq3pm5p7ZpTKnGoqmzZ6fiTufMpfaTWzMCGOrEkjRTYkkdq0AxlBN5ysvdsx86gVgHUp6CQiUfYNM5+0WzQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: Dell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR19MB2636.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14a4d8fe-5e86-4d8d-8cf0-08d84612d97e
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2020 20:43:24.3741 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 945c199a-83a2-4e80-9f8c-5a91be5752dd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iBZnc6iqFvJU37efwwqrQt1WX/vG3D9s7on+xZX4POH4m4UlSIznDlW0L2xqHOk7ZW3PLTfIRxdgFvQ7+1DiGVk9pxNZBiX/j1OZ9nxj6h0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR19MB3146
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-08-21_10:2020-08-21,
 2020-08-21 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 adultscore=0 suspectscore=0 impostorscore=0 spamscore=0 lowpriorityscore=0
 bulkscore=0 mlxscore=0 clxscore=1015 phishscore=0 mlxlogscore=999
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2008210192
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 phishscore=0 malwarescore=0
 suspectscore=0 mlxlogscore=999 adultscore=0 bulkscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2008210193
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: hmh.eng.br]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.133.20 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1k9Dt4-00EpOQ-8X
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

> -----Original Message-----
> From: Mark Pearson <markpearson@lenovo.com>
> Sent: Friday, August 21, 2020 15:06
> To: Limonciello, Mario
> Cc: ibm-acpi-devel@lists.sourceforge.net; platform-driver-x86@vger.kernel.org;
> ibm-acpi@hmh.eng.br; bnocera@redhat.com; Nitin Joshi
> Subject: Re: [External] RE: [PATCH v2] platform/x86: thinkpad_acpi:
> performance mode interface
> 
> 
> [EXTERNAL EMAIL]
> 
> On 8/21/2020 4:00 PM, Limonciello, Mario wrote:
> <snip>
> >>>> + +The sysfs entry provides the ability to return the current
> >>>> status and to set
> >>>> the +desired mode. For example:: + +        echo H >
> >>>> /sys/devices/platform/thinkpad_acpi/dytc_perfmode +        echo
> >>>> M > /sys/devices/platform/thinkpad_acpi/dytc_perfmode +
> >>>> echo L > /sys/devices/platform/thinkpad_acpi/dytc_perfmode +
> >>>
> >>> I was thinking about this some more, do you actually want another
> >>> mode that "disables"
> >>> this feature?   IE "O" turns it off an calls DYTC_DISABLE_CQL.
> >>>
> >>> For example if a user wanted to test the recently landed code in
> >>> thermald 2.3
> >>> and compare performance between the two it seems like this and
> >>> that "might" fight.
> >>> As an outsider looking in - I of course may be wrong too here.
> >>>
> >>> If at some point in the future thermald does a better job than
> >>> this implementation you
> >>> might also want an "out" to let thermald or another piece of
> >>> userland turn this off if it's in the picture.
> >>>
> >> I'm still digging into this one. Right now I haven't found a good
> >> clean way of just disabling the firmware. Currently when thermald
> >> goes in and tweaks the CPU power registers it has the effect of
> >> overriding the FW anyway - but I appreciate that's not quite the
> >> same as actually doing it explicitly.
> >>
> >
> > What about a modprobe parameter to disable at least?  That would at
> > least make it pretty easy to make a change, reboot and compare with
> > thermald (or other software) without disabling the rest of the
> > functionality of the thinkpad_acpi driver.
> >
> The problem is I don't have a good way to disable the firmware (that I
> know of yet) so a modprobe parameter wouldn't really do much. I guess it
> could skip providing the sysfs entry points - but the FW will still be
> there doing it's thing, so I'm not sure I see the benefit of that. At
> least the sysfs entry point gives a bit more insight into what is going on.
> Let me know if I'm missing something obvious.
> 

Oh so it's not actually the driver loading tells the firmware it's supposed
to work this way.  The firmware actually detects "I'm running on Linux, so I'll
do this differently"?



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

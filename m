Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF7022E3B2
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 27 Jul 2020 03:44:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jzsBT-0005c4-3V; Mon, 27 Jul 2020 01:44:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Mario.Limonciello@dell.com>) id 1jyLIe-0000UA-7H
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 22 Jul 2020 20:25:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qEEC7MRKlPnzIgkvd74lB/Yqiq0cfMPkrcNgdsIpr9U=; b=e4M5wQNisSVLGV8yv5yN+bIAxu
 B4q/VqIEQHBAU+9PV/qva2HA/VYVRMmjgmSFQ+2iV6FSQZt+ooLPk/FFFV4gXwj8YMiMUVWF8d+OO
 D4imtbAXcoCSE8du/8NjEBwCq68QmULgZaz5B6fv1O6lPDDqBfGxVCxekhueDu4pZMLA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qEEC7MRKlPnzIgkvd74lB/Yqiq0cfMPkrcNgdsIpr9U=; b=PzPtc7M1rh87nWFZS/yqMcp9Pc
 27YxZgyBJzIv8yJE2DwlVIZnYmgAgX/0UHWZhQ1msP2iMktm1zrmV28gvcFSpy6nfacBJ70l9WZlL
 E8ZxrWNN0WcefgaCW9M0pkLkiBzUXoPOtgtjGGjowuUEB2rv7MrPbMdH4ZjrAy8F8DOU=;
Received: from mx0b-00154904.pphosted.com ([148.163.137.20])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jyLIa-00H2Vt-9Q
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 22 Jul 2020 20:25:12 +0000
Received: from pps.filterd (m0170394.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 06MIdxWR025179; Wed, 22 Jul 2020 14:46:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=qEEC7MRKlPnzIgkvd74lB/Yqiq0cfMPkrcNgdsIpr9U=;
 b=djUiU4RWdKzlmDiiY/IsjwJ4Yk6ft1Nn664nz8K9g/9rNuPJuB/Zl13kac06AJYaxWDN
 Jfz6kzl5NXnX7P5+FOyFwqVj5u3Mtx+HCgiSv030VDSdxtw2Ve1TYivhD0uZbUJwc3Wf
 gYNzluy2LyrCjI9HpT+chnpCdHL3rdDLOwG9qF3HRo75AS+/Mo4Af/TJ4dNKG7jvA+rR
 /z9lf1rgmQi2VRKEBgVcoBh1W7Hje/UP4KZDuItM8LmoSkFvZ1vL7kR15sYQ4Gg81f+t
 WEXKj1w6rweDKVwimYpcqVXfjuKdFH5fDdPe2Gdd/s+FRELhTqa5XA0IXK47e+Q0XyLa UQ== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0b-00154904.pphosted.com with ESMTP id 32c1eawykh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Jul 2020 14:46:18 -0400
Received: from pps.filterd (m0142693.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 06MIevGW195293; Wed, 22 Jul 2020 14:46:17 -0400
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2173.outbound.protection.outlook.com [104.47.58.173])
 by mx0a-00154901.pphosted.com with ESMTP id 32etpprb89-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 22 Jul 2020 14:46:17 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RdONSu6JfYU7/6+wfIHKwJsnS/apYlWn6otlbLzt6OpLBFic8b1oqgiiudkkA7vjg8zirRKNNmjTwSyOwZZXgcZ16IIq/qKskE63A1eUsrpvqFn9/PK7ttLFB8I6fd1MmiVEBl5LsTnRySGHAf1fYGmUvkKfaIoAaEPE4sJz6BeAtjJJ6I22E5VvvBgne56V8z5QfVRQwFHMzK9Pv39alszeUbOzGTBY3+l5DkMCmvEqK4NZtaLsTbtyNiHOr8bkB3O9YvJ0mtqNeMG7c1h6OcX++xy/LFEjAt0erd6mlpkB+zkH9Zd8NE90mUoO9rLkKFlGppYP8J1AzRCMue8RCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qEEC7MRKlPnzIgkvd74lB/Yqiq0cfMPkrcNgdsIpr9U=;
 b=ZwtD6/x/M0v5ntVOo26MWzMZTfv0UZEbFqq1pggn4SY+4+9gUePWXRR5x8ypUuQV98wBAX38TZT06Jbdnp4lKQaovPKh92QhaL3AbA1V/4dP5kVutSVe1azF9XTTCl2icdADkyJ+F779OdLrzhDqxgSHfZQ8RyQm7NDQAjA2c0eteLpE8axftimgQt9+O4v79Gnghbf9UShwY2yz+Zf1MKIZt0prEQc1rq0T8DmXaeAJxxszaxkGe1SIQQwKH83QH1ui5tqKRuMg4jH7zvJzypx+11su1x2RdcItrofjlVd9FcdydjQMLckK1FycSfSkQnXrFxYd09I9wYsVSpGBtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dell.com; dmarc=pass action=none header.from=dell.com;
 dkim=pass header.d=dell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Dell.onmicrosoft.com; 
 s=selector1-Dell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qEEC7MRKlPnzIgkvd74lB/Yqiq0cfMPkrcNgdsIpr9U=;
 b=Ty5Ox5VpiNnmKLACIiDkbweaXBIAnRbXrLADm9RBworMQij6w8ud/sT4XHxvTQR6sepWnJ1IKR+sa2N57t1IDqVKoN0YkLNsUL57uGQde5wKvVOAdW+hWcLpuzCHJbGS6G0njBHvoljBGlr6h2buznkwGOxnUnr/St2HsyJo3sc=
Received: from DM6PR19MB2636.namprd19.prod.outlook.com (2603:10b6:5:15f::15)
 by DM5PR1901MB2023.namprd19.prod.outlook.com (2603:10b6:4:a6::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3195.25; Wed, 22 Jul
 2020 18:46:15 +0000
Received: from DM6PR19MB2636.namprd19.prod.outlook.com
 ([fe80::f1c7:5bf4:a3b:ff40]) by DM6PR19MB2636.namprd19.prod.outlook.com
 ([fe80::f1c7:5bf4:a3b:ff40%6]) with mapi id 15.20.3195.022; Wed, 22 Jul 2020
 18:46:15 +0000
From: "Limonciello, Mario" <Mario.Limonciello@dell.com>
To: Mark Pearson <markpearson@lenovo.com>
Thread-Topic: [PATCH] platform/x86: thinkpad_acpi: performance mode interface
Thread-Index: AQHWYEtB2AZ16m+5BkiCkmlUDRcurKkT57Ig
Date: Wed, 22 Jul 2020 18:46:15 +0000
Message-ID: <DM6PR19MB263650F7DC4B6680A5EFC5DAFA790@DM6PR19MB2636.namprd19.prod.outlook.com>
References: <markpearson@lenovo.com>
 <20200722171108.65185-1-markpearson@lenovo.com>
In-Reply-To: <20200722171108.65185-1-markpearson@lenovo.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Enabled=True;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SiteId=945c199a-83a2-4e80-9f8c-5a91be5752dd;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Owner=Mario_Limonciello@Dell.com;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SetDate=2020-07-22T18:20:22.4879601Z;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Name=External Public;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_ActionId=1f61758f-9ff3-4dec-ac0e-4095e49ae597;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Extended_MSFT_Method=Manual
authentication-results: lenovo.com; dkim=none (message not signed)
 header.d=none;lenovo.com; dmarc=none action=none header.from=Dell.com;
x-originating-ip: [76.251.167.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7a4c1c79-1617-4c91-b42c-08d82e6f834f
x-ms-traffictypediagnostic: DM5PR1901MB2023:
x-microsoft-antispam-prvs: <DM5PR1901MB20232A0DE82C7BFD24DFAADAFA790@DM5PR1901MB2023.namprd19.prod.outlook.com>
x-exotenant: 2khUwGVqB6N9v58KS13ncyUmMJd8q4
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qdcOTGz58J93ysK9TY6apG/tNgHbp6ZhlaDHltUfVsAqn7DQCFoXdQ40eYM7Hk9BX6oZ36NGEnPIGYDFrKA4JC4Cza1d0sO7USb7hkyTf1fXOLLFm+cC7uCfW2lH2FoYpRp0bASchkE2mKd9TilzLCEphYoUrh0xCSzPp6EbUbajWpRPh0fN0koxGC1v5RXcchqbG6unRnTuQ4DF7aiaEwzVJ1vK1r3Xp7e58iJGJChXOnWkK+9Nxj+98Vza6wKm4Nz2DF0Jxh9BIBeIkP2BUGvU3wtBSyZtwHy+yzLxJRWd96FIX41upYOigLE9ls7pw8EYYrEUGD1DbBIkoyLeP3wafyOGmRBFvO8EkcAULkYqC1SB2NwxAE1S4vbp/tSv7j/FeYfR8UmPsmQfIkvjGA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR19MB2636.namprd19.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(396003)(346002)(376002)(366004)(39860400002)(786003)(8936002)(316002)(54906003)(478600001)(71200400001)(52536014)(4326008)(186003)(2906002)(26005)(966005)(30864003)(9686003)(8676002)(64756008)(66556008)(66476007)(66946007)(76116006)(33656002)(6506007)(7696005)(83380400001)(55016002)(5660300002)(6916009)(86362001)(66446008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: VXfpZOeY9RPw5lH6pqsIRrq0ckLUWnyS0cNfPz+ShQ0QMgSW3Wu1kFH4VY5eNbFLq9AdIkPscjCOXz2SnUW4ppJXKP74kW4evLWe9ZarOj2CbP4Dr1+pn31k5MQcX3HlSHR2h3qUwJPGIu1dc1ZouEdzSpvwbl3jTKT/kM1iq1aroXm/rtc9JTm/bnstnfvCtewCuw+3QuC8vZuBl73y2/qEy2/CbDE1EZ5O8xFDVC1Eqxpb6xR/pNTvk67gDyojo5KeQg475H0Eyb1KCIk7+ZIZg/DNhRh6cS2aagjZ8YlEDziMAfOV3vfJ/Yp2kNkr2KA+QUc/nsptpWmnhHcN9PAPI9nBU5epf6GFFzpPn7SdlSyR2DisUMHl7KmKvvkhr3KwLQGoUsM1PXp53tA/u4GthceD0kRyS8cC0xou/mDW4undbJcbffEbh6p6GT60KoRMOBsHJ8f4mymlYBspxhNFeprGhYD3bN6FzJi3F54iXqZfEP0sPGKZISRwLHLa
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: Dell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR19MB2636.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a4c1c79-1617-4c91-b42c-08d82e6f834f
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2020 18:46:15.0692 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 945c199a-83a2-4e80-9f8c-5a91be5752dd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HQ2vQzAqi0wEe+BaMPP2nhDoj/H/vcF8pG5oeV19mhIslni2CfJ+UtWQtcizXwTvlf9/2rRLbzJmwjAPNkPqFfXWcq5cof18RnsYikGBTB4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1901MB2023
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-07-22_10:2020-07-22,
 2020-07-22 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0
 priorityscore=1501 spamscore=0 phishscore=0 mlxscore=0 lowpriorityscore=0
 suspectscore=0 mlxlogscore=999 impostorscore=0 bulkscore=0 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007220119
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 adultscore=0 spamscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 mlxlogscore=999 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007220119
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.137.20 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lenovo.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jyLIa-00H2Vt-9Q
X-Mailman-Approved-At: Mon, 27 Jul 2020 01:43:54 +0000
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi:
 performance mode interface
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
Cc: "bberg@redhat.com" <bberg@redhat.com>,
 "ibm-acpi@hmh.eng.br" <ibm-acpi@hmh.eng.br>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 "ibm-acpi-devel@lists.sourceforge.net" <ibm-acpi-devel@lists.sourceforge.net>,
 Nitin Joshi <njoshi1@lenovo.com>, "bnocera@redhat.com" <bnocera@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

> 
> Lenovo Thinkpad platforms with DYTC version 5 and newer have enhanced
> firmware to provide different performance/thermal modes.
> 
> The modes can be controlled by hotkeys (FN+H, FN+M, FN+L) to switch
> the operating mode between three different modes.
> 
> H - High performance. Maximum power is available and the temperature is
> allowed to increase to the maximum for the platform.
> M - Medium performance (aka balance). In this mode power will be limited
> and the laptop will have a lower maximum temperature.
> L - Low performance (aka quiet). In this mode power consumption is reduced
> and the device will be cooler.
> 
> High performance mode is only available when the device is in 'desk mode'.
> If the device detects that it is on a lap then it will automatically drop
> into medium mode to maintain a safer operating temperature.
> 
> This patch provides an interface to determine the current mode and to also
> allow the setting of the mode through the dytc_perfmode sysfs entry. This
> can be used by userspace for improved control.
> 
> Reviewed-by: Nitin Joshi <njoshi1@lenovo.com>
> Signed-off-by: Mark Pearson <markpearson@lenovo.com>
> ---
>  .../admin-guide/laptops/thinkpad-acpi.rst     |  35 +++
>  drivers/platform/x86/thinkpad_acpi.c          | 209 +++++++++++++++++-
>  2 files changed, 235 insertions(+), 9 deletions(-)
> 
> diff --git a/Documentation/admin-guide/laptops/thinkpad-acpi.rst
> b/Documentation/admin-guide/laptops/thinkpad-acpi.rst
> index 2e9d62903ead..d5fef0bb562b 100644
> --- a/Documentation/admin-guide/laptops/thinkpad-acpi.rst
> +++ b/Documentation/admin-guide/laptops/thinkpad-acpi.rst
> @@ -52,6 +52,7 @@ detailed description):
>  	- LCD Shadow (PrivacyGuard) enable and disable
>  	- Lap mode sensor
>          - Palm sensor (aka psensor)
> +        - Thermal mode status and control
> 
>  A compatibility table by model and feature is maintained on the web
>  site, http://ibm-acpi.sf.net/. I appreciate any success or failure
> @@ -1466,6 +1467,40 @@ determine if the sensor is not installed or not. On
> these platforms the
>  psensor state will always be reported as true to avoid high power being used
>  incorrectly.
> 
> +DYTC Thermal mode status and control
> +------------------------------------
> +
> +sysfs: dytc_perfmode
> +
> +Lenovo Thinkpad platforms with DYTC version 5 and newer have enhanced
> firmware to
> +provide improved performance control.
> +
> +The firmware can be controlled by hotkeys (FN+H, FN+M, FN+L) to switch the
> +operating mode between three different modes. This sysfs node provide a
> better
> +interface for user space to use

So is userspace also notified in some way when you use the hotkey to change, or
is the event usurped by the EC?  Is this by the event TP_HKEY_EV_THM_CSM_COMPLETED?

You might consider to mention what other interfaces will conflict with this
and document them and/or artificially block them when this is loaded to prevent
such a conflict.

> +
> +The modes available are:
> +
> +H - High performance. Maximum power is available and the temperature is
> +allowed to increase to the maximum for the platform.
> +
> +M - Medium performance (aka balance). In this mode power will be limited and
> +the laptop will remain cooler.
> +
> +L - Low performance (aka quiet). In this mode power consumption is reduced
> and
> +the device will be cooler and quieter
> +
> +Note: High performance mode is only available when the device is in
> 'deskmode'. If
> +thde device detects that it is on a lap then it will automatically drop into

the

> medium
> +mode to maintain a safer operating temperature.

I don't see an explicit notification path for this, how will userspace know about it?

Doesn't it need some sort of change uevent?
Or is this implied by the event TP_HKEY_EV_THM_CSM_COMPLETED?

> +
> +The sysfs entry provides the ability to return the current status and to set
> the
> +desired mode. For example::
> +
> +        echo H > /sys/devices/platform/thinkpad_acpi/dytc_perfmode
> +        echo M > /sys/devices/platform/thinkpad_acpi/dytc_perfmode
> +        echo L > /sys/devices/platform/thinkpad_acpi/dytc_perfmode

Doesn't this need ABI documentation submitted as part of the patch?

> +
>  EXPERIMENTAL: UWB
>  -----------------
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c
> b/drivers/platform/x86/thinkpad_acpi.c
> index 40f2e368fdf9..5aebaf1718b1 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -9799,10 +9799,33 @@ static struct ibm_struct lcdshadow_driver_data = {
>   * DYTC subdriver, for the Lenovo lapmode feature
>   */
> 
> +#define DYTC_CMD_QUERY        0 /* To get DYTC status - enable/revision */
> +#define DYTC_CMD_SET          1 /* To enable/disable IC function mode */
>  #define DYTC_CMD_GET          2 /* To get current IC function and mode */
> -#define DYTC_GET_LAPMODE_BIT 17 /* Set when in lapmode */
> +#define DYTC_CMD_RESET    0x1ff /* To reset back to default */
> +
> +#define DYTC_QUERY_ENABLE_BIT 8  /* Bit 8 - 0 = disabled, 1 = enabled */
> +#define DYTC_QUERY_SUBREV_BIT 16 /* Bits 16 - 27 - sub revisision */
> +#define DYTC_QUERY_REV_BIT    28 /* Bits 28 - 31 - revision */
> +
> +#define DYTC_GET_FUNCTION_BIT 8  /* Bits 8-11 - function setting */
> +#define DYTC_GET_MODE_BIT     12 /* Bits 12-15 - mode setting */
> +#define DYTC_GET_LAPMODE_BIT  17 /* Bit 17 - lapmode. Set when on lap */
> +
> +#define DYTC_SET_FUNCTION_BIT 12 /* Bits 12-15 - funct setting */
> +#define DYTC_SET_MODE_BIT     16 /* Bits 16-19 - mode setting */
> +#define DYTC_SET_VALID_BIT    20 /* Bit 20 - 1 = on, 0 = off */
> +
> +#define DYTC_FUNCTION_STD     0  /* Function = 0, standard mode */
> +#define DYTC_FUNCTION_CQL     1  /* Function = 1, lap mode */
> +#define DYTC_FUNCTION_MMC     11 /* Function = 11, desk mode */
> +
> +#define DYTC_MODE_PERFORM     2  /* High power mode aka performance */
> +#define DYTC_MODE_QUIET       3  /* low power mode aka quiet */
> +#define DYTC_MODE_BALANCE   0xF  /* default mode aka balance */
> 
>  static bool dytc_lapmode;
> +static bool dytc_mode_available;
> 
>  static void dytc_lapmode_notify_change(void)
>  {
> @@ -9822,7 +9845,81 @@ static int dytc_command(int command, int *output)
>  	return 0;
>  }
> 
> +static int dytc_perfmode_get(int *perfmode, int *funcmode)
> +{
> +	int output, err;
> +
> +	if (!dytc_mode_available)
> +		return -ENODEV;
> +
> +	err = dytc_command(DYTC_CMD_GET, &output);
> +	if (err)
> +		return err;
> +	*funcmode = (output >> DYTC_GET_FUNCTION_BIT) & 0xF;
> +
> +	if (*funcmode == DYTC_FUNCTION_CQL) {
> +		int dummy;
> +		/* We can't get the mode when in CQL mode - so we disable CQL
> +		 * mode retrieve the mode and then enable it again.
> +		 */
> +		err = dytc_command(0x000F1001 /*Disable CQL*/, &dummy);
> +		if (err)
> +			return err;
> +		err = dytc_command(DYTC_CMD_GET, &output);
> +		if (err)
> +			return err;
> +		err = dytc_command(0x001F1001 /*Enable CQL*/, &dummy);
> +		if (err)
> +			return err;
> +	}
> +	*perfmode = (output >> DYTC_GET_MODE_BIT) & 0xF;
> +	return 0;
> +}
> +
> +static int dytc_perfmode_set(int perfmode)
> +{
> +	int err, dytc_set;
> +	int output;
> +	int cur_perfmode, cur_funcmode;
> +
> +	if (!dytc_mode_available)
> +		return -ENODEV;
> +
> +	if (perfmode == DYTC_MODE_BALANCE) {
> +		/* To get back to balance mode we just issue a reset command */
> +		err = dytc_command(DYTC_CMD_RESET, &output);
> +		if (err)
> +			return err;
> +	} else {
> +		/* Determine if we are in CQL mode. This alters the commands we do
> */
> +		err = dytc_perfmode_get(&cur_perfmode, &cur_funcmode);
> +		if (err)
> +			return err;
> +
> +		if (cur_funcmode == DYTC_FUNCTION_CQL) {
> +			/* To set the mode we need to disable CQL first*/
> +			err = dytc_command(0x000F1001 /*Disable CQL*/, &output);

Why not put 0x000F1001 and 0x001F1001 as defines at the top?

> +			if (err)
> +				return err;
> +		}
> +		dytc_set = (1 << DYTC_SET_VALID_BIT) |
> +			(DYTC_FUNCTION_MMC << DYTC_SET_FUNCTION_BIT) |
> +			(perfmode << DYTC_SET_MODE_BIT) |
> +			DYTC_CMD_SET;
> +		err = dytc_command(dytc_set, &output);
> +		if (err)
> +			return err;
> +		if (cur_funcmode == DYTC_FUNCTION_CQL) {
> +			err = dytc_command(0x001F1001 /*Enable CQL*/, &output);
> +			if (err)
> +				return err;
> +		}
> +	}
> +	return 0;
> +}
> +
>  static int dytc_lapmode_get(bool *state)
> +
>  {
>  	int output, err;
> 
> @@ -9846,6 +9943,77 @@ static void dytc_lapmode_refresh(void)
>  	dytc_lapmode_notify_change();
>  }
> 
> +/* sysfs perfmode entry */
> +static ssize_t dytc_perfmode_show(struct device *dev,
> +				  struct device_attribute *attr,
> +				  char *buf)
> +{
> +	int err;
> +	int perfmode, funcmode;
> +
> +	err = dytc_perfmode_get(&perfmode, &funcmode);
> +	if (err)
> +		return err;
> +
> +	switch (perfmode) {
> +	case DYTC_MODE_PERFORM:
> +		/* High performance is only available in deskmode */
> +		if (funcmode == DYTC_FUNCTION_CQL)
> +			return snprintf(buf, PAGE_SIZE, "Medium (Reduced as lapmode
> active)\n");
> +		else
> +			return snprintf(buf, PAGE_SIZE, "High\n");
> +	case DYTC_MODE_QUIET:
> +		return snprintf(buf, PAGE_SIZE, "Low\n");
> +	case DYTC_MODE_BALANCE:
> +		return snprintf(buf, PAGE_SIZE, "Medium\n");
> +	default:
> +		return snprintf(buf, PAGE_SIZE, "Unknown (%d)\n", perfmode);
> +	}
> +}

I think it's pretty confusing that you write "H/M/L" into this file, but you
get back a full string.

> +
> +static ssize_t dytc_perfmode_store(struct device *dev,
> +				   struct device_attribute *attr,
> +				   const char *buf, size_t count)
> +{
> +	int err;
> +
> +	switch (buf[0]) {
> +	case 'l':
> +	case 'L':
> +		err = dytc_perfmode_set(DYTC_MODE_QUIET);
> +		break;
> +	case 'm':
> +	case 'M':
> +		err = dytc_perfmode_set(DYTC_MODE_BALANCE);
> +		break;
> +	case 'h':
> +	case 'H':
> +		err = dytc_perfmode_set(DYTC_MODE_PERFORM);
> +		break;
> +	default:
> +		err = -EINVAL;
> +		pr_err("Unknown operating mode. Ignoring\n");

Shouldn't this be dev_err?

> +		break;
> +	}
> +	if (err)
> +		return err;
> +
> +	tpacpi_disclose_usertask(attr->attr.name,
> +				"Performance mode set to %c\n", buf[0]);
> +	return count;
> +}
> +
> +static DEVICE_ATTR_RW(dytc_perfmode);
> +
> +static struct attribute *dytc_perfmode_attributes[] = {
> +	&dev_attr_dytc_perfmode.attr,
> +	NULL,
> +};
> +
> +static const struct attribute_group dytc_perf_attr_group = {
> +	.attrs = dytc_perfmode_attributes,
> +};
> +
>  /* sysfs lapmode entry */
>  static ssize_t dytc_lapmode_show(struct device *dev,
>  					struct device_attribute *attr,
> @@ -9856,22 +10024,22 @@ static ssize_t dytc_lapmode_show(struct device *dev,
> 
>  static DEVICE_ATTR_RO(dytc_lapmode);
> 
> -static struct attribute *dytc_attributes[] = {
> +static struct attribute *dytc_lap_attributes[] = {
>  	&dev_attr_dytc_lapmode.attr,
>  	NULL,
>  };
> 
> -static const struct attribute_group dytc_attr_group = {
> -	.attrs = dytc_attributes,
> +static const struct attribute_group dytc_lap_attr_group = {
> +	.attrs = dytc_lap_attributes,
>  };
> 
>  static int tpacpi_dytc_init(struct ibm_init_struct *iibm)
>  {
> -	int err;
> +	int err, output;
> 
> -	err = dytc_lapmode_get(&dytc_lapmode);
> +	err = dytc_command(DYTC_CMD_QUERY, &output);
>  	/* If support isn't available (ENODEV) then don't return an error
> -	 * but just don't create the sysfs group
> +	 * just don't create the sysfs group
>  	 */
>  	if (err == -ENODEV)
>  		return 0;
> @@ -9879,14 +10047,37 @@ static int tpacpi_dytc_init(struct ibm_init_struct
> *iibm)
>  	if (err)
>  		return err;
> 
> +	/* Check DYTC is enabled and supports mode setting */
> +	dytc_mode_available = false;
> +	if (output & BIT(DYTC_QUERY_ENABLE_BIT)) {
> +		/* Only DYTC v5.0 and later has this feature. */
> +		int dytc_version;
> +
> +		dytc_version = (output >> DYTC_QUERY_REV_BIT) & 0xF;
> +		if (dytc_version >= 5) {
> +			pr_info("DYTC thermal mode configuration available\n");

I would argue this isn't useful to most people.
1) You should decrease this to debug for use with dynamic debugging
2) Output in the log what integer value you returned back in case of a need
to identify future firmware bugs.

> +			dytc_mode_available = true;

I think you shouldn't set this flag until after the group is actually created.

> +			/* Platform supports this feature - create the group */
> +			err = sysfs_create_group(&tpacpi_pdev->dev.kobj,
> &dytc_perf_attr_group);
> +			if (err)
> +				return err;
> +		}
> +	}
> +
> +	err = dytc_lapmode_get(&dytc_lapmode);
> +	if (err)
> +		return err;
> +
>  	/* Platform supports this feature - create the group */
> -	err = sysfs_create_group(&tpacpi_pdev->dev.kobj, &dytc_attr_group);
> +	err = sysfs_create_group(&tpacpi_pdev->dev.kobj, &dytc_lap_attr_group);
>  	return err;
>  }
> 
>  static void dytc_exit(void)
>  {
> -	sysfs_remove_group(&tpacpi_pdev->dev.kobj, &dytc_attr_group);
> +	sysfs_remove_group(&tpacpi_pdev->dev.kobj, &dytc_lap_attr_group);
> +	if (dytc_mode_available)
> +		sysfs_remove_group(&tpacpi_pdev->dev.kobj, &dytc_perf_attr_group);
>  }
> 
>  static struct ibm_struct dytc_driver_data = {
> --
> 2.26.2



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5C623005F
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 28 Jul 2020 05:52:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1k0GeX-0005DZ-4O; Tue, 28 Jul 2020 03:51:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <njoshi1@lenovo.com>) id 1k0GeW-0005DO-0y
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 28 Jul 2020 03:51:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UYx81NEKTGevz22Wruc7x19eCozIvKnMhUhlLgHvlto=; b=JbgjPFZpcMVnyo6YLaqlRhMcV0
 mirQbf7Lzo/WzBGRr32wpVcSTxkg80l78GyIJDcYJr7PPSlrj2U4m877kN1C1saq6AQo8dZLmn/93
 6heRwQwY+NaL+crimKJohDHo1OmqQL7QEtBI89RFiLfmkCjLvCrLgmHzLkZLsy7jbcvc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UYx81NEKTGevz22Wruc7x19eCozIvKnMhUhlLgHvlto=; b=Ili39yVS1EL7tUTMCjfwTcnmkU
 0ACyfPuzCJJb0AEZnqDP/XwRV/bcfNdAYGIcqtDQhT51ta+X+JWDZ3dnRrU6YvSK9LXFyl6q+c5Id
 hnWto6z1qC9C1maR+4Kmjbkvd4ZmnkNo0PUR9gGCT9usgEP/uzgEoul86Z36V/lT3HQE=;
Received: from mail1.bemta23.messagelabs.com ([67.219.246.4])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k0GeR-00BX2i-9N
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 28 Jul 2020 03:51:43 +0000
Received: from [100.112.1.169] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-4.bemta.az-b.us-east-1.aws.symcld.net id CC/88-37342-AB0AF1F5;
 Tue, 28 Jul 2020 03:51:22 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrCJsWRWlGSWpSXmKPExsWS8eIhl+6uBfL
 xBi8eiVi8nHCY0WL2YRuLOc/WMlqs3vOC2YHFY+esu+wevw8weuxe8JnJ4/MmuQCWKNbMvKT8
 igTWjE1XNjIXzFeuONY1maWB8YlSFyMXh5BAA5PEzNNvGSGcV4wSM59NZuti5ITI/PxiApH4z
 Shxeto/NhCHUWAps0T7uY2sEM4xFonD+yaxQzgbGCW6f30GG8YisJtZ4nnnMnaIAfOZJCb19U
 M59xklHvR3MYKsYRNQl3h18CrYShGBKIkTn3+AtTMLTGSSWDtxJjtIQlggRGLum/XMEEWhEs9
 u/4FqsJI41XgDbBCLgKrEnuWfgOIcHLwCMRInzmlCLJvFKHF2+wawGk6BQInGPafB5jAKiEl8
 P7WGCcRmFhCXuPVkPpgtISAgsWTPeWYIW1Ti5eN/UJ92MUrsf7mbBSKhJLF5ezM7hC0rcWl+N
 yOE7StxZPECKFtH4v+kPjYI20bi6PMFLCDHSQioSPw7VAlh5kuc/xA9gdF4FpIrZgFlmAU0Jd
 bv0ocIK0pM6X7IDmLzCghKnJz5hGUBI8sqRtOkosz0jJLcxMwcXUMDA11DQyNdY11TE73EKt0
 kvdJi3dTE4hJdQ73E8mK94src5JwUvbzUkk2MwKSUUsBstoPx5+sPeocYJTmYlER5d0yXjxfi
 S8pPqcxILM6ILyrNSS0+xCjDwaEkwbt/LlBOsCg1PbUiLTMHmCBh0hIcPEoivO9A0rzFBYm5x
 ZnpEKlTjMYcE17OXcTMcWTu0kXMQix5+XmpUuK8bvOASgVASjNK8+AGwRL3JUZZKWFeRgYGBi
 GegtSi3MwSVPlXjOIcjErCvMXzgabwZOaVwO0DplugL0R4G4/LgpxSkoiQkmpgWnFnR+XCg2u
 iXSQWHrJSkA7Z9bRI2Y6h9545H7PWlWdTvBs8HOK5zPizFqV/TY/06tqedfWqsdTvFjWp+kip
 FO4be9aU/f/j+War8s7+w15/TpXkTnaP/7H0Ss9RnefF8tVGPp490jefPynwDr3EnhN3dnnFH
 EVekTwXqX8332usWCzwPnERi5Zjg8TUO0frFKY+K1h3PMdnSfPd9PWJVYdP6vr87/3dwR75d6
 rX3r/mkjWSs2U0zmgs0n7KccG+tveGyMWES18n/Wrt03wR+3CT36SHVxj5DnCxv5+2ZpXI1jL
 DwFePZ5S/PL3nXajVh4Q7d4T+L3r2IUJtTqXumfPbWXZy5ufsS1Dsi3t7VomlOCPRUIu5qDgR
 AA3A8zNXBAAA
X-Env-Sender: njoshi1@lenovo.com
X-Msg-Ref: server-29.tower-386.messagelabs.com!1595908282!160435!1
X-Originating-IP: [104.232.225.10]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.50.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 5940 invoked from network); 28 Jul 2020 03:51:22 -0000
Received: from unknown (HELO lenovo.com) (104.232.225.10)
 by server-29.tower-386.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 28 Jul 2020 03:51:22 -0000
Received: from HKGWPEMAIL03.lenovo.com (unknown [10.128.3.71])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by Forcepoint Email with ESMTPS id 37165A252BD9C4E7D101;
 Mon, 27 Jul 2020 23:51:21 -0400 (EDT)
Received: from HKGWPEMAIL03.lenovo.com (10.128.3.71) by
 HKGWPEMAIL03.lenovo.com (10.128.3.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1913.5; Tue, 28 Jul 2020 11:52:09 +0800
Received: from HKEXEDGE02.lenovo.com (10.128.62.72) by HKGWPEMAIL03.lenovo.com
 (10.128.3.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.1913.5 via Frontend
 Transport; Tue, 28 Jul 2020 11:52:09 +0800
Received: from APC01-PU1-obe.outbound.protection.outlook.com (104.47.126.55)
 by mail.lenovo.com (10.128.62.72) with Microsoft SMTP Server (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.1913.5; Tue, 28 Jul
 2020 11:52:08 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IswB3Z3EYsuoWrfKj6vMj4pm5jkw7QgvG2lrmW1x9FMMgH3R8jhI5d6DoNWS50aAAwY4VGK6OWQr3gQEx1b3O/ciMdv2C3bMtX+bhvFi2zNomdNl4B6LKYglvtbqsRquKPkH1VDbk/sCl+Xsx9mBGUwB/oIOoAOnjwsQ9k4Yb4mf5JjuxgOoZm6oNVsFtM3mYqd9+s5ywz9ZIEGfhynymhdzfHWIlIVkjZh3trMoUxNIKCM29q8emauKZy89/T0IVPc47jS3y+O74ebexdKUqiLMru3b715P3MIN8fmOXjvzCvcI9vbULNEz9NxwghB6iv15DVIlRZJLqcjLBXpKHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UYx81NEKTGevz22Wruc7x19eCozIvKnMhUhlLgHvlto=;
 b=ENMkRKpihj65wNQkNsD1C8TW6IjT0uVGYdv5Kf7IWu32nvxBWrcUjMF8pZSGZgubcQFagw96qx5iZeIk/FUnjXdug59ngbvUnGjTXiQL8T15W8Rx469e86Xp75oHS68G0uQpTWQyIeVGqGODi8jYXAR8z7L7jAqYy25ScTSqohro6EmZtNcZc4acBDAHhAkT4ev7QN7zeRiawqDNxyg8Wwc1w7gnfjfrxM4pR5/AN/+yjkvzuhKQXmSUjFVwuUE5JAdm/HxGw0GqdZQQoqZ+yoWc2CYUpBE01qgEGrdYlIPB38SLQc23U4g4z17QvGyi4Gz9i4RbFRFJnZVEijT3EQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=lenovo.com; dmarc=pass action=none header.from=lenovo.com;
 dkim=pass header.d=lenovo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=LenovoBeijing.onmicrosoft.com; s=selector2-LenovoBeijing-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UYx81NEKTGevz22Wruc7x19eCozIvKnMhUhlLgHvlto=;
 b=NEHw08tsvYKyTx3ZsU+bTIDLjlm1s3HWQ/ovN5SaWyZ9tTynBqn7Nu016ymwgk1yZfG3BWDZbqUiHocv2DQulYBZ9UmR++2FZe1mAoyaTJ4OuBtlEKQSHKCpjEv1vX+Cbkg+sxbOtE2LNlEQWjffk9n0jNjrqbKPYJKoKapQX90=
Received: from PU1PR03MB2716.apcprd03.prod.outlook.com (2603:1096:803:20::17)
 by PS1PR0302MB2443.apcprd03.prod.outlook.com (2603:1096:803:d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3239.9; Tue, 28 Jul
 2020 03:51:09 +0000
Received: from PU1PR03MB2716.apcprd03.prod.outlook.com
 ([fe80::d93d:a08d:f69a:c697]) by PU1PR03MB2716.apcprd03.prod.outlook.com
 ([fe80::d93d:a08d:f69a:c697%6]) with mapi id 15.20.3239.015; Tue, 28 Jul 2020
 03:51:09 +0000
From: Nitin Joshi1 <njoshi1@lenovo.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>, Mark RH Pearson
 <markpearson@lenovo.com>
Thread-Topic: [External]  Re: [PATCH] platform/x86: thinkpad_acpi: psensor
 interface
Thread-Index: AQHWWwMHz3ST7j+TG06+0crDZ7YttqkbTR6AgAENKoA=
Date: Tue, 28 Jul 2020 03:51:08 +0000
Message-ID: <PU1PR03MB2716FE7EF1BF12E5B9EC25188C730@PU1PR03MB2716.apcprd03.prod.outlook.com>
References: <markpearson@lenovo.com>
 <20200715235242.4934-1-markpearson@lenovo.com>
 <CAHp75Vcwg9aEpybYwEFvhYH4gpy7952i+zMs-2TKGPzkzuhO=g@mail.gmail.com>
In-Reply-To: <CAHp75Vcwg9aEpybYwEFvhYH4gpy7952i+zMs-2TKGPzkzuhO=g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [114.165.32.192]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 98fe3eb9-21ac-4a21-3c57-08d832a9767f
x-ms-traffictypediagnostic: PS1PR0302MB2443:
x-ld-processed: 5c7d0b28-bdf8-410c-aa93-4df372b16203,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <PS1PR0302MB2443BA2D0CE0E44DFE1FC3DB8C730@PS1PR0302MB2443.apcprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iyjDwP11n+KtOSPUuXtW89QXCBMCfe38y1z68zhcFbTSFjod1Bg4FWd0NZnRMjSoDMT7YkiZ6MK46l23XdWfCJdOXvhVcYPBkKl3HYqXSOzjWCwgSEOxOwrV7MNXbkiD52KxAjtpOgxSm4mdrR0vtI2fcZ93+QHJfDHxwA/ht7elkdF556bvXAtkxJG99kEVIBIziAbS5Inqt4KoBTari1iM/qeptazPArxZV9kLdYkUqAOMCyCWMVO3ugO71verc6vTifVnmPB6kq8sap4Nt5FgEEsTRJpdzsYnZ3GiRBFVC2MSqbVIKcUUi21I7ha+tzecicNHnV5zPXmxEaNikg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PU1PR03MB2716.apcprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(346002)(366004)(136003)(396003)(376002)(8676002)(66476007)(71200400001)(33656002)(83380400001)(86362001)(8936002)(107886003)(2906002)(110136005)(7696005)(54906003)(5660300002)(186003)(66946007)(66446008)(9686003)(52536014)(64756008)(66556008)(316002)(55016002)(6506007)(76116006)(478600001)(26005)(6636002)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: CbLl9BT02WDM4b+DQNpODdC0ATNdBAE8tnBVv/Hb4tgAeTJJLmup/p+2mjCEPNDa/iEkmQmQ/QIrGCPkiEZOGWnf9N6dYT3mtHWx1QpzCrJkq6rFjCwHMZrXqkguwSy6YUBM+wz4lCg90Zu5SRfc7bHEjeuBxfegonQJ6FA5MtzISrM++WiIUesw3FGBf8C4duup5BIB39GQE2Vv+A1Yi7YdIC69o2U7XZzyO7xkxnTvKu1YaMMylVGPjBNNIwqUVacT/pwPRdAOW+ojsQzmNDoJ5psKHMtyOkjE04VQv6yTcaQbMatbFZmAjetrHyhXcDIX0Mc5cQN02Xhv91Cr1JD7pti3ZEt+yQgSITDMWtK1yobFIOxrcv7AZDm3UEAy3OI5dQ9IzEkjL8KbK2bjhtwSHjqMZ7NP9R/3CKro1CEv0GljyyHD+dLez9+7unRLCkgC5u9ONaDV69d/AuqcEiAZeEl0FsJYPfnrbk+jfL63E4BE6dKnMk1Z2B6EEK3GYzWYalKQ/JRLxvfZXu4NCtwEv2TyLgS/Hje1scffYF+CNtpA22xqGKcWHL7O1+DVM8kMjcwMeY7EwNoaopRgSDhzFmvmZgWm2pCfKCbLN/+suZjpxhx+c5ywSBH3kO0NKvWoSLAWgzTFbVmFaVbnkQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PU1PR03MB2716.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98fe3eb9-21ac-4a21-3c57-08d832a9767f
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2020 03:51:09.0597 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5c7d0b28-bdf8-410c-aa93-4df372b16203
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KHvMNPXh1SUCbkTPzx5GwWJqV1hVr57xyjEaI2jryriS/CpLK2212zRt6Cyok0tv9P62fnJDB6Q/lYdSPN4wCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PS1PR0302MB2443
X-OriginatorOrg: lenovo.com
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lenovo.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [67.219.246.4 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [67.219.246.4 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1k0GeR-00BX2i-9N
Subject: Re: [ibm-acpi-devel] [External] Re: [PATCH] platform/x86:
 thinkpad_acpi: psensor interface
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
Cc: Tomoki Maruichi <maruichit@lenovo.com>,
 Thinkpad-acpi devel ML <ibm-acpi-devel@lists.sourceforge.net>, Sugumaran
 Lacshiminarayanan <slacshiminar@lenovo.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>, Platform
 Driver <platform-driver-x86@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Andy ,

>-----Original Message-----
>From: Andy Shevchenko <andy.shevchenko@gmail.com>
>Sent: Monday, July 27, 2020 7:35 PM
>On Thu, Jul 16, 2020 at 2:53 AM Mark Pearson <markpearson@lenovo.com>
>wrote:
>>
>>         case TP_HKEY_EV_PALM_DETECTED:
>>         case TP_HKEY_EV_PALM_UNDETECTED:
>> -               /* palm detected hovering the keyboard, forward to user-space
>> -                * via netlink for consumption */
>> +               /* palm detected - pass on to event handler */
>> +               tpacpi_driver_event(hkey);
>>                 return true;
>
>Comment here tells something about the netlink interface to user space.
>Can you elaborate why we need sysfs now and how it's all supposed to
>work?
Using  netlink , we were getting proximity events like '0x60b0' and '0x60b1' but for our WWAN requirement, we need default and current 
p-sensor state too .  
Some tools like "acpi-listen" uses netlink to display events but we need default and current p-sensor state also as per our requirement. 
hence , we have added new sysfs to get current p-sensor state using 'GPSS' method from BIOS .
This will be used for implementing "Dynamic power reduction" app which is used to control Body SAR value as per FCC requirement .
When Body or any object is near or away from p-sensor location on thinkpad system , then sysfs will be set .

>
>...
>
>> +static int psensor_get(bool *state)
>> +{
>> +       acpi_handle psensor_handle;
>> +       int output;
>> +
>> +       if (ACPI_FAILURE(acpi_get_handle(hkey_handle, "GPSS",
>&psensor_handle)))
>> +               return -ENODEV;
>> +
>> +       if (!acpi_evalf(psensor_handle, &output, NULL, "d"))
>> +               return -EIO;
>> +
>> +       /* Check if sensor has a Psensor */
>> +       if (!(output & BIT(PSENSOR_PRESENT_BIT)))
>> +               return -ENODEV;
>> +
>> +       /* Return if psensor is set or not */
>> +       *state = output & BIT(PSENSOR_ON_BIT) ? true : false;
>> +       return 0;
>> +}
>
>It reminds me of a function you created in one of the previous changes. Can
>you rather create a parameterized helper which will serve for both?

Ack , we will check it .

>
>...
>
>> +/* sysfs psensor entry */
>> +static ssize_t psensor_state_show(struct device *dev,
>> +                                       struct device_attribute *attr,
>> +                                       char *buf) {
>
>> +       return snprintf(buf, PAGE_SIZE, "%d\n", psensor_state);
>
>We know that %d takes much less than PAGE_SIZE, use sprintf().
>
>> +}
>
>> +
>
>No blank line here.
>
Ack

>> +static DEVICE_ATTR_RO(psensor_state);
>
>...
>
>> +static struct attribute *psensor_attributes[] = {
>> +       &dev_attr_psensor_state.attr,
>
>> +       NULL,
>
>No comma for terminator line(s).
>

Ack 

>> +};
>
>...
>
>> +       /* If support isn't available (ENODEV) then don't return an error
>> +        * but just don't create the sysfs group
>> +        */
>
>/*
> * Consider to use a proper multi-line comment style.
> * Like here. (It's applicable to the entire patch)  */
>
>...
>
>> +       err = sysfs_create_group(&tpacpi_pdev->dev.kobj,
>&psensor_attr_group);
>> +       return err;
>
>return sysfs...
Ack 

Thanks & Regards,
Nitin Joshi

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6E34498C0
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  8 Nov 2021 16:49:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mk6sl-0000EB-46; Mon, 08 Nov 2021 15:48:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <markpearson@lenovo.com>) id 1mk6sj-0000Dw-IC
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 08 Nov 2021 15:48:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:CC:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SG4yCRWUNypaN3mTgh6kUrOguJftFBOuuaRDtCc6dho=; b=J5UvIvHaEeZmQuMrfxsQdm050Z
 R34Mxrg2o4AsxizD4o9n5hTdgUXZPHNRAX2pZUDjRPwArfQUr/acFcJN6xtYHVVbASO3lHUNQdShf
 lZJpKUU9+TEE7r2aIvaFLZVROireQIxdwkyDgokoVvFMJ2Bx43LmimqnsRpg6GXVLkFs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:CC:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SG4yCRWUNypaN3mTgh6kUrOguJftFBOuuaRDtCc6dho=; b=HLnzKu/bhyjLLDJIrxPaUax5lu
 t8CewGwkNgMXIePD+WAUlMyeRQ0IGY+6j6ZfiqWbDvUQGQK5usZT2Lti6FeWuIw0SsFqWI/nDuivH
 96v9wn3bLACkvYT/dG2Gp7P/oVwkFvuQedK0TcJdV9ql8LcXwvLxRUm+MjFh+VJzzArQ=;
Received: from mail1.bemta23.messagelabs.com ([67.219.246.3])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mk6sf-0005Ia-RU
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 08 Nov 2021 15:48:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lenovo.com;
 s=Selector; t=1636386490; i=@lenovo.com;
 bh=SG4yCRWUNypaN3mTgh6kUrOguJftFBOuuaRDtCc6dho=;
 h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
 In-Reply-To:Content-Type:Content-Transfer-Encoding;
 b=Zv7znSzreeDXhzYLn/bJWp+BWxI8lWXYdtu52T3SbF0O5vTX9IYhLEGLR23xeEusp
 gs/FB7D3nBDtDosYTYNqkyJbXqY1sRHi2MsIb0/EFCvIVKIZuZTMUj8q0mzDQmqCAB
 MgkHv8ThjwI9pwDRHsJMB11oyyR558ie4wlEigZGX9y+5d2f+8Xo/qiKZi0n+vzGq4
 e/KOo4Uytc5gf4mT2WnpL8l5MMfrgaDxWPNNzyrtQ2OjkzHSmDIZ74ZCxTUmxD1l6j
 DKh2toRUImi26M+w55YLj5JBkTLfAIB6HtboMNWxcp69X7T+nrI6hFECySbKLwTohr
 DXe9IEt6eeo0g==
Received: from [100.112.1.55] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-3.bemta.az-b.us-east-1.aws.symcld.net id F5/B7-04465-9B649816;
 Mon, 08 Nov 2021 15:48:09 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrGJsWRWlGSWpSXmKPExsWSoV9nqrvTrTP
 RYPNsNYs3x6czWaz/vZLFYvZhG4vrH0+xWhyYOo3ZYvWeF8wObB6LV0xh9fh9gNFj06pONo/d
 Cz4zebzfd5XN4/MmuQC2KNbMvKT8igTWjN7lm1gL7nNUrHozlamBcQl7FyMXB6PAUmaJWdNfs
 HUxcgI5i1glvn40hki0MUmsfjaDEcQREpjJJDHz2H1mCGcfk8THhldMII6EwHFGie5D65ggMp
 2MEj9enWKBcCYySVw7OR0q85hRYs7eNawga4QEHjJKbJytC2LzCthKHJl9GWw9i4CKxMIj71k
 h4oISJ2c+AZrEwSEqEC7RcKcYJCwsECdx6GkbI4jNLCAucevJfCYQW0RASWLDsnYmiPgjRok1
 m9kgVplKtB+cxAJiswloS2zZ8gsszilgJrHtayvUHAuJxW8OskPY8hLb385hhuhVlvjVfx7Ml
 hBQkNiw/i87hJ0g0fPvERuELSlx7eYFqLisxNGzc1ggbF+JTZOuQNlaEn+6n0DNyZG4deAQVL
 2axPLFn5gnMOrNQvLxLCSvzUJy3iwk5y1gZFnFaJJUlJmeUZKbmJmja2hgoGtoaKRrpGuhl1i
 lm6RXWqybmlhcomuol1herFdcmZuck6KXl1qyiRGYuFIKmDh2MN55/UHvEKMkB5OSKK+WXWei
 EF9SfkplRmJxRnxRaU5q8SFGGQ4OJQlecWegnGBRanpqRVpmDjCJwqQlOHiURHi9nIDSvMUFi
 bnFmekQqVOMxhwTXs5dxMxxctWSRcxCLHn5ealS4rxnXIBKBUBKM0rz4AbBkvslRlkpYV5GBg
 YGIZ6C1KLczBJU+VeM4hyMSsK8r0Cm8GTmlcDtewV0ChPQKQe/tIOcUpKIkJJqYJI6diCvOMV
 p4R3PKO0jJa1J8y7cvPZJusRIk2t7yOocR/bjocKXek3zRL6VeQcm/n5UvWJl8caz2rP8w1R8
 P9sf4Pqm+uO1WmleuuSZW7E/t2d0vtzR0MFmOPf9BKGSoqsvbu3NEumyLlLkX9D2OivkeE/as
 oAo8+DuKh67UzkqFs9YnrY/aNU8kbf3h/aXUAmVqOsba6X4hCqjPPmWbttlssTKxXm9yhX/3r
 jJbwUmz6ngOng+KD532sx1hyqzHjEEyvFd0C5eKGrSX59dFrvu4OepzZd7FK1WBN+ptHnTVbE
 lZVOAnfKCX7f2zrtn8Hnx/Zer1c7e/J+47TJLQItB9HvWGYsT4xkv614/o8RSnJFoqMVcVJwI
 AEJ+wdVpBAAA
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-18.tower-386.messagelabs.com!1636386488!395!1
X-Originating-IP: [104.47.126.53]
X-SYMC-ESS-Client-Auth: mailfrom-relay-check=pass
X-StarScan-Received: 
X-StarScan-Version: 9.81.5; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 31000 invoked from network); 8 Nov 2021 15:48:09 -0000
Received: from mail-pu1apc01lp2053.outbound.protection.outlook.com (HELO
 APC01-PU1-obe.outbound.protection.outlook.com) (104.47.126.53)
 by server-18.tower-386.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 8 Nov 2021 15:48:09 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I9TYU/RT0mMrzran8bAthM9uNDbpN/1CivRaF8culZflaKMy4kWeUgooMg6C9Pk4jag+IHfsNq10O8wg0NCO8w64cmXv03VE6R3WVAsB7PgxbVD7erehuA2SUrV1BeLXzdbIKQTKpLH1N8TCKzH1OdnDW3nUkkE9BR21wxIWTntG4/iJjucZeLQKAA28izuHARjnZoZibUEUTqTD6eryib/A7WO5myOYzviHoAtqzu+zOTUKMCCOIU9ZZWCdX67uleGAIIJDb2ADwoF+DCh5+zu4cubhoJrkUUtLMQyy14uN45uTDGAs10jk5R78zuZNEaFrNkTO0yQ/sxgAjdEsHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SG4yCRWUNypaN3mTgh6kUrOguJftFBOuuaRDtCc6dho=;
 b=J1AvAWZouDfRvJzl6hd0Hm7Pmr6TB+0LkrmOepnWCLK6aT5BxeaJglKVjeX722qsehEGJlKg9GtpDz1C6KYYdaNvCup+EdXOO6ZLNvWpLqSnhVZsQX1Bu5IBYaDGx1zWKKwekkLQguK2oVGt9NVKvflWcSahdtC5bXkx5W3MbrZn+Sa69glUX0zEYWm8HGEvI0Zsg4oLvOTCAYQqCKgRJW/ljx9p89fPBzutwNUV4/NiM7cdBletv15W9NBcyNznS3wOCVyNf8miEpNQDNUPS4Q7hEbHAJn6hCWiYrpYy+l0bKgylCGwFvgj0IrIr0vddcWDK0IpP/EOsOy27vSYFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 104.232.225.7) smtp.rcpttodomain=163.com smtp.mailfrom=lenovo.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=lenovo.com;
 dkim=none (message not signed); arc=none
Received: from SG2PR06CA0108.apcprd06.prod.outlook.com (2603:1096:3:14::34) by
 HK0PR03MB3844.apcprd03.prod.outlook.com (2603:1096:203:3b::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4690.8; Mon, 8 Nov 2021 15:48:06 +0000
Received: from SG2APC01FT050.eop-APC01.prod.protection.outlook.com
 (2603:1096:3:14:cafe::55) by SG2PR06CA0108.outlook.office365.com
 (2603:1096:3:14::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.11 via Frontend
 Transport; Mon, 8 Nov 2021 15:48:06 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is
 104.232.225.7) smtp.mailfrom=lenovo.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=lenovo.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 lenovo.com discourages use of 104.232.225.7 as permitted sender)
Received: from mail.lenovo.com (104.232.225.7) by
 SG2APC01FT050.mail.protection.outlook.com (10.152.251.238) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4669.10 via Frontend Transport; Mon, 8 Nov 2021 15:48:06 +0000
Received: from reswpmail01.lenovo.com (10.62.32.20) by mail.lenovo.com
 (10.62.123.117) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2242.12; Mon, 8 Nov
 2021 10:48:05 -0500
Received: from [10.38.62.237] (10.38.62.237) by reswpmail01.lenovo.com
 (10.62.32.20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2242.12; Mon, 8 Nov
 2021 10:48:04 -0500
Message-ID: <2c7bb3b5-26be-93cc-e946-d15cbf7ab185@lenovo.com>
Date: Mon, 8 Nov 2021 10:48:03 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Content-Language: en-US
To: Jimmy Wang <jimmy221b@163.com>
References: <20211108025534.7801-1-jimmy221b@163.com>
From: Mark Pearson <markpearson@lenovo.com>
In-Reply-To: <20211108025534.7801-1-jimmy221b@163.com>
X-Originating-IP: [10.38.62.237]
X-ClientProxiedBy: reswpmail04.lenovo.com (10.62.32.23) To
 reswpmail01.lenovo.com (10.62.32.20)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c156aa6e-0fd8-492e-b480-08d9a2cf2860
X-MS-TrafficTypeDiagnostic: HK0PR03MB3844:
X-Microsoft-Antispam-PRVS: <HK0PR03MB384417637F5A9AF15B1E4A10C5919@HK0PR03MB3844.apcprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2150;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hlW3itrvaMdPlkfO2i906XxDF6QfA0tJtUBJoTiNedONBBVqlAU6XiL+SIBPMz2qS0gE7BZmXADKafXasZhOquOoFBf22zrvWYXIJui7bAneSYdW4m0wFQRp3MllYZi3FhffQpfeLDpuLyxfSzKF9ReDaAqCh05/HVsCmSK6mLXVyjPgKbPmJ9Mwh7ZFM71YuuGzVkBfCYxtEnTVaEzNkwIuM27qFvh5XGorpfss8tpSj0atmuzXQpaAj7oPbq0RHv3f5BbWT5/f+hXv5E9Cg7pF/3TNk3+vy0o7H5dSaZhEgVgJODTZf9Z36/pX+jjisJxXhjXp3rmabhsuWDr7ytFaJKQ0+SMMjinYZ0Nu0BcZ9lxDqNJbDvW59B4ckaC5409KMpWStZu8xekmPGMJqQTL2v5KgebWO5bDjdIbK15TBeLfk5N/UzNTKCVYO2P17D1KU91PDuB61KyEf/6IFaswFxDPDqIubTsbv1y25vuST6H7K/vDKVXgnEC/6LxdcuV7DjqQP57G9f7vPF9fyj8qMYyLpwNoUZQ8keL/4HFjOrK93/FSoBNCH2wzrD5+xOH/XQj+AxvkEgcfBXbBcWPVwAzcGWcxWu1IFyciUK7xVMNXKC0y870A5OM7qHFrmb31uIVgp7UwO4Suhi4OS8TKcCWTJxZjWIDeuembxDVxjS4fe6+RED9y1F2+peQjMULIqqf7pOx9xoXfa4CCFBk7HricYBnDvfQ7xffxKVjC1yrXA38sLpQZVYXOMyc5i1VzfolGkL1qCF8yU/miS+ZGcGHHe+D1zYcpSMn3yYo=
X-Forefront-Antispam-Report: CIP:104.232.225.7; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.lenovo.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(4636009)(36840700001)(46966006)(86362001)(8936002)(36860700001)(26005)(70206006)(16526019)(82960400001)(8676002)(356005)(336012)(54906003)(36756003)(6916009)(508600001)(70586007)(186003)(47076005)(53546011)(31696002)(82310400003)(81166007)(31686004)(5660300002)(36906005)(2616005)(4326008)(316002)(426003)(16576012)(2906002)(3940600001)(43740500002)(36900700001);
 DIR:OUT; SFP:1102; 
X-OriginatorOrg: lenovo.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2021 15:48:06.3656 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c156aa6e-0fd8-492e-b480-08d9a2cf2860
X-MS-Exchange-CrossTenant-Id: 5c7d0b28-bdf8-410c-aa93-4df372b16203
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=5c7d0b28-bdf8-410c-aa93-4df372b16203; Ip=[104.232.225.7];
 Helo=[mail.lenovo.com]
X-MS-Exchange-CrossTenant-AuthSource: SG2APC01FT050.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK0PR03MB3844
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Thanks Jimmy, On 2021-11-07 21:55, Jimmy Wang wrote: > This
 adds dual fan control for P1 / X1 Extreme Gen4 > > Signed-off-by: Jimmy Wang
 <jimmy221b@163.com> > --- > drivers/platform/x86/thinkpad_acpi.c | 1 + >
 1 fi [...] 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [67.219.246.3 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [67.219.246.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mk6sf-0005Ia-RU
Subject: Re: [ibm-acpi-devel] [External] [PATCH] platform/x86:
 thinkpad_acpi: Add support for dual fan control
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
Cc: ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org,
 Mark Gross <markgross@kernel.org>, Hans
 de Goede <hdegoede@redhat.com>, wangjm19@lenovo.com,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Thanks Jimmy,

On 2021-11-07 21:55, Jimmy Wang wrote:
>     This adds dual fan control for P1 / X1 Extreme Gen4
> 
> Signed-off-by: Jimmy Wang <jimmy221b@163.com>
> ---
>   drivers/platform/x86/thinkpad_acpi.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 9c632df734bb..eb201d001075 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -8766,6 +8766,7 @@ static const struct tpacpi_quirk fan_quirk_table[] __initconst = {
>   	TPACPI_Q_LNV3('N', '2', 'E', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (1st gen) */
>   	TPACPI_Q_LNV3('N', '2', 'O', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (2nd gen) */
>   	TPACPI_Q_LNV3('N', '2', 'V', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (3nd gen) */
> +	TPACPI_Q_LNV3('N', '4', '0', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (4nd gen) */
>   	TPACPI_Q_LNV3('N', '3', '0', TPACPI_FAN_2CTL),	/* P15 (1st gen) / P15v (1st gen) */
>   	TPACPI_Q_LNV3('N', '3', '2', TPACPI_FAN_2CTL),	/* X1 Carbon (9th gen) */
>   };
> 
Looks good. I have no concerns.

Mark



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

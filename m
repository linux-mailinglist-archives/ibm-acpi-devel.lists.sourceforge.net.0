Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CA35F4549D1
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 17 Nov 2021 16:21:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mnMjw-00068q-KK; Wed, 17 Nov 2021 15:20:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <markpearson@lenovo.com>) id 1mnMjr-00067A-IS
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 17 Nov 2021 15:20:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:CC:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8Wace4vgsr6K04P42YLHpI7mpF1rF9Zxa1s2cQnZoc4=; b=KCuWSPq1C3YfIaQ8/1KS5YvMeQ
 GN0Lk/6eMyWskyKiH0N+MGNOqZcj9m6+Ya5ri6ID6pRGtPEaUDesuousWG94k909o+7m7fAIVY68R
 trff/PCIn5HPBEbQnsn6HZAsaXPzQa9XieYVWBYsOZYPsbA72UQ6AJ0fdJTjOiPG8EaY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:CC:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8Wace4vgsr6K04P42YLHpI7mpF1rF9Zxa1s2cQnZoc4=; b=ZxICWe20E2cgWsvE0sC8oCVx03
 LJeStS6JLuy5d3jhDZecYPYXGgYQOh7zoRQLhVgOhvEaATP2xCq7/HdSU9ugYLzfqH3f+tQgBg4m5
 hRapFjFe+LraqULsX/nOHl0e6uangiso4B+669TbmswCXJ5vI/5s4pP+vxmT0ByPAUOU=;
Received: from mail1.bemta24.messagelabs.com ([67.219.250.114])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mnMZg-0000sN-Hr
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 17 Nov 2021 15:10:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lenovo.com;
 s=Selector; t=1637161800; i=@lenovo.com;
 bh=8Wace4vgsr6K04P42YLHpI7mpF1rF9Zxa1s2cQnZoc4=;
 h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
 In-Reply-To:Content-Type:Content-Transfer-Encoding;
 b=TLbhJBTVSuVP9nvoA4RRvfY+MSiOZRJjlc6GVDnp83f3oGbN62q5pbtnA9h/8DaYu
 +qtfjoqAFuzMG3LXBrCR4BXvXWD2j93hdi0EwU5VhuO+HBP547boMLvdg89FaPMiv/
 0anwoJtOR6ejqi9fpRi59nqSkQNpIpUIJ1i21FhoOpiK7khdxPRsxDjx4sm/N+ExZq
 H5WwZaGvuDB8hwIeet5pilNuhZqP7nJQLLcOiVc0kFfiysNOr6sKSqe/Zp9NR4+TWJ
 FlZb0+RQyaTuEtYR9SYraNjsYR97I8tCu1918hA3W22tDKQrYgtULny+wksMKn8p+h
 71//p4al8r4CQ==
Received: from [100.112.133.242] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-3.bemta.az-b.us-west-2.aws.symcld.net id A9/72-31742-74B15916;
 Wed, 17 Nov 2021 15:09:59 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprCLsWRWlGSWpSXmKPExsWSoS+lr+suPTX
 R4ISjxf7rEhZfv91mt3hzfDqTxfrfK1ksZh+2sWi994vN4vKuOWwWn3uPMFr8/vGMyeLA1GnM
 FtuaDzNarN7zgtniyuQbjBand5c48HnsnHWX3WPxpv1sHr+2rWHx+H2A0WPTqk42j90LPjN5v
 N93lc3j8yY5j/7uY+wBnFGsmXlJ+RUJrBl3ju9gLnhiVvH5nkAD43TdLkYuDkaBpcwSqze3sk
 E4i1gl1m6exQjh9DJJnD57lgnEERKYzyRx9sw9KOcQk8TSH+dYQBwJgeOMEt2H1kFlOhklfrw
 6xQLhTGKSeNK0Esp5wihxfelFqLJHjBI7nm0GWsrJwStgK/Hs1gEwm0VAVWJqyyl2iLigxMmZ
 T4C6OThEBcIlGu4Ug5jCAhESmw+GglQwC4hL3HoynwnEFhGwkVhx6TEryHhmgW3MEr/n/GCH2
 HWOUeLl1i8sIFVsAtoSW7b8AtvFCdQx/fx/ZohJmhKt23+zQ9jyEs1bZ4PFhQSUJX71nwezJQ
 QUJJo+9DBC2AkSPf8esUHYkhLXbl5gh7BlJY6encMCYftKXF+4BqpXS2LO9wdQ8RyJLdNWQMX
 VJHZ0/maZwKg3C8nLs5A8NwvJebOQnLeAkWUVo1lSUWZ6RkluYmaOrqGBga6hoZGuobGJrqle
 YpVukl5psW55anGJrpFeYnmxXnFlbnJOil5easkmRmCiTCloY93BeP71B71DjJIcTEqivLGMU
 xOF+JLyUyozEosz4otKc1KLDzHKcHAoSfBO4APKCRalpqdWpGXmAJM2TFqCg0dJhHeWBFCat7
 ggMbc4Mx0idYrRkmPCy7mLmDm6ehYCyUlHdm9nFmLJy89LlRLnPSUJ1CAA0pBRmgc3DpZZLjH
 KSgnzMjIwMAjxFKQW5WaWoMq/YhTnYFQS5o2WAprCk5lXArf1FdBBTEAHyV6eDHJQSSJCSqqB
 qVztkmPw8wDLNCZFv5sSG31NEjvk77vUrTz02nD2s73nHh+8sMGu5MnH/xcvarCGHFj88+PWs
 /HlrC88ogL1pnonfZh16Ipi0+XZLllz+zYm/lM9H/T5h9bERuXe63EarnufpKtJLbl/LsonVb
 WKUeizlEP4iqCaj4GWjvpvhWR4eIx5lFSfK/Vo2WR7Fy6Quf4hQfG04c+q3J33eTTu/Eq5c/n
 goZAMNjfzTV1eEet2LXL38fEx880sEJo7f/t07YNnLzrz5jhpxMz22My76pL32gWXmoUfNtS2
 ZWzhOMQgsztc9NBj2zt1NqE7GXzK/O/23XRvWZUd/qh2Zdqek70q7me4Nm/dceTW6U3HlViKM
 xINtZiLihMBeAnobKcEAAA=
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-13.tower-355.messagelabs.com!1637161797!11294!1
X-Originating-IP: [104.47.26.47]
X-SYMC-ESS-Client-Auth: mailfrom-relay-check=pass
X-StarScan-Received: 
X-StarScan-Version: 9.81.5; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 3017 invoked from network); 17 Nov 2021 15:09:58 -0000
Received: from mail-psaapc01lp2047.outbound.protection.outlook.com (HELO
 APC01-PSA-obe.outbound.protection.outlook.com) (104.47.26.47)
 by server-13.tower-355.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 17 Nov 2021 15:09:58 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cdjf+GzjiBjPU3CI73riZBs2pWq+W30cTF3QTjY9rHjZarkVJMyK4+uuYRgq3KvXKtHq0MZDmDgISlUEI9IZZ/idNrxyWLcTPgERbB5bGepUcy9PiUqFuf15a+Sy8/OY0bYqHURvzmHCj363PFd2cw4rrDEMmPC8KCMP4iTtM8KFuhfYgjmR7C2ioV8kjYEMKU7dkT0bA7hoBVnpec32F+j1xuO0ALT5SoMiR41tR4j10eIZnWAcjoCA1ET169ScwiwSsWts5I8+K/gHdLU5tmgj1ZnC53Yuf9tzE3xswAJYUlb3c9vLeH8+CJYU136D4hnRdnzcSgL/fFAzQflhXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8Wace4vgsr6K04P42YLHpI7mpF1rF9Zxa1s2cQnZoc4=;
 b=QHsvnM6V/7omj7ezr9AGLAv6kByNwBfagL5xnv89Ojtzm/JtCqjJxtEstsO90+2X9XmJJxWI4R1E8BineDuByfDhfNVwlOO8uAIvarjGt/k9x+f3vio1b2yn15edt3FPO4zpFqDbD5GQhg2iEdmulnztJ6G09WYo7O9ohPSNxiwcI2osj6sBmmKaIlmqjKHyxqfdhc6nYxm0DgOqU0/KdL5egq5LxwTIMcoTVQUwbsSbMKa2xirwU9qSimjP3oDHXMLaW+Zjc6GpHkFXGQ/945oq5LSTs+n/BnjJJ5xidPAU6nGcYtjZZdmKfJgwJ2EQ5hA0C3LCsRpZEcygdkKcJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 104.232.225.7) smtp.rcpttodomain=weissschuh.net smtp.mailfrom=lenovo.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=lenovo.com;
 dkim=none (message not signed); arc=none
Received: from PS2PR03CA0023.apcprd03.prod.outlook.com (2603:1096:300:5b::35)
 by HK0PR03MB4772.apcprd03.prod.outlook.com (2603:1096:203:b1::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4713.17; Wed, 17 Nov
 2021 15:09:55 +0000
Received: from HK2APC01FT011.eop-APC01.prod.protection.outlook.com
 (2603:1096:300:5b:cafe::dc) by PS2PR03CA0023.outlook.office365.com
 (2603:1096:300:5b::35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.7 via Frontend
 Transport; Wed, 17 Nov 2021 15:09:55 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is
 104.232.225.7) smtp.mailfrom=lenovo.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=lenovo.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 lenovo.com discourages use of 104.232.225.7 as permitted sender)
Received: from mail.lenovo.com (104.232.225.7) by
 HK2APC01FT011.mail.protection.outlook.com (10.152.248.153) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4690.19 via Frontend Transport; Wed, 17 Nov 2021 15:09:53 +0000
Received: from reswpmail01.lenovo.com (10.62.32.20) by mail.lenovo.com
 (10.62.123.117) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2308.20; Wed, 17 Nov
 2021 10:09:52 -0500
Received: from [10.38.110.13] (10.38.110.13) by reswpmail01.lenovo.com
 (10.62.32.20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2308.20; Wed, 17 Nov
 2021 10:09:50 -0500
Message-ID: <61226b12-6c24-334d-c635-8981c5ddcbaf@lenovo.com>
Date: Wed, 17 Nov 2021 10:09:50 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Content-Language: en-US
To: =?UTF-8?Q?Thomas_Wei=c3=9fschuh?= <linux@weissschuh.net>
References: <20211113104225.141333-1-linux@weissschuh.net>
 <20211113104225.141333-5-linux@weissschuh.net>
 <82ec6164-223b-940a-6992-48ccbe47a615@lenovo.com>
 <986a547b-67c5-4116-9b2a-d3ba7b2f7847@t-8ch.de>
From: Mark Pearson <markpearson@lenovo.com>
In-Reply-To: <986a547b-67c5-4116-9b2a-d3ba7b2f7847@t-8ch.de>
X-Originating-IP: [10.38.110.13]
X-ClientProxiedBy: reswpmail04.lenovo.com (10.62.32.23) To
 reswpmail01.lenovo.com (10.62.32.20)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dc1cc1e7-e550-42ff-aded-08d9a9dc4fb9
X-MS-TrafficTypeDiagnostic: HK0PR03MB4772:
X-Microsoft-Antispam-PRVS: <HK0PR03MB4772E1E9EE4BB3C29F28B99EC59A9@HK0PR03MB4772.apcprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: u5+LE0mF7xghj4uQ1nMqalQLDUJIZC7bZqy9RdA1sbJ2PhbdH15/f81LS2Hl5fLYAAloqkrnb+W80TaifMbGLnhakh9m0FnjypaRKU6XVx9/DrsFeVjmA8UFF8GFXrOD0Z8zzKZUKv3JuIc6HFKTiY1VNrZBiN9lnyn/6rTmFcs8LEdmR9JecmpPiSpKY6/PHGmFGK7DQ5DyKNF2it0WBGmSQl/MA4w2uh5FYaLpIQ+G00AK0cdEDjGQGDvocRDcdg7+jZJa8p1eTofA4xasOQKp9C8sJMWmqA5QXazHXwxAbaPzS+ttnqAUuhhOFrI01pZHPPk146w+NpB/Zp8mNgRLdaVQZRVWpPrLWRgIe1apGvrj5YUzNeLh+kB64rNy8RXGsoflSa8a0xoIyWmLaQnTY2puV3IMB8q3Zs5tFawVN9UdVdfbxS5Fuw0TNZ3hzfeEe7W6RYikblBf5RFL0pZTMg01ktyQQEsl3to5Pd6E7rZ3n/C3n54rjyqsx0iQFGfn6+1CmwzOHOs1tTzEDdOCfShLnxLUNpaZ7OfBho37ccfP+9t/TB8zsAkzkfkjmp9Nx5ragySovFtQHQcqE4CZGXZCjhfr9z9pkzn2/Jkte2D9W6IHcBeXSxHmVM35/MgEasp2Ct7vxw8zokQY249o+fNo82RNb9MK9wB4WwMf6MqYRrX2v5C0gId4TIFtewHTsAqTxHGmZAW7JuekZIvvtsEOId2zJXEwr9VralraKiCidGVsQRZhMV2v9Nn+9SKBU6mC0YvIjfZ9+SW6OsyKfnnM2We6IBPXnzKGz4RGZe+5B8T0A81a1RNczoTD52xmlY9y6L1h3ZRRAcIx0nIlwPmZB6AP5CJKxQxdpjYSXlbVPBdziynq9WguwEMT
X-Forefront-Antispam-Report: CIP:104.232.225.7; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.lenovo.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(4636009)(36840700001)(46966006)(36860700001)(2906002)(4326008)(5660300002)(36756003)(7416002)(186003)(31686004)(16526019)(8676002)(53546011)(2616005)(82310400003)(4001150100001)(70206006)(16576012)(70586007)(54906003)(26005)(8936002)(36906005)(82960400001)(316002)(66574015)(83380400001)(81166007)(31696002)(47076005)(336012)(356005)(426003)(86362001)(6916009)(966005)(508600001)(3940600001)(43740500002)(36900700001);
 DIR:OUT; SFP:1102; 
X-OriginatorOrg: lenovo.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2021 15:09:53.9836 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: dc1cc1e7-e550-42ff-aded-08d9a9dc4fb9
X-MS-Exchange-CrossTenant-Id: 5c7d0b28-bdf8-410c-aa93-4df372b16203
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=5c7d0b28-bdf8-410c-aa93-4df372b16203; Ip=[104.232.225.7];
 Helo=[mail.lenovo.com]
X-MS-Exchange-CrossTenant-AuthSource: HK2APC01FT011.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK0PR03MB4772
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Thomas On 2021-11-16 18:44, Thomas Weißschuh wrote: >
   Hi Mark, > > On 2021-11-16 15:52-0500, Mark Pearson wrote: >> On 2021-11-13
    05:42, Thomas Weißschuh wrote: >>> This adds support for the inhibit-charge
    [...] 
 
 Content analysis details:   (-2.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [67.219.250.114 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [67.219.250.114 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mnMZg-0000sN-Hr
Subject: Re: [ibm-acpi-devel] [External] [PATCH 4/4] platform/x86:
 thinkpad_acpi: support inhibit-charge
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
Cc: linrunner@gmx.net, nicolopiazzalunga@gmail.com, bberg@redhat.com,
 Hans de Goede <hdegoede@redhat.com>, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, Sebastian Reichel <sre@kernel.org>,
 platform-driver-x86@vger.kernel.org, Mark Gross <markgross@kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>, hadess@hadess.net,
 smclt30p@gmail.com, njoshi1@lenovo.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGkgVGhvbWFzCgpPbiAyMDIxLTExLTE2IDE4OjQ0LCBUaG9tYXMgV2Vpw59zY2h1aCB3cm90ZToK
PiBIaSBNYXJrLAo+IAo+IE9uIDIwMjEtMTEtMTYgMTU6NTItMDUwMCwgTWFyayBQZWFyc29uIHdy
b3RlOgo+PiBPbiAyMDIxLTExLTEzIDA1OjQyLCBUaG9tYXMgV2Vpw59zY2h1aCB3cm90ZToKPj4+
IFRoaXMgYWRkcyBzdXBwb3J0IGZvciB0aGUgaW5oaWJpdC1jaGFyZ2UgY2hhcmdlX2JlaGF2aW91
ciB0aHJvdWdoIHRoZQo+Pj4gZW1iZWRkZWQgY29udHJvbGxlciBvZiBUaGlua1BhZHMuCj4+Pgo+
Pj4gU2lnbmVkLW9mZi1ieTogVGhvbWFzIFdlacOfc2NodWggPGxpbnV4QHdlaXNzc2NodWgubmV0
Pgo+Pj4KPj4+IC0tLQo+Pj4KPj4+IFRoaXMgcGF0Y2ggaXMgYmFzZWQgb24gaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvcGxhdGZvcm0tZHJpdmVyLXg4Ni9kMjgwODkzMC01ODQwLTZmZmItM2E1OS1k
MjM1Y2RiMWZlMTZAZ21haWwuY29tLyAtLS0KPj4+ICBkcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlu
a3BhZF9hY3BpLmMgfCA1NSArKysrKysrKysrKysrKysrKysrKysrKysrKystCj4+PiAgMSBmaWxl
IGNoYW5nZWQsIDUzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYyBiL2RyaXZlcnMvcGxh
dGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYwo+Pj4gaW5kZXggZThjOThlOWFmZjcxLi43Y2Q2NDc1
MjQwYjIgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3Bp
LmMKPj4+ICsrKyBiL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYwo+Pj4gQEAg
LTkzMjEsNiArOTMyMSw4IEBAIHN0YXRpYyBzdHJ1Y3QgaWJtX3N0cnVjdCBtdXRlX2xlZF9kcml2
ZXJfZGF0YSA9IHsKPj4+ICAjZGVmaW5lIFNFVF9TVE9QCSJCQ1NTIgo+Pj4gICNkZWZpbmUgR0VU
X0RJU0NIQVJHRQkiQkRTRyIKPj4+ICAjZGVmaW5lIFNFVF9ESVNDSEFSR0UJIkJEU1MiCj4+PiAr
I2RlZmluZSBHRVRfSU5ISUJJVAkiUFNTRyIKPj4+ICsjZGVmaW5lIFNFVF9JTkhJQklUCSJCSUNT
Igo+Pj4gIAo+Pj4gIGVudW0gewo+Pj4gIAlCQVRfQU5ZID0gMCwKPj4+IEBAIC05MzM4LDYgKzkz
NDAsNyBAQCBlbnVtIHsKPj4+ICAJVEhSRVNIT0xEX1NUQVJULAo+Pj4gIAlUSFJFU0hPTERfU1RP
UCwKPj4+ICAJRk9SQ0VfRElTQ0hBUkdFLAo+Pj4gKwlJTkhJQklUX0NIQVJHRSwKPj4+ICB9Owo+
Pj4gIAo+Pj4gIHN0cnVjdCB0cGFjcGlfYmF0dGVyeV9kYXRhIHsKPj4+IEBAIC05NDA5LDYgKzk0
MTIsMTMgQEAgc3RhdGljIGludCB0cGFjcGlfYmF0dGVyeV9nZXQoaW50IHdoYXQsIGludCBiYXR0
ZXJ5LCBpbnQgKnJldCkKPj4+ICAJCS8qIFRoZSBmb3JjZSBkaXNjaGFyZ2Ugc3RhdHVzIGlzIGlu
IGJpdCAwICovCj4+PiAgCQkqcmV0ID0gKnJldCAmIDB4MDE7Cj4+PiAgCQlyZXR1cm4gMDsKPj4+
ICsJY2FzZSBJTkhJQklUX0NIQVJHRToKPj4+ICsJCS8qIFRoaXMgaXMgYWN0dWFsbHkgcmVhZGlu
ZyBwZWFrIHNoaWZ0IHN0YXRlLCBsaWtlIHRwYWNwaS1iYXQgZG9lcyAqLwo+Pj4gKwkJaWYgQUNQ
SV9GQUlMVVJFKHRwYWNwaV9iYXR0ZXJ5X2FjcGlfZXZhbChHRVRfSU5ISUJJVCwgcmV0LCBiYXR0
ZXJ5KSkKPj4+ICsJCQlyZXR1cm4gLUVOT0RFVjsKPj4+ICsJCS8qIFRoZSBpbmhpYml0IGNoYXJn
ZSBzdGF0dXMgaXMgaW4gYml0IDAgKi8KPj4+ICsJCSpyZXQgPSAqcmV0ICYgMHgwMTsKPj4+ICsJ
CXJldHVybiAwOwo+Pj4gIAlkZWZhdWx0Ogo+Pj4gIAkJcHJfY3JpdCgid3JvbmcgcGFyYW1ldGVy
OiAlZCIsIHdoYXQpOwo+Pj4gIAkJcmV0dXJuIC1FSU5WQUw7Cj4+PiBAQCAtOTQ0Nyw2ICs5NDU3
LDIyIEBAIHN0YXRpYyBpbnQgdHBhY3BpX2JhdHRlcnlfc2V0KGludCB3aGF0LCBpbnQgYmF0dGVy
eSwgaW50IHZhbHVlKQo+Pj4gIAkJCXJldHVybiAtRU5PREVWOwo+Pj4gIAkJfQo+Pj4gIAkJcmV0
dXJuIDA7Cj4+PiArCWNhc2UgSU5ISUJJVF9DSEFSR0U6Cj4+PiArCQkvKiBXaGVuIHNldHRpbmcg
aW5oaWJpdCBjaGFyZ2UsIHdlIHNldCBhIGRlZmF1bHQgdmFsdWUgb2YKPj4+ICsJCSAqIGFsd2F5
cyBicmVha2luZyBvbiBBQyBkZXRhY2ggYW5kIHRoZSBlZmZlY3RpdmUgdGltZSBpcyBzZXQgdG8K
Pj4+ICsJCSAqIGJlIHBlcm1hbmVudC4KPj4+ICsJCSAqIFRoZSBiYXR0ZXJ5IElEIGlzIGluIGJp
dHMgNC01LCAyIGJpdHMsCj4+PiArCQkgKiB0aGUgZWZmZWN0aXZlIHRpbWUgaXMgaW4gYml0cyA4
LTIzLCAyIGJ5dGVzLgo+Pj4gKwkJICogQSB0aW1lIG9mIEZGRkYgaW5kaWNhdGVzIGZvcmV2ZXIu
Cj4+PiArCQkgKi8KPj4+ICsJCXBhcmFtID0gdmFsdWU7Cj4+PiArCQlwYXJhbSB8PSBiYXR0ZXJ5
IDw8IDQ7Cj4+PiArCQlwYXJhbSB8PSAweEZGRkYgPDwgODsKPj4+ICsJCWlmIChBQ1BJX0ZBSUxV
UkUodHBhY3BpX2JhdHRlcnlfYWNwaV9ldmFsKFNFVF9JTkhJQklULCAmcmV0LCBwYXJhbSkpKSB7
Cj4+PiArCQkJcHJfZXJyKCJmYWlsZWQgdG8gc2V0IGluaGliaXQgY2hhcmdlIG9uICVkIiwgYmF0
dGVyeSk7Cj4+PiArCQkJcmV0dXJuIC1FTk9ERVY7Cj4+PiArCQl9Cj4+PiArCQlyZXR1cm4gMDsK
Pj4+ICAJZGVmYXVsdDoKPj4+ICAJCXByX2NyaXQoIndyb25nIHBhcmFtZXRlcjogJWQiLCB3aGF0
KTsKPj4+ICAJCXJldHVybiAtRUlOVkFMOwo+Pj4gQEAgLTk0NjcsNiArOTQ5Myw4IEBAIHN0YXRp
YyBpbnQgdHBhY3BpX2JhdHRlcnlfcHJvYmUoaW50IGJhdHRlcnkpCj4+PiAgCSAqIDQpIENoZWNr
IGZvciBzdXBwb3J0Cj4+PiAgCSAqIDUpIEdldCB0aGUgY3VycmVudCBmb3JjZSBkaXNjaGFyZ2Ug
c3RhdHVzCj4+PiAgCSAqIDYpIENoZWNrIGZvciBzdXBwb3J0Cj4+PiArCSAqIDcpIEdldCB0aGUg
Y3VycmVudCBpbmhpYml0IGNoYXJnZSBzdGF0dXMKPj4+ICsJICogOCkgQ2hlY2sgZm9yIHN1cHBv
cnQKPj4+ICAJICovCj4+PiAgCWlmIChhY3BpX2hhc19tZXRob2QoaGtleV9oYW5kbGUsIEdFVF9T
VEFSVCkpIHsKPj4+ICAJCWlmIEFDUElfRkFJTFVSRSh0cGFjcGlfYmF0dGVyeV9hY3BpX2V2YWwo
R0VUX1NUQVJULCAmcmV0LCBiYXR0ZXJ5KSkgewo+Pj4gQEAgLTk1MTMsNiArOTU0MSwxNiBAQCBz
dGF0aWMgaW50IHRwYWNwaV9iYXR0ZXJ5X3Byb2JlKGludCBiYXR0ZXJ5KQo+Pj4gIAkJCWJhdHRl
cnlfaW5mby5iYXR0ZXJpZXNbYmF0dGVyeV0uY2hhcmdlX2JlaGF2aW91cnMgfD0KPj4+ICAJCQkJ
QklUKFBPV0VSX1NVUFBMWV9DSEFSR0VfQkVIQVZJT1VSX0ZPUkNFX0RJU0NIQVJHRSk7Cj4+PiAg
CX0KPj4+ICsJaWYgKGFjcGlfaGFzX21ldGhvZChoa2V5X2hhbmRsZSwgR0VUX0lOSElCSVQpKSB7
Cj4+PiArCQlpZiAoQUNQSV9GQUlMVVJFKHRwYWNwaV9iYXR0ZXJ5X2FjcGlfZXZhbChHRVRfSU5I
SUJJVCwgJnJldCwgYmF0dGVyeSkpKSB7Cj4+PiArCQkJcHJfZXJyKCJFcnJvciBwcm9iaW5nIGJh
dHRlcnkgaW5oaWJpdCBjaGFyZ2U7ICVkXG4iLCBiYXR0ZXJ5KTsKPj4+ICsJCQlyZXR1cm4gLUVO
T0RFVjsKPj4+ICsJCX0KPj4+ICsJCS8qIFN1cHBvcnQgaXMgbWFya2VkIGluIGJpdCA1ICovCj4+
PiArCQlpZiAocmV0ICYgQklUKDUpKQo+Pj4gKwkJCWJhdHRlcnlfaW5mby5iYXR0ZXJpZXNbYmF0
dGVyeV0uY2hhcmdlX2JlaGF2aW91cnMgfD0KPj4+ICsJCQkJQklUKFBPV0VSX1NVUFBMWV9DSEFS
R0VfQkVIQVZJT1VSX0lOSElCSVRfQ0hBUkdFKTsKPj4+ICsJfQo+Pj4gIAo+Pj4gIAliYXR0ZXJ5
X2luZm8uYmF0dGVyaWVzW2JhdHRlcnldLmNoYXJnZV9iZWhhdmlvdXJzIHw9Cj4+PiAgCQlCSVQo
UE9XRVJfU1VQUExZX0NIQVJHRV9CRUhBVklPVVJfQVVUTyk7Cj4+PiBAQCAtOTY3Myw2ICs5NzEx
LDExIEBAIHN0YXRpYyBzc2l6ZV90IGNoYXJnZV9iZWhhdmlvdXJfc2hvdyhzdHJ1Y3QgZGV2aWNl
ICpkZXYsCj4+PiAgCQkJcmV0dXJuIC1FTk9ERVY7Cj4+PiAgCQlpZiAocmV0KQo+Pj4gIAkJCWFj
dGl2ZSA9IFBPV0VSX1NVUFBMWV9DSEFSR0VfQkVIQVZJT1VSX0ZPUkNFX0RJU0NIQVJHRTsKPj4+
ICsJfSBlbHNlIGlmIChhdmFpbGFibGUgJiBCSVQoUE9XRVJfU1VQUExZX0NIQVJHRV9CRUhBVklP
VVJfSU5ISUJJVF9DSEFSR0UpKSB7Cj4+PiArCQlpZiAodHBhY3BpX2JhdHRlcnlfZ2V0KElOSElC
SVRfQ0hBUkdFLCBiYXR0ZXJ5LCAmcmV0KSkKPj4+ICsJCQlyZXR1cm4gLUVOT0RFVjsKPj4+ICsJ
CWlmIChyZXQpCj4+PiArCQkJYWN0aXZlID0gUE9XRVJfU1VQUExZX0NIQVJHRV9CRUhBVklPVVJf
SU5ISUJJVF9DSEFSR0U7Cj4+PiAgCX0KPj4+ICAKPj4+ICAJcmV0dXJuIHBvd2VyX3N1cHBseV9j
aGFyZ2VfYmVoYXZpb3VyX3Nob3coZGV2LCBhdmFpbGFibGUsIGFjdGl2ZSwgYnVmKTsKPj4+IEBA
IC05NzEwLDEyICs5NzUzLDIwIEBAIHN0YXRpYyBzc2l6ZV90IGNoYXJnZV9iZWhhdmlvdXJfc3Rv
cmUoc3RydWN0IGRldmljZSAqZGV2LAo+Pj4gIAlzd2l0Y2ggKHNlbGVjdGVkKSB7Cj4+PiAgCWNh
c2UgUE9XRVJfU1VQUExZX0NIQVJHRV9CRUhBVklPVVJfQVVUTzoKPj4+ICAJCXJldCA9IHRwYWNw
aV9iYXR0ZXJ5X3NldChGT1JDRV9ESVNDSEFSR0UsIGJhdHRlcnksIDApOwo+Pj4gLQkJaWYgKHJl
dCA8IDApCj4+PiArCQlyZXQgPSB0cGFjcGlfYmF0dGVyeV9zZXQoSU5ISUJJVF9DSEFSR0UsIGJh
dHRlcnksIDApIHx8IHJldDsKPj4+ICsJCWlmIChyZXQpCj4+PiAgCQkJcmV0dXJuIHJldDsKPj4+
ICAJCWJyZWFrOwo+Pj4gIAljYXNlIFBPV0VSX1NVUFBMWV9DSEFSR0VfQkVIQVZJT1VSX0ZPUkNF
X0RJU0NIQVJHRToKPj4+ICAJCXJldCA9IHRwYWNwaV9iYXR0ZXJ5X3NldChGT1JDRV9ESVNDSEFS
R0UsIGJhdHRlcnksIDEpOwo+Pj4gLQkJaWYgKHJldCA8IDApCj4+PiArCQlyZXQgPSB0cGFjcGlf
YmF0dGVyeV9zZXQoSU5ISUJJVF9DSEFSR0UsIGJhdHRlcnksIDApIHx8IHJldDsKPj4+ICsJCWlm
IChyZXQpCj4+PiArCQkJcmV0dXJuIHJldDsKPj4+ICsJCWJyZWFrOwo+Pj4gKwljYXNlIFBPV0VS
X1NVUFBMWV9DSEFSR0VfQkVIQVZJT1VSX0lOSElCSVRfQ0hBUkdFOgo+Pj4gKwkJcmV0ID0gdHBh
Y3BpX2JhdHRlcnlfc2V0KEZPUkNFX0RJU0NIQVJHRSwgYmF0dGVyeSwgMCk7Cj4+PiArCQlyZXQg
PSB0cGFjcGlfYmF0dGVyeV9zZXQoSU5ISUJJVF9DSEFSR0UsIGJhdHRlcnksIDEpIHx8IHJldDsK
Pj4+ICsJCWlmIChyZXQpCj4+PiAgCQkJcmV0dXJuIHJldDsKPj4+ICAJCWJyZWFrOwo+Pj4gIAlk
ZWZhdWx0Ogo+Pj4KPj4KPj4gSSBjYW4gY29uZmlybSB0aGUgYml0IGZpZWxkcyBhcmUgY29ycmVj
dCBmb3IgdGhlc2UgY2FsbHMgKGFzIGZvciB0aGUKPj4gcHJldmlvdXMgcGF0Y2gpCj4gCj4gVGhh
bmtzIQo+IAo+IENvdWxkIHlvdSBkb3VibGVjaGVjayB0aGUgYmVoYXZpb3IgZm9yIG11bHRpcGxl
IGJhdHRlcmllcyB0byBtYXliZSBmaW5kIGEKPiByZWFzb24gd2h5IEJBVDEgaXMgbm90IGluaGli
aXRlZCBhcyByZXBvcnRlZCBieSBUaG9tYXMgS29jaCBbMF0/Cj4gCj4+IENvdXBsZSBvZiB0aGlu
Z3MgdG8gbm90ZSwgYmFzZWQgb24gZmVlZGJhY2sgcHJldmlvdXNseSBmcm9tIHRoZSBGVyB0ZWFt
Cj4+IHRoYXQgSSBmb3VuZCB3aGVuIGRpZ2dpbmcgdGhydSBteSBiYXR0ZXJ5IHJlbGF0ZWQgZW1h
aWxzLgo+Pgo+PiAiTGVub3ZvIGRvZXNuJ3Qgb2ZmaWNpYWxseSBzdXBwb3J0IHRoZSB1c2Ugb2Yg
dGhlc2UgY2FsbHMgLSB0aGV5J3JlCj4+IGludGVuZGVkIGZvciBpbnRlcm5hbCB1c2UiIChhdCB0
aGlzIHBvaW50IGluIHRpbWUgLSB0aGVyZSBpcyBzb21lCj4+IGRpc2N1c3Npb24gYWJvdXQgYmF0
dGVyeSByZWNhbGlicmF0aW9uIHN1cHBvcnQgYnV0IEkgZG9uJ3QgaGF2ZSBkZXRhaWxzCj4+IEkg
Y2FuIHNoYXJlIHRoZXJlIHlldCkuCj4+Cj4+IFRoZSBGVyB0ZWFtIGFsc28gbm90ZWQgdGhhdDoK
Pj4KPj4gIkFjdHVhbCBiYXR0ZXJ5IGNoYXJnaW5nL2Rpc2NoYXJnaW5nIGJlaGF2aW9ycyBhcmUg
bWFuYWdlZCBieSBFQ0ZXLiBTbwo+PiB0aGUgcmVxdWVzdCBvZiBCRFNTL0JJQ1MgbWV0aG9kIG1h
eSBiZSByZWplY3RlZCBieSBFQ0ZXIGZvciB0aGUgY3VycmVudAo+PiBiYXR0ZXJ5IG1vZGUvc3Rh
dHVzLiBZb3UgaGF2ZSB0byBjaGVjayBpZiB0aGUgcmVxdWVzdCBvZiB0aGUgbWV0aG9kIGlzCj4+
IGFjdHVhbGx5IGFwcGxpZWQgb3Igbm90Igo+Pgo+PiBTbyBmb3IgdGhlIGNhbGxzIGFib3ZlIChh
bmQgZm9yIHRoZSBCRFNTIGNhbGxzIGluIHRoZSBwcmV2aW91cyBwYXRjaCkgaXQKPj4gd291bGQg
YmUgZ29vZCB0byBkbyBhIHJlYWQgYmFjayBvZiB0aGUgc2V0dGluZyB0byBlbnN1cmUgaXQgaGFz
Cj4+IGNvbXBsZXRlZCBzdWNjZXNzZnVsbHkuCj4gCj4gSSdsbCBhZGQgdGhhdCBmb3IgdjIuCj4g
Cj4+IEhvcGUgdGhhdCBoZWxwcwo+IAo+IEl0IGRvZXMsIHRoYW5rcyEKPiAKPiBUaG9tYXMKPiAK
PiBbMF0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvcGxhdGZvcm0tZHJpdmVyLXg4Ni85Y2ViYmE4
NS1mMzk5LWE3YWEtOTFmNy0yMzc4NTIzMzhkYzVAZ214Lm5ldC8+PiAKSSBnb3QgY29uZmlybWF0
aW9uIHRoYXQ6Cgo8cXVvdGU+CkJEU1MgaGF2ZSB0byBiZSB1c2VkIHdpdGggc3BlY2lmaWMgYmF0
dGVyeS4gUGxlYXNlIHVzZSB3aXRoIFByaW1hcnkoPTFiKQpvciBTZWNvbmRhcnkoMmIpIGFzIEJh
dHRlcnkgSUQgKEJpdDktOCkKCkJpdCA5LTg6IEJhdHRlcnkgSUQKPSAwOiBBbnkgYmF0dGVyeQo9
IDE6IFByaW1hcnkgYmF0dGVyeQo9IDI6IFNlY29uZGFyeSBiYXR0ZXJ5CjwvcXVvdGU+CgpJdCBz
ZWVtcyB5b3UgY2FuJ3QgdXNlIEJEU1Mgd2l0aCBhbGwgYmF0dGVyaWVzLgpJJ2xsIGNvbmZpcm0g
b24gQklDUyB3aGF0IHRoZSBsaW1pdGF0aW9ucyBhcmUsIHRoZXkgZGlkbid0IHVwZGF0ZSBvbgp0
aGF0IHBpZWNlIHlldCBJJ20gYWZyYWlkLiBVbmZvcnR1bmF0ZWx5IEkgZG9uJ3QgdGhpbmsgSSBo
YXZlIGFueQpzeXN0ZW1zIHdpdGggdHdvIGJhdHRlcmllcyB0byB0ZXN0IG15c2VsZi4KCk1hcmsK
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KaWJtLWFj
cGktZGV2ZWwgbWFpbGluZyBsaXN0CmlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5l
dApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9pYm0tYWNwaS1k
ZXZlbAo=

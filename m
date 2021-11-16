Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B581F453B03
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 16 Nov 2021 21:36:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mn5BH-0000DG-DV; Tue, 16 Nov 2021 20:35:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <markpearson@lenovo.com>) id 1mn5BA-0000D4-HZ
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 16 Nov 2021 20:35:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:CC:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EpwRR0N7Dal5zpGQjWxpXXvigL6aaWTCYVu2zm2GK6Q=; b=AqYtBa/TVhWbRWbNekdJGKXMSV
 SJbUdNQwLl04jG+m15ynhyDDyBqc5mmmg1YkLcTdsoyz7HyZqThFWa7tJdb6c2ccAlkEecArW/K/p
 /zK5sYXecrd3g1KFoWoK0rLfIh3ZII+2tJcVNfxwXAcrVBuiav9S65agSVWBhjGRrV54=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:CC:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EpwRR0N7Dal5zpGQjWxpXXvigL6aaWTCYVu2zm2GK6Q=; b=AeHZSnGw/fTc2z33Xi86Hw7qVq
 UR798yBzKQH+ciKsqP3PYj3fbxMwHwxxMS71hSqpU1mFTViRQj+cI3XBCfMwwi/FWAb5vsqYx6Nt2
 nozIZGBnvVAhQvrqIj9vkvt4yOiRC1anc0qs44X6aNOZiLBqALVIBFAcgJdXwFrdW6NE=;
Received: from mail1.bemta23.messagelabs.com ([67.219.246.116])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mn5B3-00FIWm-Gu
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 16 Nov 2021 20:35:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lenovo.com;
 s=Selector; t=1637094926; i=@lenovo.com;
 bh=EpwRR0N7Dal5zpGQjWxpXXvigL6aaWTCYVu2zm2GK6Q=;
 h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
 In-Reply-To:Content-Type:Content-Transfer-Encoding;
 b=mPS5MuFbenM/TpMWx/yz+lToujBPWigVURTx9dhPRum79Rml/GLeeyMW5XlezDh+Q
 6cMIg490yXeYJ+J8A/aPhd3zjzGo/y3rP/VjwvFzX1fW7Fa2G/nkOlzKjipNrRa9/q
 MYQbk5uTpq16wcFVIk1iDXm5R0bBwPcoephr7Gg/zEGmc5LMs3QwJMRfJGxmgwlZko
 KEV1M8pJ9NDat/GSLjbupaqs4W1I95UovDCM7FDSbco2MjwvGmWFt1FtwIWWcIBT+I
 WzMLQr9yXaS2dA8GK+qK/pk/i8kJZ+WqytEyk5wuFZsFppVqlZ7C46qTLDtTjtG79p
 3r1R4Jg16QihA==
Received: from [100.112.6.161] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-5.bemta.az-c.us-east-1.aws.symcld.net id 96/74-27078-D0614916;
 Tue, 16 Nov 2021 20:35:25 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA1VTf0wTVxzn3V2vB+PgaEEeZGBWgj/YWqgx7Bb
 GZDO4qkExZnEuWfSAg9aU0vWKAtGFSGBDYHShuFEkMswShSGzCv62DAYGXKfhlyI4hSCByvgx
 fgzbbdmdh4799/n1vt/PS94jUFmRNJRgc8ysycDoFbgPpo0+Gqck11iZGHeZjHbch/Ti0pCUn
 rr9DUI3ec5hdHX7u3Thb26c7r12Cqfny34GtGd5HKFbK0+idEtBO6AbbkygdF/FA0DfuW5O8N
 NctT2Sas7YHbjG3fIDpvG0Ao29vhjXXK+dRzQzt/pxzbw9XFNe0ilN9v5EojOkZOUclGhbHnT
 ixmk6548nxXg+sESfAD4EoL5H4bCzFBVJnQRay3skIilD4B2nExGIjLIhcOniSYlIWnniWMAE
 AqnbAJa0nV+JFQO47OrGRGJBYNuF8RVnDEDHeA9PvHnyBMArzk9PAIIgqXjYcJ4SZIyKhLWXv
 0IFTFIBsKtqDBMiQdQ+mD/MCbKc2g8flnQBAaNUMHw4dvrFxECqE4HNw1uEVSjVCOB3rjkgrj
 oEF4r6X4Rw6k146ZIbF7A3FQf7mn5HxUEbYeFlj1TEa2FBczUqno2A7vK7qNAB8np+lbcgQ+o
 gLP1nFBdxCBwYvCcVcRjscJ7CxHgSHLG8LcpR0LlYgolYD5s7llbwOnizaAm3AJVt1YVtq25m
 W1XOtqpcLcDqQWyKSZehNWcyOr1SHROjVKs3KTcr1e+oVUyeMlWVzSlZhjMreXqEU3G5man6N
 JWBNdsB/yTTjJjjCuh7NqtqAyEEoggi14xUMDK/lKy0XC3DaQ+YsvUs1wZeJwgFJGt9rIwswM
 RmsDnpOj3/sF/akPBVBJK7g3ib5IxMJqfLEK1uoCQskzV1qAwzZBnY0GByuxCihJA22/BqxMv
 v0QPCQuUk8PLykvkaWVOmzvx/3wWCCaCQk1mB/BRfncH8apOLL4HwJcJ6K4QSZuY/KzQf2f9j
 /PxPZ7cNvD+R/PTQNX+vW5UB4Y+tkqE9X+7YlPy4O3zrzfUXRwvu5TgkpePFNdPP2a11v/ZtK
 z/cV8cc7U08Zm+dbU6qur+07w2fga4zxmeJtTPnKlP0EZN50ue66hs7q3Z/saX326dnXYnutO
 NTybNvJfjtbVxvb9etmytVyPGOgbt/x9YUWmfj5pLjXCMTp79ee3ghY2qxO31Drrf8A3Z40LV
 nYTBlOSRJ6d8LZsrd8eHpY/WpGw9MVMiPN17Q+s8MjUcckWzor57OK/u4xdMUyX0URR4baQC7
 mt6LTZrtj0ydfGTmAh3crtd++dDPkrBj7+arg5//Fdo4+Nmfo9GExK3AOC2jjkJNHPMvUlxER
 5kEAAA=
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-9.tower-415.messagelabs.com!1637094923!56410!1
X-Originating-IP: [104.47.124.59]
X-SYMC-ESS-Client-Auth: mailfrom-relay-check=pass
X-StarScan-Received: 
X-StarScan-Version: 9.81.5; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 1364 invoked from network); 16 Nov 2021 20:35:25 -0000
Received: from mail-hk2apc01lp2059.outbound.protection.outlook.com (HELO
 APC01-HK2-obe.outbound.protection.outlook.com) (104.47.124.59)
 by server-9.tower-415.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 16 Nov 2021 20:35:25 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HwYKDVf85SUkctZvdYXS/cyYnxD0Vy0n8RDpnTGE9pT3y9hi+6O6O0t+EMkzfdeVaV9E67O8ULQO83C/ERNVU7ItttcELKeUTZbGtd6WJVP/YcQCUjANkqRsk2OJnEXDSb++G5OmSezJr2Ct3W4D4xvBbHpIP8LbIyXWH9JoiQQkg9CGLgEW9yP3jn19mf5gjBV7zzATn5NO8lHYnfIIytQLGWqSUPf3q6vheZtWcMRfxJVb4GpL46NEs+Ct27NTQ8mhK6M0E0biUA2h5nafOfUpz38gzb3N8IpCVHGoN2xIOgP/UkAfm7e8RkTOaMD1l8ZApsOSx8JX1KUeJTFpdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EpwRR0N7Dal5zpGQjWxpXXvigL6aaWTCYVu2zm2GK6Q=;
 b=IdI/8vx4EIbLdgsrzXb3wzBI4MwZYCa8HPpgew4KcXbwFxQlBzdDXfFeprki7mKQyd7BQdnC8Zmyr0eYcrmxSpB+5ei78vj20WYJWEzCFYsC36RS+OYDiNBJR1KrWpYH/4azrY9wQtymKiDxojgLgTF1T27xu5eIoUY6+UKPJufW8AnmnuLtv72cJXoCJYbYF88MzaeUhqKt5aq+mUWuI+dYUvi9KN3uPz2CH0k3AsbFvCivsLiKKWdpHmE7e/Cr4YyQStVE/9UI0PrmQxi7/AMKOFTvxj1as7b2yWbHZ35DzxpJDorTmtdT9ZE9ZRwhlrF7qdp7I47J9OemjpbB2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 104.232.225.7) smtp.rcpttodomain=weissschuh.net smtp.mailfrom=lenovo.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=lenovo.com;
 dkim=none (message not signed); arc=none
Received: from SG2PR06CA0208.apcprd06.prod.outlook.com (2603:1096:4:68::16) by
 SG2PR03MB3338.apcprd03.prod.outlook.com (2603:1096:4:17::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4713.15; Tue, 16 Nov 2021 20:35:22 +0000
Received: from SG2APC01FT0034.eop-APC01.prod.protection.outlook.com
 (2603:1096:4:68:cafe::77) by SG2PR06CA0208.outlook.office365.com
 (2603:1096:4:68::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.25 via Frontend
 Transport; Tue, 16 Nov 2021 20:35:22 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is
 104.232.225.7) smtp.mailfrom=lenovo.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=lenovo.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 lenovo.com discourages use of 104.232.225.7 as permitted sender)
Received: from mail.lenovo.com (104.232.225.7) by
 SG2APC01FT0034.mail.protection.outlook.com (10.13.37.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4690.15 via Frontend Transport; Tue, 16 Nov 2021 20:35:21 +0000
Received: from reswpmail01.lenovo.com (10.62.32.20) by mail.lenovo.com
 (10.62.123.117) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2308.20; Tue, 16 Nov
 2021 15:35:19 -0500
Received: from [10.38.49.20] (10.38.49.20) by reswpmail01.lenovo.com
 (10.62.32.20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2308.20; Tue, 16 Nov
 2021 15:35:18 -0500
Message-ID: <f5b7c3fe-dfcf-da4f-b0a8-2ed256b95d47@lenovo.com>
Date: Tue, 16 Nov 2021 15:35:17 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Content-Language: en-US
To: =?UTF-8?Q?Thomas_Wei=c3=9fschuh?= <linux@weissschuh.net>,
 <linux-pm@vger.kernel.org>, Sebastian Reichel <sre@kernel.org>,
 <ibm-acpi-devel@lists.sourceforge.net>,
 <platform-driver-x86@vger.kernel.org>, Mark Gross <markgross@kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, Henrique de Moraes Holschuh
 <hmh@hmh.eng.br>
References: <20211113104225.141333-1-linux@weissschuh.net>
 <20211113104225.141333-4-linux@weissschuh.net>
From: Mark Pearson <markpearson@lenovo.com>
In-Reply-To: <20211113104225.141333-4-linux@weissschuh.net>
X-Originating-IP: [10.38.49.20]
X-ClientProxiedBy: reswpmail04.lenovo.com (10.62.32.23) To
 reswpmail01.lenovo.com (10.62.32.20)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bdabcf4e-9762-4fc1-2fd7-08d9a9409cba
X-MS-TrafficTypeDiagnostic: SG2PR03MB3338:
X-Microsoft-Antispam-PRVS: <SG2PR03MB333821AF6F25867F228E45A4C5999@SG2PR03MB3338.apcprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CsoB4dk+sD66on8UVfr5djAhGDrmpY+GMyhkCEdbifW+8a+/Bj7gKvXMmC8lGuNw2xyFbwX1PCGQVCaBFMBo4oaybmVacpNzJj7GQSZ14wVPcRpQLGXthd6c2c6OiS1wuQAH//iINdlZrmHjNsU/Bbfp0J5d933+v0LDzoK+HjbkPJOAEutvPClHyMlYk1AQ7yuDIe/JJ5dybHiCGwNiAqPhxbWKs8NzG0683MgBzYNsrOJb4tQc1IKgBko3w3lx5jWEFWUH9hCW+Zh942jHnKN+a9wDsL/ec6tJcr+R8RUpqDT/LWacJa54axzMF0FP2GItaI0MiWAC/VJKqb+Q9lwjppyoPSvcpkdigaUNoDqRa9QiI28KcoaW5UxbS/uGAn+xLqHgPGXq/FYguy4REg48jvnRVEyMahT4SEBcBr8YAMXpDwyIGjtO1GsqZQ7s5qNgszVwkkQumT4oLH38YMoYcGFpfMuVwOuEdh42cXgpeSZJ4V9iF+j90rZCTYL1G6xttlS53efivM/8zFiXWjtAGAspU9CtU7OdsR1v5G0rnL7jfJ9MkxgBkMaiYXWUJQuPQGaOp2kgpImQKCcwAzFvxpvWI+CuXoeumvPMKOYCxS0qGJoRjab7zHDBPPDtN9hICasRo1EgjTCSqD7BeuTh9ustTKJUwxgugF0TUJ4Qu8ySe1DI/S05O1maZVDY/WBxP7/VtRzRM6qnBVrigo5eriS9Fsf8/59q1pgucQVZP0GXcifoy/XMJYK+/ha5ZLLcK/iuQGUnWTVYJmyhlOVx2iNQrpvj4+vnhTvJl7v/b087pU+YtRAo32lXcAUTNbY204EteHPGeMwNdfZZU8BGXstPJfad+6U9zsKG14j55mlhgy0+ba3zqLETW/m9JQ+NwDcq/D3NhQnBN221MA==
X-Forefront-Antispam-Report: CIP:104.232.225.7; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.lenovo.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(4636009)(46966006)(36840700001)(83380400001)(966005)(36756003)(66574015)(81166007)(316002)(36906005)(82960400001)(8936002)(2616005)(47076005)(508600001)(31686004)(53546011)(26005)(356005)(36860700001)(70586007)(2906002)(8676002)(31696002)(54906003)(82310400003)(110136005)(4001150100001)(16576012)(4326008)(5660300002)(426003)(186003)(70206006)(16526019)(336012)(7416002)(86362001)(3940600001)(43740500002)(36900700001)(2101003);
 DIR:OUT; SFP:1102; 
X-OriginatorOrg: lenovo.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Nov 2021 20:35:21.6917 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bdabcf4e-9762-4fc1-2fd7-08d9a9409cba
X-MS-Exchange-CrossTenant-Id: 5c7d0b28-bdf8-410c-aa93-4df372b16203
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=5c7d0b28-bdf8-410c-aa93-4df372b16203; Ip=[104.232.225.7];
 Helo=[mail.lenovo.com]
X-MS-Exchange-CrossTenant-AuthSource: SG2APC01FT0034.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR03MB3338
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Thomas, On 2021-11-13 05:42, Thomas Weißschuh wrote: >
    This adds support for the force-discharge charge_behaviour through the >
   embedded controller of ThinkPads. > > Signed-off-by: Thomas Weißschuh <linux@w
    [...] 
 
 Content analysis details:   (-2.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [67.219.246.116 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [67.219.246.116 listed in wl.mailspike.net]
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
X-Headers-End: 1mn5B3-00FIWm-Gu
Subject: Re: [ibm-acpi-devel] [External] [PATCH 3/4] platform/x86:
 thinkpad_acpi: support force-discharge
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
 linux-kernel@vger.kernel.org, smclt30p@gmail.com, hadess@hadess.net,
 njoshi1@lenovo.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGkgVGhvbWFzLAoKT24gMjAyMS0xMS0xMyAwNTo0MiwgVGhvbWFzIFdlacOfc2NodWggd3JvdGU6
Cj4gVGhpcyBhZGRzIHN1cHBvcnQgZm9yIHRoZSBmb3JjZS1kaXNjaGFyZ2UgY2hhcmdlX2JlaGF2
aW91ciB0aHJvdWdoIHRoZQo+IGVtYmVkZGVkIGNvbnRyb2xsZXIgb2YgVGhpbmtQYWRzLgo+IAo+
IFNpZ25lZC1vZmYtYnk6IFRob21hcyBXZWnDn3NjaHVoIDxsaW51eEB3ZWlzc3NjaHVoLm5ldD4K
PiAKPiAtLS0KPiAKPiBUaGlzIHBhdGNoIGlzIGJhc2VkIG9uIGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL3BsYXRmb3JtLWRyaXZlci14ODYvYzI1MDQ3MDAtMDZlOS1lN2Q4LTgwZjctZGU5MGIwYjZk
ZmI1QGdtYWlsLmNvbS8+PiAtLS0KPiAgZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNw
aS5jIHwgMTAzICsrKysrKysrKysrKysrKysrKysrKysrKystLQo+ICAxIGZpbGUgY2hhbmdlZCwg
OTkgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jIGIvZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhp
bmtwYWRfYWNwaS5jCj4gaW5kZXggOWM2MzJkZjczNGJiLi5lOGM5OGU5YWZmNzEgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jCj4gKysrIGIvZHJpdmVy
cy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jCj4gQEAgLTkzMTksNiArOTMxOSw4IEBAIHN0
YXRpYyBzdHJ1Y3QgaWJtX3N0cnVjdCBtdXRlX2xlZF9kcml2ZXJfZGF0YSA9IHsKPiAgI2RlZmlu
ZSBTRVRfU1RBUlQJIkJDQ1MiCj4gICNkZWZpbmUgR0VUX1NUT1AJIkJDU0ciCj4gICNkZWZpbmUg
U0VUX1NUT1AJIkJDU1MiCj4gKyNkZWZpbmUgR0VUX0RJU0NIQVJHRQkiQkRTRyIKPiArI2RlZmlu
ZSBTRVRfRElTQ0hBUkdFCSJCRFNTIgo+ICAKPiAgZW51bSB7Cj4gIAlCQVRfQU5ZID0gMCwKPiBA
QCAtOTMzNSw2ICs5MzM3LDcgQEAgZW51bSB7Cj4gIAkvKiBUaGlzIGlzIHVzZWQgaW4gdGhlIGdl
dC9zZXQgaGVscGVycyAqLwo+ICAJVEhSRVNIT0xEX1NUQVJULAo+ICAJVEhSRVNIT0xEX1NUT1As
Cj4gKwlGT1JDRV9ESVNDSEFSR0UsCj4gIH07Cj4gIAo+ICBzdHJ1Y3QgdHBhY3BpX2JhdHRlcnlf
ZGF0YSB7Cj4gQEAgLTkzNDIsNiArOTM0NSw3IEBAIHN0cnVjdCB0cGFjcGlfYmF0dGVyeV9kYXRh
IHsKPiAgCWludCBzdGFydF9zdXBwb3J0Owo+ICAJaW50IGNoYXJnZV9zdG9wOwo+ICAJaW50IHN0
b3Bfc3VwcG9ydDsKPiArCXVuc2lnbmVkIGludCBjaGFyZ2VfYmVoYXZpb3VyczsKPiAgfTsKPiAg
Cj4gIHN0cnVjdCB0cGFjcGlfYmF0dGVyeV9kcml2ZXJfZGF0YSB7Cj4gQEAgLTkzOTksNiArOTQw
MywxMiBAQCBzdGF0aWMgaW50IHRwYWNwaV9iYXR0ZXJ5X2dldChpbnQgd2hhdCwgaW50IGJhdHRl
cnksIGludCAqcmV0KQo+ICAJCWlmICgqcmV0ID09IDApCj4gIAkJCSpyZXQgPSAxMDA7Cj4gIAkJ
cmV0dXJuIDA7Cj4gKwljYXNlIEZPUkNFX0RJU0NIQVJHRToKPiArCQlpZiBBQ1BJX0ZBSUxVUkUo
dHBhY3BpX2JhdHRlcnlfYWNwaV9ldmFsKEdFVF9ESVNDSEFSR0UsIHJldCwgYmF0dGVyeSkpCj4g
KwkJCXJldHVybiAtRU5PREVWOwo+ICsJCS8qIFRoZSBmb3JjZSBkaXNjaGFyZ2Ugc3RhdHVzIGlz
IGluIGJpdCAwICovCj4gKwkJKnJldCA9ICpyZXQgJiAweDAxOwo+ICsJCXJldHVybiAwOwo+ICAJ
ZGVmYXVsdDoKPiAgCQlwcl9jcml0KCJ3cm9uZyBwYXJhbWV0ZXI6ICVkIiwgd2hhdCk7Cj4gIAkJ
cmV0dXJuIC1FSU5WQUw7Cj4gQEAgLTk0MjcsNiArOTQzNywxNiBAQCBzdGF0aWMgaW50IHRwYWNw
aV9iYXR0ZXJ5X3NldChpbnQgd2hhdCwgaW50IGJhdHRlcnksIGludCB2YWx1ZSkKPiAgCQkJcmV0
dXJuIC1FTk9ERVY7Cj4gIAkJfQo+ICAJCXJldHVybiAwOwo+ICsJY2FzZSBGT1JDRV9ESVNDSEFS
R0U6Cj4gKwkJLyogRm9yY2UgZGlzY2hhcmdlIGlzIGluIGJpdCAwLAo+ICsJCSAqIGJyZWFrIG9u
IEFDIGF0dGFjaCBpcyBpbiBiaXQgMSAod29uJ3Qgd29yayBvbiBzb21lIFRoaW5rUGFkcyksCj4g
KwkJICogYmF0dGVyeSBJRCBpcyBpbiBiaXRzIDgtOSwgMiBiaXRzLgo+ICsJCSAqLwo+ICsJCWlm
IChBQ1BJX0ZBSUxVUkUodHBhY3BpX2JhdHRlcnlfYWNwaV9ldmFsKFNFVF9ESVNDSEFSR0UsICZy
ZXQsIHBhcmFtKSkpIHsKPiArCQkJcHJfZXJyKCJmYWlsZWQgdG8gc2V0IGZvcmNlIGRpc2NocmFn
ZSBvbiAlZCIsIGJhdHRlcnkpOwo+ICsJCQlyZXR1cm4gLUVOT0RFVjsKPiArCQl9Cj4gKwkJcmV0
dXJuIDA7Cj4gIAlkZWZhdWx0Ogo+ICAJCXByX2NyaXQoIndyb25nIHBhcmFtZXRlcjogJWQiLCB3
aGF0KTsKPiAgCQlyZXR1cm4gLUVJTlZBTDsKPiBAQCAtOTQ0NSw2ICs5NDY1LDggQEAgc3RhdGlj
IGludCB0cGFjcGlfYmF0dGVyeV9wcm9iZShpbnQgYmF0dGVyeSkKPiAgCSAqIDIpIENoZWNrIGZv
ciBzdXBwb3J0Cj4gIAkgKiAzKSBHZXQgdGhlIGN1cnJlbnQgc3RvcCB0aHJlc2hvbGQKPiAgCSAq
IDQpIENoZWNrIGZvciBzdXBwb3J0Cj4gKwkgKiA1KSBHZXQgdGhlIGN1cnJlbnQgZm9yY2UgZGlz
Y2hhcmdlIHN0YXR1cwo+ICsJICogNikgQ2hlY2sgZm9yIHN1cHBvcnQKPiAgCSAqLwo+ICAJaWYg
KGFjcGlfaGFzX21ldGhvZChoa2V5X2hhbmRsZSwgR0VUX1NUQVJUKSkgewo+ICAJCWlmIEFDUElf
RkFJTFVSRSh0cGFjcGlfYmF0dGVyeV9hY3BpX2V2YWwoR0VUX1NUQVJULCAmcmV0LCBiYXR0ZXJ5
KSkgewo+IEBAIC05NDgxLDEwICs5NTAzLDI1IEBAIHN0YXRpYyBpbnQgdHBhY3BpX2JhdHRlcnlf
cHJvYmUoaW50IGJhdHRlcnkpCj4gIAkJCXJldHVybiAtRU5PREVWOwo+ICAJCX0KPiAgCX0KPiAt
CXByX2luZm8oImJhdHRlcnkgJWQgcmVnaXN0ZXJlZCAoc3RhcnQgJWQsIHN0b3AgJWQpIiwKPiAt
CQkJYmF0dGVyeSwKPiAtCQkJYmF0dGVyeV9pbmZvLmJhdHRlcmllc1tiYXR0ZXJ5XS5jaGFyZ2Vf
c3RhcnQsCj4gLQkJCWJhdHRlcnlfaW5mby5iYXR0ZXJpZXNbYmF0dGVyeV0uY2hhcmdlX3N0b3Ap
Owo+ICsJaWYgKGFjcGlfaGFzX21ldGhvZChoa2V5X2hhbmRsZSwgR0VUX0RJU0NIQVJHRSkpIHsK
PiArCQlpZiAoQUNQSV9GQUlMVVJFKHRwYWNwaV9iYXR0ZXJ5X2FjcGlfZXZhbChHRVRfRElTQ0hB
UkdFLCAmcmV0LCBiYXR0ZXJ5KSkpIHsKPiArCQkJcHJfZXJyKCJFcnJvciBwcm9iaW5nIGJhdHRl
cnkgZGlzY2hhcmdlOyAlZFxuIiwgYmF0dGVyeSk7Cj4gKwkJCXJldHVybiAtRU5PREVWOwo+ICsJ
CX0KPiArCQkvKiBTdXBwb3J0IGlzIG1hcmtlZCBpbiBiaXQgOCAqLwo+ICsJCWlmIChyZXQgJiBC
SVQoOCkpCj4gKwkJCWJhdHRlcnlfaW5mby5iYXR0ZXJpZXNbYmF0dGVyeV0uY2hhcmdlX2JlaGF2
aW91cnMgfD0KPiArCQkJCUJJVChQT1dFUl9TVVBQTFlfQ0hBUkdFX0JFSEFWSU9VUl9GT1JDRV9E
SVNDSEFSR0UpOwo+ICsJfQo+ICsKPiArCWJhdHRlcnlfaW5mby5iYXR0ZXJpZXNbYmF0dGVyeV0u
Y2hhcmdlX2JlaGF2aW91cnMgfD0KPiArCQlCSVQoUE9XRVJfU1VQUExZX0NIQVJHRV9CRUhBVklP
VVJfQVVUTyk7Cj4gKwo+ICsJcHJfaW5mbygiYmF0dGVyeSAlZCByZWdpc3RlcmVkIChzdGFydCAl
ZCwgc3RvcCAlZCwgYmVoYXZpb3VyczogMHgleClcbiIsCj4gKwkJYmF0dGVyeSwKPiArCQliYXR0
ZXJ5X2luZm8uYmF0dGVyaWVzW2JhdHRlcnldLmNoYXJnZV9zdGFydCwKPiArCQliYXR0ZXJ5X2lu
Zm8uYmF0dGVyaWVzW2JhdHRlcnldLmNoYXJnZV9zdG9wLAo+ICsJCWJhdHRlcnlfaW5mby5iYXR0
ZXJpZXNbYmF0dGVyeV0uY2hhcmdlX2JlaGF2aW91cnMpOwo+ICAKPiAgCXJldHVybiAwOwo+ICB9
Cj4gQEAgLTk2MTksNiArOTY1NiwyOCBAQCBzdGF0aWMgc3NpemVfdCBjaGFyZ2VfY29udHJvbF9l
bmRfdGhyZXNob2xkX3Nob3coc3RydWN0IGRldmljZSAqZGV2aWNlLAo+ICAJcmV0dXJuIHRwYWNw
aV9iYXR0ZXJ5X3Nob3coVEhSRVNIT0xEX1NUT1AsIGRldmljZSwgYnVmKTsKPiAgfQo+ICAKPiAr
c3RhdGljIHNzaXplX3QgY2hhcmdlX2JlaGF2aW91cl9zaG93KHN0cnVjdCBkZXZpY2UgKmRldiwK
PiArCQkJCSAgICAgc3RydWN0IGRldmljZV9hdHRyaWJ1dGUgKmF0dHIsCj4gKwkJCQkgICAgIGNo
YXIgKmJ1ZikKPiArewo+ICsJZW51bSBwb3dlcl9zdXBwbHlfY2hhcmdlX2JlaGF2aW91ciBhY3Rp
dmUgPSBQT1dFUl9TVVBQTFlfQ0hBUkdFX0JFSEFWSU9VUl9BVVRPOwo+ICsJc3RydWN0IHBvd2Vy
X3N1cHBseSAqc3VwcGx5ID0gdG9fcG93ZXJfc3VwcGx5KGRldik7Cj4gKwl1bnNpZ25lZCBpbnQg
YXZhaWxhYmxlOwo+ICsJaW50IHJldCwgYmF0dGVyeTsKPiArCj4gKwliYXR0ZXJ5ID0gdHBhY3Bp
X2JhdHRlcnlfZ2V0X2lkKHN1cHBseS0+ZGVzYy0+bmFtZSk7Cj4gKwlhdmFpbGFibGUgPSBiYXR0
ZXJ5X2luZm8uYmF0dGVyaWVzW2JhdHRlcnldLmNoYXJnZV9iZWhhdmlvdXJzOwo+ICsKPiArCWlm
IChhdmFpbGFibGUgJiBCSVQoUE9XRVJfU1VQUExZX0NIQVJHRV9CRUhBVklPVVJfRk9SQ0VfRElT
Q0hBUkdFKSkgewo+ICsJCWlmICh0cGFjcGlfYmF0dGVyeV9nZXQoRk9SQ0VfRElTQ0hBUkdFLCBi
YXR0ZXJ5LCAmcmV0KSkKPiArCQkJcmV0dXJuIC1FTk9ERVY7Cj4gKwkJaWYgKHJldCkKPiArCQkJ
YWN0aXZlID0gUE9XRVJfU1VQUExZX0NIQVJHRV9CRUhBVklPVVJfRk9SQ0VfRElTQ0hBUkdFOwo+
ICsJfQo+ICsKPiArCXJldHVybiBwb3dlcl9zdXBwbHlfY2hhcmdlX2JlaGF2aW91cl9zaG93KGRl
diwgYXZhaWxhYmxlLCBhY3RpdmUsIGJ1Zik7Cj4gK30KPiArCj4gIHN0YXRpYyBzc2l6ZV90IGNo
YXJnZV9jb250cm9sX3N0YXJ0X3RocmVzaG9sZF9zdG9yZShzdHJ1Y3QgZGV2aWNlICpkZXYsCj4g
IAkJCQlzdHJ1Y3QgZGV2aWNlX2F0dHJpYnV0ZSAqYXR0ciwKPiAgCQkJCWNvbnN0IGNoYXIgKmJ1
Ziwgc2l6ZV90IGNvdW50KQo+IEBAIC05NjMzLDggKzk2OTIsNDMgQEAgc3RhdGljIHNzaXplX3Qg
Y2hhcmdlX2NvbnRyb2xfZW5kX3RocmVzaG9sZF9zdG9yZShzdHJ1Y3QgZGV2aWNlICpkZXYsCj4g
IAlyZXR1cm4gdHBhY3BpX2JhdHRlcnlfc3RvcmUoVEhSRVNIT0xEX1NUT1AsIGRldiwgYnVmLCBj
b3VudCk7Cj4gIH0KPiAgCj4gK3N0YXRpYyBzc2l6ZV90IGNoYXJnZV9iZWhhdmlvdXJfc3RvcmUo
c3RydWN0IGRldmljZSAqZGV2LAo+ICsJCQkJICAgICAgc3RydWN0IGRldmljZV9hdHRyaWJ1dGUg
KmF0dHIsCj4gKwkJCQkgICAgICBjb25zdCBjaGFyICpidWYsIHNpemVfdCBjb3VudCkKPiArewo+
ICsJc3RydWN0IHBvd2VyX3N1cHBseSAqc3VwcGx5ID0gdG9fcG93ZXJfc3VwcGx5KGRldik7Cj4g
KwlpbnQgc2VsZWN0ZWQsIGJhdHRlcnksIHJldDsKPiArCXVuc2lnbmVkIGludCBhdmFpbGFibGU7
Cj4gKwo+ICsJYmF0dGVyeSA9IHRwYWNwaV9iYXR0ZXJ5X2dldF9pZChzdXBwbHktPmRlc2MtPm5h
bWUpOwo+ICsJYXZhaWxhYmxlID0gYmF0dGVyeV9pbmZvLmJhdHRlcmllc1tiYXR0ZXJ5XS5jaGFy
Z2VfYmVoYXZpb3VyczsKPiArCXNlbGVjdGVkID0gcG93ZXJfc3VwcGx5X2NoYXJnZV9iZWhhdmlv
dXJfcGFyc2UoYXZhaWxhYmxlLCBidWYpOwo+ICsKPiArCWlmIChzZWxlY3RlZCA8IDApCj4gKwkJ
cmV0dXJuIHNlbGVjdGVkOwo+ICsKPiArCXN3aXRjaCAoc2VsZWN0ZWQpIHsKPiArCWNhc2UgUE9X
RVJfU1VQUExZX0NIQVJHRV9CRUhBVklPVVJfQVVUTzoKPiArCQlyZXQgPSB0cGFjcGlfYmF0dGVy
eV9zZXQoRk9SQ0VfRElTQ0hBUkdFLCBiYXR0ZXJ5LCAwKTsKPiArCQlpZiAocmV0IDwgMCkKPiAr
CQkJcmV0dXJuIHJldDsKPiArCQlicmVhazsKPiArCWNhc2UgUE9XRVJfU1VQUExZX0NIQVJHRV9C
RUhBVklPVVJfRk9SQ0VfRElTQ0hBUkdFOgo+ICsJCXJldCA9IHRwYWNwaV9iYXR0ZXJ5X3NldChG
T1JDRV9ESVNDSEFSR0UsIGJhdHRlcnksIDEpOwo+ICsJCWlmIChyZXQgPCAwKQo+ICsJCQlyZXR1
cm4gcmV0Owo+ICsJCWJyZWFrOwo+ICsJZGVmYXVsdDoKPiArCQlkZXZfZXJyKGRldiwgIlVuZXhw
ZWN0ZWQgY2hhcmdlIGJlaGF2aW91cjogJWRcbiIsIHNlbGVjdGVkKTsKPiArCQlyZXR1cm4gLUVJ
TlZBTDsKPiArCX0KPiArCj4gKwlyZXR1cm4gY291bnQ7Cj4gK30KPiArCj4gIHN0YXRpYyBERVZJ
Q0VfQVRUUl9SVyhjaGFyZ2VfY29udHJvbF9zdGFydF90aHJlc2hvbGQpOwo+ICBzdGF0aWMgREVW
SUNFX0FUVFJfUlcoY2hhcmdlX2NvbnRyb2xfZW5kX3RocmVzaG9sZCk7Cj4gK3N0YXRpYyBERVZJ
Q0VfQVRUUl9SVyhjaGFyZ2VfYmVoYXZpb3VyKTsKPiAgc3RhdGljIHN0cnVjdCBkZXZpY2VfYXR0
cmlidXRlIGRldl9hdHRyX2NoYXJnZV9zdGFydF90aHJlc2hvbGQgPSBfX0FUVFIoCj4gIAljaGFy
Z2Vfc3RhcnRfdGhyZXNob2xkLAo+ICAJMDY0NCwKPiBAQCAtOTY1Myw2ICs5NzQ3LDcgQEAgc3Rh
dGljIHN0cnVjdCBhdHRyaWJ1dGUgKnRwYWNwaV9iYXR0ZXJ5X2F0dHJzW10gPSB7Cj4gIAkmZGV2
X2F0dHJfY2hhcmdlX2NvbnRyb2xfZW5kX3RocmVzaG9sZC5hdHRyLAo+ICAJJmRldl9hdHRyX2No
YXJnZV9zdGFydF90aHJlc2hvbGQuYXR0ciwKPiAgCSZkZXZfYXR0cl9jaGFyZ2Vfc3RvcF90aHJl
c2hvbGQuYXR0ciwKPiArCSZkZXZfYXR0cl9jaGFyZ2VfYmVoYXZpb3VyLmF0dHIsCj4gIAlOVUxM
LAo+ICB9Owo+ICAKPiAKU29ycnkgZm9yIHRoZSBzbG93IHJldmlldyAtIGJlZW4gYnVzeSB0aGlz
IHdlZWsuIFRoYW5rIHlvdSBmb3IKaW1wbGVtZW50aW5nIHRoaXMgLSBpdCdzIGdyZWF0IHRvIGJl
IGdldHRpbmcgdGhpcyBpbnRvIHRoZSBrZXJuZWwgYW5kCml0J3Mgc29tZXRoaW5nIHdlIGhhdmUg
aGFkIG9uIG91ciB0b2RvIGxpc3QgZm9yIGEgbGl0dGxlIHdoaWxlIG5vdy4KCkkgY2FuIGNvbmZp
cm0gdGhlIEJEU0cgYW5kIEJEU1MgQVBJcyBhcmUgY29ycmVjdCBhbG9uZyB3aXRoIHRoZSBiaXQK
ZmllbGQgZGVmaW5lcyB5b3UgaGF2ZSB1c2VkLiBOb3Qgc3VyZSBpZiB0aGF0J3MgaGVscGZ1bCBi
dXQgYXMgSSBoYXZlCmFjY2VzcyB0byBzb21lIGludGVybmFsIGRvY3VtZW50cyBJIGZpZ3VyZWQg
SSdkIGNoZWNrIDopCgpJJ2xsIG5vdGUgdGhhdCBiaXQgMTAgaW4gQkRTRyBzaG91bGQgZmxhZyBp
ZiB0aGUgJ2VuYWJsZSBicmVha2luZyBieSBBQwpkZXRhY2hpbmcnIGZlYXR1cmUgaXMgc3VwcG9y
dGVkLiBZb3UncmUgbm90IHVzaW5nIGl0IHNvIEkgZG9uJ3QgdGhpbmsKdGhhdCdzIGltcG9ydGFu
dCAtIGJ1dCBmaWd1cmVkIEknZCBtZW50aW9uIGl0IGJlY2F1c2Ugb2YgdGhlIGNvbW1lbnQKdGhh
dCBub3QgYWxsIHRoaW5rcGFkcyBzdXBwb3J0IGl0LgoKTWFyawoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwppYm0tYWNwaS1kZXZlbCBtYWlsaW5nIGxp
c3QKaWJtLWFjcGktZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291
cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2libS1hY3BpLWRldmVsCg==

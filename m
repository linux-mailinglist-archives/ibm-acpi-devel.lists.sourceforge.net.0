Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 335DA51492B
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 29 Apr 2022 14:22:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1nkPdS-0000UB-BB; Fri, 29 Apr 2022 12:22:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <markpearson@lenovo.com>) id 1nkPdP-0000Tu-IK
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 29 Apr 2022 12:22:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:CC:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qDQRckvWjAZYIXX4XtZVxNPggDs4QX/rS1CQ1Ju5i2U=; b=W+XD04mtl9wNLM5hVBD8nEBEgW
 NPLLd/5yT6YfFw90YOKKcel5PmaiUYQSmC7D+0AshOVCz9198Dx9jr+brYIo0dePxlbtnB8mU313C
 H/qaqntnToJ23jpKjrApBO2NcsOCwqzLH21kPa5ZJJwNgagdUwAXZxr+MJwSTJcTTcYI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:CC:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qDQRckvWjAZYIXX4XtZVxNPggDs4QX/rS1CQ1Ju5i2U=; b=nUn1sV5ZyD1UkphXSLR3kXi0xA
 njLuRn/h2uQi0tSl1hUCBg/qM1laFtQnYEgtadklS9jSIn+E4aF2+4+gFnsGHzZaA2NlCu452vFBP
 6ECIP8SMQzJaeCyNq1coj53TagAb3UmGM4M9xx6arihInbvwVKoRBssLmOR1TwIACARA=;
Received: from mail1.bemta31.messagelabs.com ([67.219.246.112])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nkPdK-0000oC-5A
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 29 Apr 2022 12:22:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lenovo.com;
 s=Selector; t=1651234914; i=@lenovo.com;
 bh=qDQRckvWjAZYIXX4XtZVxNPggDs4QX/rS1CQ1Ju5i2U=;
 h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
 In-Reply-To:Content-Type:Content-Transfer-Encoding;
 b=gkALruv3624fxE956wMOwSIw95dsHIYWr0bQ9fH3ka91SySd+Jw2LCh/qM4whjsS2
 9XyH9/44Wwwzk7j++atPv1GVuHC1hkt8Rsn/eurp6T2Vi9g1kIW3t+6Agm1rTtikhL
 +rTv9DVrDjQUgYBJqXqwHtUYvuPGCSfc8M2hDXlXjwVQ1bTNsnLKsHWGbOP5ynh2Xj
 nssbaGbYm3v2yn2p54AL4QCdkiAO3ZOIdU8RX8nm7arvrfjVVXaxXvlQ9sMoIS7OH+
 1LYTe+ZYAMb8kFPnemS3dHGeT5qUt7HEE/1M0B4p0jBCUZvqpAaBkwP+mhkB3acLfi
 F7G8GBsVFwYLQ==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrBJsWRWlGSWpSXmKPExsWSoZ+nrZt4Izv
 J4OVMNYs3x6czWaz/vZLFYvZhG4vLu+awWXzumMxisXrPC2YHNo/fBxg95p0M9Ni94DOTx/t9
 V9k8Pm+SC2CNYs3MS8qvSGDNeHboHmvBFv6KN3/esTUwrubpYuTiYBRYyixxcvd9VghnEavE+
 onX2SGcNiaJbfPusIA4QgLzmSRu9z1jhHAOM0k0Nn5i6mLk5JAQOM4o0b3KHSLRySixe+sPNg
 hnApPEsrVzoJwnjBL/TuxkgnN2HD/IDNLPK2Ar0d/6mA3EZhFQldj/6CMbRFxQ4uTMJywgtqh
 AuET3/v2sILawQLHE5l+3wGqYBcQlbj2ZD3aHCFDNmc8bwbYxCyxikjhx7AwjSEJIoEBi4cQz
 YEVsAtoSW7b8AmvmFLCTODz1FyPEIE2J1u2/2SFseYntb+cwQ/QqS/zqP88M8aiixLPj/SwQd
 oJE85SjjBC2pMS1mxfYIWxZiaNn5wDVcADZvhJ37xlDhHUluhdugRpjI/H2BoydI3Hr/z/GCY
 x6s5C8PAvJa7OQXDcLyXULGFlWMVolFWWmZ5TkJmbm6BoaGOgaGpromuoaGZjrJVbpJuqVFuu
 mJhaX6BrqJZYX66UWF+sVV+Ym56To5aWWbGIEJq+UItbzOxiX9/zUO8QoycGkJMr7/ER2khBf
 Un5KZUZicUZ8UWlOavEhRhkODiUJXp1rQDnBotT01Iq0zBxgIoVJS3DwKInwPr4MlOYtLkjML
 c5Mh0idYjTmuLJt715mjvM79+9lFmLJy89LlRLnLb0OVCoAUppRmgc3CJbgLzHKSgnzMjIwMA
 jxFKQW5WaWoMq/YhTnYFQS5r0CMoUnM68Ebt8roFOYgE5ZWZQJckpJIkJKqoHJdcGkPZZpmZ1
 Wm+ZttDo896NSu7hLypfrWTt9907/OLnjzq/8XMaYix1+Hgni4fFba1Z+EwrcuYlvm4Lrvsaw
 6absl759OnrZ7cbc/RHqkXzOvZJJtl4MvefcJDTtmTvmiHkWu35MqZHokeRZbbfy0BWRa2ybz
 vO+nepTFnTm1iTep3sfVhSnPJDM149QnRnMs/zZkwLmiy9cfqjePKv6946O9O1X6vVHS8wLfz
 aY/lFWDy1VO7nteLrxvjfTTydMaA2MjZtfq8/FnrHqjoTNfYln99guta1fHFv6L9OCKTi1fP3
 DpeLVMtODOfSfBn9fZ3xio/LynMRjTx42NnbenJsQ92Ovr2KukT2PhooSS3FGoqEWc1FxIgCd
 m0jdawQAAA==
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-14.tower-686.messagelabs.com!1651234911!26678!2
X-Originating-IP: [104.47.110.43]
X-SYMC-ESS-Client-Auth: mailfrom-relay-check=pass
X-StarScan-Received: 
X-StarScan-Version: 9.86.4; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 27906 invoked from network); 29 Apr 2022 12:21:53 -0000
Received: from mail-tyzapc01lp2043.outbound.protection.outlook.com (HELO
 APC01-TYZ-obe.outbound.protection.outlook.com) (104.47.110.43)
 by server-14.tower-686.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 29 Apr 2022 12:21:53 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ih8uUsnNhthbXJNZBntdRMaaJjO8P1+R5tuwxGfZtpuRbn54I35RQnv8KrmzNwY+XiU6l9BDnIprLKmvSK57WpV7NXUYzX+SjR1EobuMOZaeyxDmZIUH9Hix7i9Zqma0J8LEuHI1j2ing0phixgKlHqReC51W77ySmcixHVNtNCpDuHyakVRxeN+NhhAq1Xn8qdZJ1AKRfsiS8Y77+V1oJdx+cCvf4OATriEzlQFl6RhCYnXidk7m6i5mjtmZHOaYlcNNekh1Hwp210tqXz2+d4NGkjCnpvDiFq+/EyzXR+eHWNMVSs1LmnIu15AQZeH783ZwZbFDabrwlt0Q1N2Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qDQRckvWjAZYIXX4XtZVxNPggDs4QX/rS1CQ1Ju5i2U=;
 b=laFvuujgStGhOr6sKtQf6JC/bVJXCmksusS9Xc5n1Wx62+QzD4Cs2KeU0QvCuSAPWNpt+PXsp5UVNLHW3kwYLu19QzOvgRWd4qYDPDR4A950Gr9/f62EZgHQbt4BTfyQCngHLXj/vM9Jkylve2yAyqCCQIws8HpAQJwljE1TLrpKbZDniF3sTrBfOk2/ocWenS9XEA4lxEOi3sxo2usoKQwHVAwjptqtapXTnP+cJ9JEntrbMBLu7FErgULAhJK+3lNyP1ZpzbcGcaHNbjGEZ75GwQ63nPz6qOsg8sltgWVXjDJyRxAVwbYWrhBVTci88cmTecgj6+jBfgIRXwGYog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 104.232.225.6) smtp.rcpttodomain=amd.com smtp.mailfrom=lenovo.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=lenovo.com;
 dkim=none (message not signed); arc=none
Received: from PS2PR02CA0060.apcprd02.prod.outlook.com (2603:1096:300:5a::24)
 by SL2PR03MB4233.apcprd03.prod.outlook.com (2603:1096:100:46::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.14; Fri, 29 Apr
 2022 12:21:47 +0000
Received: from PSAAPC01FT067.eop-APC01.prod.protection.outlook.com
 (2603:1096:300:5a:cafe::3a) by PS2PR02CA0060.outlook.office365.com
 (2603:1096:300:5a::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.14 via Frontend
 Transport; Fri, 29 Apr 2022 12:21:47 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is
 104.232.225.6) smtp.mailfrom=lenovo.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=lenovo.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 lenovo.com discourages use of 104.232.225.6 as permitted sender)
Received: from mail.lenovo.com (104.232.225.6) by
 PSAAPC01FT067.mail.protection.outlook.com (10.13.38.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5206.12 via Frontend Transport; Fri, 29 Apr 2022 12:21:46 +0000
Received: from reswpmail01.lenovo.com (10.62.32.20) by mail.lenovo.com
 (10.62.123.116) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2308.27; Fri, 29 Apr
 2022 08:21:44 -0400
Received: from [10.46.196.199] (10.46.196.199) by reswpmail01.lenovo.com
 (10.62.32.20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2308.27; Fri, 29 Apr
 2022 08:22:47 -0400
Message-ID: <a5faa9e6-feba-6a76-de53-1c9d2c572da4@lenovo.com>
Date: Fri, 29 Apr 2022 08:21:43 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Mario Limonciello <mario.limonciello@amd.com>, Hans de Goede
 <hdegoede@redhat.com>
References: <20220429030501.1909-1-mario.limonciello@amd.com>
 <20220429030501.1909-3-mario.limonciello@amd.com>
From: Mark Pearson <markpearson@lenovo.com>
In-Reply-To: <20220429030501.1909-3-mario.limonciello@amd.com>
X-Originating-IP: [10.46.196.199]
X-ClientProxiedBy: reswpmail01.lenovo.com (10.62.32.20) To
 reswpmail01.lenovo.com (10.62.32.20)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: caf02da9-e4af-489a-6801-08da29dad453
X-MS-TrafficTypeDiagnostic: SL2PR03MB4233:EE_
X-LD-Processed: 5c7d0b28-bdf8-410c-aa93-4df372b16203,ExtAddr
X-Microsoft-Antispam-PRVS: <SL2PR03MB4233F429ABA93A983F7E4678C5FC9@SL2PR03MB4233.apcprd03.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 05dEwvCdPWVG0Fy37s/5cVXdngfZ7B4RBfw+yZLjK9s4RS2xp7YHBKNMOgfbYH9J4Kx6UTe/ZDT9DbMEPyx0nx9+f+JbynBUxXrGVMNJQI4OT7ipsuLV8pcEUOv/lWNCn/jRQNn4kLt0SLtfCTOsEd+pbDC+5RsqHk8h4AxYsRBGAEmHRA/a+TGFWZcaw9LnCHmVzn+raqtSWvQ8b9hPFjZ9lS97hQb792wiqRgC7lgcW0Kue/m+9nVnLG9ft6JafZn/dQhcuLikjPGAsR5WTMl/H7pTeR68QQFMd45qbrcwBW+J690R5qYKlJNOwrGRRFMtCRwl2WCWscdAW4To6fUJv4xTgwPWbNnbPVHVK5Q2v7KKSoQ02nS9qKkjh7+0jSCfv0cgTLfSJR3kcIaTPg4Xk8Oa/0UaKaNT5UDjKjTxvF91YT1qczevZzQ8C+DqIGDo8iK1bDlFavRHkO+cW/zyyUoLif6K+1LjFc1Bq4OfayvF8/iuMbXNFZiSpaSz/yqOOzJRXGk2Qlq2IorWnSiE9NPmI7VpN6nJDGrkTfespb1/LjYHN/BogzTyOBj80CdUiucJIuGYst9MVaOo12FBfLoL7YTkCfN22PwqtsM4RIeraL0Inc8z6gb+lrp5FwlJ9cyTBs0F1t8QnWzlTGzROxt1n7idmSsmyv59WBkBQvW0ZWBhrlviHXno/wvJbARp8LWzgMvZSSs49dY+A1eL++UsexPn2lgiXdldpdsArwaCr6skDPgftRrbyVkn/RQZG6pedg0A3bB7MrwUcJLCEl5egr6EcQcKpmML4GvSMtIMKXhsT6nyAf1x2AqF
X-Forefront-Antispam-Report: CIP:104.232.225.6; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.lenovo.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230001)(4636009)(40470700004)(46966006)(36840700001)(36906005)(54906003)(8936002)(110136005)(966005)(5660300002)(83380400001)(82960400001)(508600001)(316002)(4326008)(70206006)(8676002)(70586007)(16576012)(86362001)(31696002)(426003)(2616005)(6666004)(26005)(47076005)(186003)(336012)(16526019)(2906002)(36860700001)(36756003)(53546011)(82310400005)(40460700003)(81166007)(31686004)(356005)(3940600001)(36900700001)(43740500002);
 DIR:OUT; SFP:1102; 
X-OriginatorOrg: lenovo.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2022 12:21:46.3817 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: caf02da9-e4af-489a-6801-08da29dad453
X-MS-Exchange-CrossTenant-Id: 5c7d0b28-bdf8-410c-aa93-4df372b16203
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=5c7d0b28-bdf8-410c-aa93-4df372b16203; Ip=[104.232.225.6];
 Helo=[mail.lenovo.com]
X-MS-Exchange-CrossTenant-AuthSource: PSAAPC01FT067.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SL2PR03MB4233
X-Spam-Score: -3.7 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 4/28/22 23:05, Mario Limonciello wrote: > Lenovo laptops
 that contain NVME SSDs across a variety of generations have > trouble resuming
 from suspend to idle when the IOMMU translation layer is > ac [...] 
 Content analysis details:   (-3.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [67.219.246.112 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [67.219.246.112 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.9 NICE_REPLY_A           Looks like a legit reply (A)
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nkPdK-0000oC-5A
Subject: Re: [ibm-acpi-devel] [External] [PATCH 2/2] platform/x86:
 thinkpad_acpi: Add a s2idle resume quirk for a number of laptops
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
Cc: "open list:THINKPAD ACPI EXTRAS DRIVER"
 <ibm-acpi-devel@lists.sourceforge.net>, Mark Gross <mgross@linux.intel.com>,
 open list <linux-kernel@vger.kernel.org>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>, "open list:THINKPAD ACPI EXTRAS
 DRIVER" <platform-driver-x86@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net


On 4/28/22 23:05, Mario Limonciello wrote:
> Lenovo laptops that contain NVME SSDs across a variety of generations have
> trouble resuming from suspend to idle when the IOMMU translation layer is
> active for the NVME storage device.
> 
> This generally manifests as a large resume delay or page faults. These
> delays and page faults occur as a result of a Lenovo BIOS specific SMI
> that runs during the D3->D0 transition on NVME devices.
> 
> This SMI occurs because of a flag that is set during resume by Lenovo
> firmware:
> 
> ```
> OperationRegion (PM80, SystemMemory, 0xFED80380, 0x10)
> Field (PM80, AnyAcc, NoLock, Preserve)
> {
> 	SI3R,   1
> }
> 
> Method (_ON, 0, NotSerialized)  // _ON_: Power On
> {
> 	TPST (0x60D0)
> 	If ((DAS3 == 0x00))
> 	{
> 		If (SI3R)
> 		{
> 			TPST (0x60E0)
> 			M020 (NBRI, 0x00, 0x00, 0x04, (NCMD | 0x06))
> 			M020 (NBRI, 0x00, 0x00, 0x10, NBAR)
> 			APMC = HDSI /* \HDSI */
> 			SLPS = 0x01
> 			SI3R = 0x00
> 			TPST (0x60E1)
> 		}
> 		D0NV = 0x01
> 	}
> }
> ```
> 
> Create a quirk that will run early in the resume process to prevent this
> SMI from running. As any of these machines are fixed, they can be peeled
> back from this quirk or narrowed down to individual firmware versions.
> 
> Link: https://gitlab.freedesktop.org/drm/amd/-/issues/1910>> Link: https://gitlab.freedesktop.org/drm/amd/-/issues/1689>> Signed-off-by: Mario Limonciello <mario.limonciello@amd.com>

Thanks Mario,

Tested the series on the T14 G1 AMD and it fixes the long delay when
resuming from S0ix suspend nicely.

Patches look good to me. I am working with the Lenovo FW teams for the
various platforms, but as S0ix support wasn't in the original scope I
don't know yet when (or if in some cases) they'll get FW fixes released.
I believe these changes are benign even once the FW is fixed so think
this is a great idea.

I'll push updates removing platform quirks once FW is released though.

Tested-by: Mark Pearson <markpearson@lenvo.com>



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

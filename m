Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 919C5515997
	for <lists+ibm-acpi-devel@lfdr.de>; Sat, 30 Apr 2022 03:26:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1nkbrb-0003eq-UW; Sat, 30 Apr 2022 01:25:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <markpearson@lenovo.com>) id 1nkbra-0003ek-6Y
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 30 Apr 2022 01:25:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:CC:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cPv7bKeMG/rz0uaufuazQ83ANBO7jSxEuLCyHmdZEpw=; b=EXI5/dp/Z2L6UQnbc8glP6C9ZK
 HQM17QmxPTqJSt5cd5LIHUmD0/TnZpvFUEnEZUJIMhGr5puxhowGOGrM4fudNZNTgUcFIS1FoU9H0
 Jyz/z+A5xL8lxl8KF/H18gToeOlCXoyqLNbsWxoN8n4yvBFhaAzbby3QihuLZoVo2ouY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:CC:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cPv7bKeMG/rz0uaufuazQ83ANBO7jSxEuLCyHmdZEpw=; b=ZG34eXCaxnl7W5UGeGPX+0aA6M
 bI020/MsHG4WWclK1Xo4vEgju80NuVgciRIssbihF8D+kcy83Rbr/yk6zWTUgly8xeW+PtfAEWFKH
 McjbXEDdCsyIOxAMCb8Ap10ls5WzlJkX/9H1FRRAAsi/LXufKkcYn+J4JhGi+palQtY0=;
Received: from mail1.bemta35.messagelabs.com ([67.219.250.2])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nkbrT-0004TK-9v
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 30 Apr 2022 01:25:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lenovo.com;
 s=Selector; t=1651281916; i=@lenovo.com;
 bh=cPv7bKeMG/rz0uaufuazQ83ANBO7jSxEuLCyHmdZEpw=;
 h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
 In-Reply-To:Content-Type:Content-Transfer-Encoding;
 b=X935Epm98dq6DP21kUmiCDlLzSIAaPGvt14jaTP2sOPq2DvwYRb0vTu+RQCZvMS9K
 gahC/9yR9+D7LGu9vXlQ+1r0Fo7RKeUqZJAso9xKSUGwjW2kwg4SPshX/R9dT6cnOZ
 JRz+ycH1ZKeC+RlveEE0gyqzDMaTom/G1eBt6r6UT8Qe4wkTMoRx/eLp2cfb5V9oQZ
 GbxCCeZS0Le0sRe6yS+JX30bgwbsg1Pq8Sw7ivr7qkVOu2FqBFxzxS3w+IN+HQF+7h
 5Qst2EVo/QOsfBdtCBjeqMc+p4BOyqbHYftEe6jaDPIIY7y8WoAJniMvXqX/ZbmoiJ
 XdkOXAnj5/14w==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrHJsWRWlGSWpSXmKPExsWSoS+lr/urPyf
 JYPcZTYs3x6czWaz/vZLFYvZhG4v211sZLS7vmsNmMXV3P6vFganTmC1W73nB7MDh8fsAo8em
 VZ1sHrsXfGbyeL/vKpvH501yAaxRrJl5SfkVCawZT6+9YS/YL1Qxecsr5gbGffxdjFwcjAJLm
 SW2vtvGBOEsYpW41b6QDcLpZJJY1D0TzBESmM8k0XzyAyOEc5hJ4uPLXexdjJwcEgLHGSW6V7
 lDJDoZJXZv/QHVMolJYumV+6wQzhNGid4lC5E4jb/A+nkFbCXWztzMBmKzCKhKnP2zihkiLih
 xcuYTFhBbVCBconv/flYQW1ggS2Jiz1GwemYBcYlbT+YzgdgiAoUSs1ZMZgFZwCywm1Fi+5rr
 YA1CAnES0y42gdlsAtoSW7b8AmvmFDCV2P7wHwvEIE2J1u2/2SFseYntb+cwQ/QqS/zqP88M8
 aiixLPj/SwQdoJE85SjjBC2pMS1mxeggSErcfTsHKgaX4nZnd+henUlVr25CFWTI/FlxlomCF
 tO4lTvOaYJjLqzkPw8C8lvs5CcNwvJeQsYWVYx2iQVZaZnlOQmZuboGhoY6BoamoBpI2MLvcQ
 q3US90mLd8tTiEl0jvcTyYr3U4mK94src5JwUvbzUkk2MwMSWUpTybgfj376feocYJTmYlER5
 KyxzkoT4kvJTKjMSizPii0pzUosPMWpwcAhcOXhkNqMUS15+XqqSBG9lC1CdYFFqempFWmYOM
 PnClEpw8CiJ8L5vB0rzFhck5hZnpkOkTjHac1zZtncvM8eDEyeB5KVDV4DktfUL9jELgU2VEu
 e16QNqEwBpyyjNgxsKyxaXGGWlhHkZGRgYhHgKUotyM0tQ5V8xinMwKgnzJoBM4cnMK4Hb/Qr
 oLCags1YWZYKcVZKIkJJqYNLb/Tt91+9Ib3aX2la7WzPPvfr8SbnCp7lUJtk/5YPIjkobpblz
 DNm++9caTYjg/BckwHi4wvzDJmXRuB/prYnSMx/w6n5v83/zwdZYf/Kz0m0sWWpvbCtKns3tq
 v7VmloVzPJgj0vCRQdV9+KZOR+f3bGeN+33yR2vL3bx7jpX1tTeuebArPZFaYpX+D6Ff/jUPO
 frBs7AivdbuGInr+LX1FHXkGV3kpHdw7vsR0v35il196efvV+1/3dugtLHj7wb2ed0LPuQrFo
 TWXcuImnmJBfOxT9lehaLP1hkl74+b8XqjSlOT+SUThtaFlTXHqwWbgqZpv/jVsDtMMXu5v97
 lim2Wt9K4l2ySkmlWYmlOCPRUIu5qDgRALfPXe6RBAAA
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-13.tower-655.messagelabs.com!1651281913!6664!1
X-Originating-IP: [104.47.26.47]
X-SYMC-ESS-Client-Auth: mailfrom-relay-check=pass
X-StarScan-Received: 
X-StarScan-Version: 9.86.4; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 6027 invoked from network); 30 Apr 2022 01:25:14 -0000
Received: from mail-psaapc01lp2047.outbound.protection.outlook.com (HELO
 APC01-PSA-obe.outbound.protection.outlook.com) (104.47.26.47)
 by server-13.tower-655.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 30 Apr 2022 01:25:14 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hOmrzbIAFkE/dGdmlbNQQ0b8W1S+unqr/sZEwER62B6t+Thpp6yO8bVcGtHaxVsWP3H6z+OEy/D63tH+Zg49YFpAxnTPO8/KyJ0E14/gZr009pAcLxJOqE7DbktyS8VZHVZNYeSrCEqXUWWV83xQzylLlOXSi5BwAM2CFyi54KP68Aw6yZuvu5mIEC4j6TAraEfhayjVTTzpeGvVetP0jHFC5KW3xfrzXNl3LIZRGVqCk7ZrKgjiQfpNAyxsTC6cngeKJ3M4oboZ9fPKFw9LOABXDq0nRozYQOKMTCaodAqDUJKE6ooRPQf7qYt9b81MLYZ0/uY3GSIHvEW9ckAagw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cPv7bKeMG/rz0uaufuazQ83ANBO7jSxEuLCyHmdZEpw=;
 b=n8RKVu7aWzgoTO25MmXcOBdPCJuFHUjzC5mp+NPcQtoo8miCExcAxnPQniWI47uavEu4WiZIFoZf5rCW5haiiNFUEdFXFmk7G/ZtS/pmPO2bKsOUGBtHpa2Px2lC6Ed1nR5ZZdPF0ofsxMX3EWi4z4kQ4Y/UGPJaYpHbNKbjdELqALpDWRX69VkwTcPGskNRwT2VhAKky58n11d80zvuQyNg20bz1nH8AWuKliRAJemeM6K5ZT7yebXzZyO4zWx/EbHRLdadkCBpTM8TKm5BOKxbmOO4lThRsfNkP+sLxu/vihTAJk90MQJ2hlecuDRsx/7urOxBG1CKXprGb1CweA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 104.232.225.6) smtp.rcpttodomain=redhat.com smtp.mailfrom=lenovo.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=lenovo.com;
 dkim=none (message not signed); arc=none
Received: from TY2PR04CA0015.apcprd04.prod.outlook.com (2603:1096:404:f6::27)
 by HK0PR03MB4738.apcprd03.prod.outlook.com (2603:1096:203:bd::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.12; Sat, 30 Apr
 2022 01:25:12 +0000
Received: from TYZAPC01FT012.eop-APC01.prod.protection.outlook.com
 (2603:1096:404:f6:cafe::9b) by TY2PR04CA0015.outlook.office365.com
 (2603:1096:404:f6::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.13 via Frontend
 Transport; Sat, 30 Apr 2022 01:25:12 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is
 104.232.225.6) smtp.mailfrom=lenovo.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=lenovo.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 lenovo.com discourages use of 104.232.225.6 as permitted sender)
Received: from mail.lenovo.com (104.232.225.6) by
 TYZAPC01FT012.mail.protection.outlook.com (10.118.152.146) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5206.12 via Frontend Transport; Sat, 30 Apr 2022 01:25:11 +0000
Received: from reswpmail01.lenovo.com (10.62.32.20) by mail.lenovo.com
 (10.62.123.116) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2308.27; Fri, 29 Apr
 2022 21:25:09 -0400
Received: from [10.46.196.199] (10.46.196.199) by reswpmail01.lenovo.com
 (10.62.32.20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2308.27; Fri, 29 Apr
 2022 21:26:13 -0400
Message-ID: <d3461670-a905-4956-4f4d-d847adf4289b@lenovo.com>
Date: Fri, 29 Apr 2022 21:25:08 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Lyude Paul <lyude@redhat.com>, <ibm-acpi-devel@lists.sourceforge.net>,
 <platform-driver-x86@vger.kernel.org>
References: <20220429211418.4546-1-lyude@redhat.com>
 <20220429211418.4546-2-lyude@redhat.com>
From: Mark Pearson <markpearson@lenovo.com>
In-Reply-To: <20220429211418.4546-2-lyude@redhat.com>
X-Originating-IP: [10.46.196.199]
X-ClientProxiedBy: reswpmail01.lenovo.com (10.62.32.20) To
 reswpmail01.lenovo.com (10.62.32.20)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 41fd90b0-1077-4fad-1169-08da2a484571
X-MS-TrafficTypeDiagnostic: HK0PR03MB4738:EE_
X-Microsoft-Antispam-PRVS: <HK0PR03MB473807677BF820AA17A66354C5FF9@HK0PR03MB4738.apcprd03.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RnPza9ZKEJXF1AWcP2c6sm6S2N/QdayAfOQMDMgX2P+GvQHdhb8ypRXZA0knWb5tg4lY6xW50WYR18kA3kas9ayGxeRdqn/lyBl0ssW7MTEX1aXbtcMznfVEiMAxvW+5lBCeWLBG82ayHwM1jNVXoP3YPvGliXkvdk2J9oPJ3YcuAP0JF6d38gXWHDs6ATUy5LctaQswqrcg2azjgQIdVuCju+QUNbudGk1w8+/PYSL6k4z45DLMVRvB0E1dicXhurl4rZlaV/wtLMd1f0FqxSCl6PIBUWJsru/gOmtXWSagOsuVUs3QqyUZdX/5rbXDvFSE1bmDz9nIullLWwRFOjt3TUNX+M67pu2V5FAAIfI+piVcnpzaPBz1v3myW89oHSEAuGk8GDayjgjRJdrJ+40tdRvLbLiGy+sZ8gZaFnpAXkmaei6jpPQkIdM6zBx3bbrHN0iPxwPFKkNklEFXqhp6t3H0z03s/De3eK+X2RjGEKW8EYLm5LkKVXlFr3l0oYSEsO/LJHIFaIep7D4K2u9Dg03CegM/tqa/z5fJNnRDwt7d6Ej6W21vaFEhI5wVVe0bUVi9qJrfwnu+uZDhNsV6MjYbxHRZI7ydl6lIuJwCBQKon+k8zATlbPBN4NCetjoSAd8VW/4D/ftBcz8W9S0mWqsNkC9PRfQA43GZvzShALZ+8iW5zBP9VQFSaQx09HHSkNkFaczYoEh3lgIJc6B2h0vGU9/qbPdPyYv2Rx/25pgDYxKrQvYbZaZG86wP5gBqn2n/3MmRUQnrhTPG1m/bLJQarEmo9FPZZOW30ZRiT67bYRw7zOR4v1YnrmAG
X-Forefront-Antispam-Report: CIP:104.232.225.6; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.lenovo.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230001)(4636009)(36840700001)(40470700004)(46966006)(5660300002)(8936002)(4326008)(31696002)(36756003)(16576012)(356005)(508600001)(81166007)(40460700003)(82960400001)(2906002)(316002)(2616005)(83380400001)(6666004)(110136005)(36906005)(47076005)(16526019)(54906003)(186003)(70206006)(26005)(426003)(336012)(8676002)(70586007)(53546011)(36860700001)(86362001)(31686004)(82310400005)(3940600001)(36900700001)(43740500002);
 DIR:OUT; SFP:1102; 
X-OriginatorOrg: lenovo.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2022 01:25:11.3490 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 41fd90b0-1077-4fad-1169-08da2a484571
X-MS-Exchange-CrossTenant-Id: 5c7d0b28-bdf8-410c-aa93-4df372b16203
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=5c7d0b28-bdf8-410c-aa93-4df372b16203; Ip=[104.232.225.6];
 Helo=[mail.lenovo.com]
X-MS-Exchange-CrossTenant-AuthSource: TYZAPC01FT012.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK0PR03MB4738
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Lyude On 4/29/22 17:14, Lyude Paul wrote: > The new method
 of probing dual fan support introduced in: > > bf779aaf56ea ("platform/x86:
 thinkpad_acpi: Add dual fan probe") > > While this commit says this wor [...]
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [67.219.250.2 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [67.219.250.2 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nkbrT-0004TK-9v
Subject: Re: [ibm-acpi-devel] [External] [PATCH 1/2] platform/x86:
 thinkpad_acpi: Restore X1 Carbon 9th Gen dual fan quirk
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
Cc: linux-hwmon@vger.kernel.org, Hans de
 Goede <hdegoede@redhat.com>, linux-kernel@vger.kernel.org,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Mark Gross <markgross@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Lyude

On 4/29/22 17:14, Lyude Paul wrote:
> The new method of probing dual fan support introduced in:
> 
> bf779aaf56ea ("platform/x86: thinkpad_acpi: Add dual fan probe")
> 
> While this commit says this works on the X1 Carbon 9th Gen, it actually
> just results in hiding the second fan on my local machine. Additionally,
> I'm fairly sure this machine powers on quite often without either of the
> two fans spinning.
> 
> So let's fix this by adding back the dual fan quirk for the X1 Carbon 9th
> Gen.
> 
> Signed-off-by: Lyude Paul <lyude@redhat.com>
> Fixes: bf779aaf56ea ("platform/x86: thinkpad_acpi: Add dual fan probe")
> Cc: Mark Pearson <markpearson@lenovo.com>
> Cc: Hans de Goede <hdegoede@redhat.com>
> Cc: Henrique de Moraes Holschuh <hmh@hmh.eng.br>
> Cc: Mark Gross <markgross@kernel.org>
> Cc: ibm-acpi-devel@lists.sourceforge.net
> Cc: platform-driver-x86@vger.kernel.org
> ---
>  drivers/platform/x86/thinkpad_acpi.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index c568fae56db2..9067fd0a945c 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -8699,6 +8699,7 @@ static const struct tpacpi_quirk fan_quirk_table[] __initconst = {
>  	TPACPI_Q_LNV3('N', '2', 'E', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (1st gen) */
>  	TPACPI_Q_LNV3('N', '2', 'O', TPACPI_FAN_2CTL),	/* P1 / X1 Extreme (2nd gen) */
>  	TPACPI_Q_LNV3('N', '3', '0', TPACPI_FAN_2CTL),	/* P15 (1st gen) / P15v (1st gen) */
> +	TPACPI_Q_LNV3('N', '3', '2', TPACPI_FAN_2CTL),  /* X1 Carbon (9th gen) */
>  	TPACPI_Q_LNV3('N', '3', '7', TPACPI_FAN_2CTL),  /* T15g (2nd gen) */
>  	TPACPI_Q_LNV3('N', '1', 'O', TPACPI_FAN_NOFAN),	/* X1 Tablet (2nd gen) */
>  };
I just double checked this on my X1C9 - and it's working correctly. 2nd
fan is detected correctly.

I'd rather understand why it's not working on your setup then just
re-introduce the quirk.

What happens on your system when the
  res = fan2_get_speed(&speed);
is called? If that is failing it means your 2nd fan isn't responding and
that's not supposed to happen. Could you let me know if you get an error
code, if it happens every boot, etc
I assume when the function is called later it works successfully?

Also please confirm which BIOS and EC version you have.

Thanks
Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

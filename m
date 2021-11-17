Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 116A9454D06
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 17 Nov 2021 19:22:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mnPYV-0002sb-AP; Wed, 17 Nov 2021 18:21:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <markpearson@lenovo.com>) id 1mnPYT-0002sR-7n
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 17 Nov 2021 18:21:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:CC:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hs0uHshYKdR3OJTjnzTWG7apkyD6aSmFAyi/ma+Bxy4=; b=lxCxtNY15kfDxcWAlrxFdpe6E6
 +qLYSB7uQm0ELOJrH64SKqDo+0OVx2fAr060CPTtwfAljFmt55iA/CXeYlCGsPfpjSluqMUqJ4N6R
 +qvRaPPBUqDxAjTzkm6DvVkRXW3/I9Wo7Jf2vcHUedWcAv+oTkKPySWYAD+J9nwVb+ME=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:CC:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hs0uHshYKdR3OJTjnzTWG7apkyD6aSmFAyi/ma+Bxy4=; b=JKoqrvqTooDiPQkDPVMxxcfbbu
 Wm61dNLV1hmq7vl1L3Zl+fV6abyohj0YuIcPm+xHOEHWOMNH35+6ZXSQuGVm9Hc7WN0HCljeB3afP
 fSVXvoiaXNS5yoJsaysbkPAU1/s+L1Dx+t8YvxzOhd+qi0X96C1EUGcwA7L/km4fC3eM=;
Received: from mail1.bemta24.messagelabs.com ([67.219.250.4])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mnPYM-0002dZ-AU
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 17 Nov 2021 18:21:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lenovo.com;
 s=Selector; t=1637173250; i=@lenovo.com;
 bh=hs0uHshYKdR3OJTjnzTWG7apkyD6aSmFAyi/ma+Bxy4=;
 h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
 In-Reply-To:Content-Type:Content-Transfer-Encoding;
 b=NXHoRXt3UzLZICvS4EnjTAG1RTGConfFW2LxVVgG9JmBdj/2R9K0QVmewSI5qCi0P
 SOekT7kCfESmW2Uwg1C6KS6PkO7QFz8eb/TYV1AsQpEgsg4ncPMnVPBEBZaKhoNYve
 QG5ioIcWNFRYZJClfviQLpl3uf+itC/b5GTZXWlxKvn0JG4IJA4hNqyMYy5kbbezil
 w/j6oMd/BjlFOdTuKK9V0x6Cs6tSYYyn0xKD1GCz+QFssKLf3XyBja7LpSha2vWob/
 793tZFVKHO51NUZtCESgcKHI8Yyuu+ATW62JKH7vedB2SGe4LFoj+i+nLVv8R9wxjK
 y+sZkOlO/43Iw==
Received: from [100.112.129.81] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-4.bemta.az-a.us-west-2.aws.symcld.net id 1A/62-10907-10845916;
 Wed, 17 Nov 2021 18:20:49 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA1WTfUxTVxjGe+69vb0UitcC47QR3GrGIksrBYk
 3fjD3h+NmmW4xLpubcV6k0i79Sm8R2Mzs+EgoamDUbsiXoLgNYYFgZQrG0uogyLQwmN0YMoRu
 MCGAYzpWJlvLBcf+e97397znfU5yDoGKrQIpoco2q0x6RivDhZh607Etch5tZxLqhrZRTi+kH
 j3+SUBNdX2GUE0L9RhVcWM7VTDsx6n+tkqcmjt1E1AL878iVIf9U5RqzbsBqIZrEyg1YPsBUD
 3t5p3h9NXyewL6fIsTp/2tjRi90AHolotWnG6vmUPomevf4/RcSyxdfKJT8EbIO3yNPs2QfYi
 vLpn6CzVWR2Q/7MMtYGpNERASgLyAwhpPHc4V5/jw0lwx4Ao/gE+6LWiwEJNlCMyt8/K5wonA
 Mrd7qYDkNIBF46WBmZAAMUBX6+XlkU8Q2OVy8TngA3B6IpYDowAOPhpBg0BE7oCOxkJBUGPk8
 /DbXxr4XH8t7D7jw4oAQUSRb0HLEBtsR5BZcHjKhQQ1SkbDQd/ZJR1JHoR3pt0Crl+Lws4vk7
 ldFQBOuEaXAE6+CB0OPx7UIeR22OD9HeMGNsKCrxeWh9fDvMsVKBd6A/QXe5Y0JJ+FubMnAac
 PwZOLozinJfDuj70CTsfAb25XYpzeDXvtTcueeOg5s+LRQkvj3eUz4+D1/mG0BCjKV125fNXd
 ylfFK18VrwZgFwGVZtJkqM06RqOVKxMS5EplolyZpJQnJiUrmA/kjCKTlWepWLM8UcFksQo2R
 3dYm67Qq8wtIPAq0415k1dA89Sswg0kBCKLEi3E2xlxeJohPUfNsOr3TJlaFesG6whCBkXHUg
 NsrUmVoco+otEG3vYKhkSYLFLkCWIRa2R0rCaDQ7eAnCj5reocKsb0Br1KGi1itwVMZNCkztQ
 /PWLlh3wHYqQRIsDj8cRhRpVJpzH/nz8A0QSQBRzBVWEavfnppgeBEEggREy/LRjCzPyHpBYk
 n7Lp6OQj/4QKTScc1uj8hIbG15AKQ8qG15/0PZeJpfQaFBfGqgpvDdD1ic6fRYNVuxJapHG13
 t1bcu0davr44T5PzJ77tfdO53ylfJgb/uHbTLNlsXCgf+fk/frUXlW7v6bzPI1Y0Y2lZZLQHe
 OhzgP7tl7bc+rVFB7TdHDrzIij+qN0/QH/2cdfbLYaqy3r1qTeftPZc7XouGt0/53uwaFX3hf
 20Kjk0tGRpNZ5vyQs8o+9Y7P6hs3OAumVqkVJXF644c+XKvNfjuoRRt9se8H3dz/atKvaP/lx
 c2xr27vVzX373Tbv+hLBzOc5rrFN7tKjXUk+re2Z3JyZ/PHYrnmhDGPVjDIeNbHMv0yKfx+cB
 AAA
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-9.tower-336.messagelabs.com!1637173247!57816!1
X-Originating-IP: [104.47.124.55]
X-SYMC-ESS-Client-Auth: mailfrom-relay-check=pass
X-StarScan-Received: 
X-StarScan-Version: 9.81.5; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 21046 invoked from network); 17 Nov 2021 18:20:48 -0000
Received: from mail-hk2apc01lp2055.outbound.protection.outlook.com (HELO
 APC01-HK2-obe.outbound.protection.outlook.com) (104.47.124.55)
 by server-9.tower-336.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 17 Nov 2021 18:20:48 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bBplUmpzwQMW1T+1ubjrLIIZGHlQKefKMlBTYK+OqCjCMrOhjj6Xj2pHUXN3tTkqev77DMMJG3kO3dqhxYg8Eu9tylKfzoDCQny1NhWY3SyONJpe/RcQlTdoGlR2SokPfUFEtyjWbno4CBOzZGFQ5CztD4ZI8Ml/nFwainIt9D0DHXBTZi0hoFH4gh36gJ7BgJ11eJvnuZFB8+6+vToX3NeViRSX6zqwiqVRBPDLz4fE2XgehKCDMRf3yYQoxiV/XU71VnGfdJ+zI5XhDEu/f7GWXYg7liSNkuXCJe/E75s5xpUGH4Kk6iy43LY81tTGnWBC1AakMVT5qTw9KS1ciw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hs0uHshYKdR3OJTjnzTWG7apkyD6aSmFAyi/ma+Bxy4=;
 b=RJKqyX3NNRjydRPb9yL0LWa8LAvjtBSE8lit1JUnfxSc0EIA2+p2t3qHNNEgGDh8gK0rYAmF5ZQFlyArErgpfA/Bu2qExr/fENMINTc/C5UgzpYFoQWEJIvo0Vrlvl891jjLRLH6p8b5RNYQE36QeyD3xUZJ9zB35r8z/KvINXGntMVYhTfWq1B8HlJL5n3PyjO3DppuaISXC9bbIcjtdlTYETveka5OWAchEhn6Ro0FRL4tvjME3iV9nMdGXSbPCewZp0I9L+p4qXQ9EZziMgd2jHUdOuV28+FKB3bDfz+vrJvEgGQoo3dNOY8KxQ69+XCuNnwvSzd/CZ1R67W2LQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=temperror (sender ip
 is 104.232.225.6) smtp.rcpttodomain=weissschuh.net
 smtp.mailfrom=lenovo.com; 
 dmarc=temperror action=none header.from=lenovo.com; dkim=none (message not
 signed); arc=none
Received: from SG2P153CA0046.APCP153.PROD.OUTLOOK.COM (2603:1096:4:c6::15) by
 SG2PR03MB3595.apcprd03.prod.outlook.com (2603:1096:4:16::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4669.4; Wed, 17 Nov 2021 18:20:46 +0000
Received: from SG2APC01FT0047.eop-APC01.prod.protection.outlook.com
 (2603:1096:4:c6:cafe::7f) by SG2P153CA0046.outlook.office365.com
 (2603:1096:4:c6::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.7 via Frontend
 Transport; Wed, 17 Nov 2021 18:20:46 +0000
X-MS-Exchange-Authentication-Results: spf=temperror (sender IP is
 104.232.225.6) smtp.mailfrom=lenovo.com; weissschuh.net; dkim=none (message
 not signed) header.d=none;weissschuh.net; dmarc=temperror action=none
 header.from=lenovo.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of lenovo.com: DNS Timeout)
Received: from mail.lenovo.com (104.232.225.6) by
 SG2APC01FT0047.mail.protection.outlook.com (10.13.36.133) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4713.19 via Frontend Transport; Wed, 17 Nov 2021 18:20:45 +0000
Received: from reswpmail01.lenovo.com (10.62.32.20) by mail.lenovo.com
 (10.62.123.116) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2308.20; Wed, 17 Nov
 2021 13:20:43 -0500
Received: from [10.38.110.13] (10.38.110.13) by reswpmail01.lenovo.com
 (10.62.32.20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2308.20; Wed, 17 Nov
 2021 13:20:42 -0500
Message-ID: <a0b82de2-827a-96e8-15c2-b1393ee8a705@lenovo.com>
Date: Wed, 17 Nov 2021 13:20:41 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Content-Language: en-US
To: =?UTF-8?Q?Thomas_Wei=c3=9fschuh?= <linux@weissschuh.net>, Thomas Koch
 <linrunner@gmx.net>
References: <20211113104225.141333-1-linux@weissschuh.net>
 <9cebba85-f399-a7aa-91f7-237852338dc5@gmx.net>
 <d1bc62e9-a5da-4c23-b31f-8ba718faf4a3@t-8ch.de>
From: Mark Pearson <markpearson@lenovo.com>
In-Reply-To: <d1bc62e9-a5da-4c23-b31f-8ba718faf4a3@t-8ch.de>
X-Originating-IP: [10.38.110.13]
X-ClientProxiedBy: reswpmail04.lenovo.com (10.62.32.23) To
 reswpmail01.lenovo.com (10.62.32.20)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5a1108a5-c64b-44cf-44e8-08d9a9f6f935
X-MS-TrafficTypeDiagnostic: SG2PR03MB3595:
X-Microsoft-Antispam-PRVS: <SG2PR03MB35953E952C25ABA7FB0229ECC59A9@SG2PR03MB3595.apcprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: D90otXHL3KcKmKUacEEK0gPRbHuYwBQgFbks3wouo8wgOuUZN3dy5B2HeEeKeTzhdMHQeEBTJj2e9vlfFiDTd8YD2+xehqw22M+I5sKfHriZkmkwKVQUci275aSRpKNhd8vmRgrJXeQjHRxDyEzcx9j61j6WyBqO/3jl3/pF/Rjm2ycyFmHz5r+5rSFBwAdmivfspB6xjUWaFg0VF2tfOuE7DHqhWTBdd39kAine6D4UzXPz31LtI+kKwabT1+Vk3x5MOWG/1pMuZVB4t9ZOZsZj/wkkTSi/IJwU9pLqwEWlCbjjjaHvrogaQZoTJcA23U0QNu7t0Yf59gBOgRNfFQ0UD3ZfjaZrEOfHJxgtOz9M/JcBGdEvuHq+vsY2Nt1Y5L+fwGeb7XNDJM2u1H5b6KWE3rMxR0arYthIwhHW/W9LTERpYVxA8SkX9hbnsfEw+dGHbxmOAWqJMRQnPw0xI51Bk8x5mvProVdkY/3546uAST316RFvdwJbD9nx6phxWqjIwEh/se8eVmmMPfGvy2XsFcq0MZQOuy/rtRmu22uHYojiMiYkzZup87RgxYDeDz8BnEeAX1khBOi+DL4u+PHezdGh3TKhoRHKW5xqcS18eoC3n37StObXjQ/3XU7X3KFtUc06EQu4Fetwnrfk2rQj/VQz6EuIwfb7A9hKhyGqNJ/VIwqPGdLrik+k+6sGxcyHlYsObtZN1vrlm0mhJiUwIJLxNC/9v2/Pib67J4cUDVPmgbe37c/upVp7sfK/32gQElQRxB/W5Ue0iTILNYhCFQ7K8/b5BsDLZxP4rdI=
X-Forefront-Antispam-Report: CIP:104.232.225.6; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.lenovo.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(4636009)(46966006)(36840700001)(63370400001)(426003)(4001150100001)(63350400001)(70586007)(86362001)(82310400003)(31686004)(36756003)(2906002)(336012)(16526019)(47076005)(26005)(53546011)(508600001)(7416002)(70206006)(2616005)(5660300002)(81166007)(31696002)(66574015)(316002)(16576012)(356005)(186003)(83380400001)(36860700001)(36906005)(54906003)(110136005)(82960400001)(8936002)(4326008)(8676002)(3940600001)(43740500002)(36900700001);
 DIR:OUT; SFP:1102; 
X-OriginatorOrg: lenovo.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2021 18:20:45.2325 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a1108a5-c64b-44cf-44e8-08d9a9f6f935
X-MS-Exchange-CrossTenant-Id: 5c7d0b28-bdf8-410c-aa93-4df372b16203
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=5c7d0b28-bdf8-410c-aa93-4df372b16203; Ip=[104.232.225.6];
 Helo=[mail.lenovo.com]
X-MS-Exchange-CrossTenant-AuthSource: SG2APC01FT0047.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR03MB3595
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Thomas, On 2021-11-17 12:57, Thomas Weißschuh wrote: >
    On 2021-11-16 17:56+0100, Thomas Koch wrote: >> thank you very much for working
    on this. It is high time that we leave >> external kernel modules for Th
   [...] 
 
 Content analysis details:   (-2.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [67.219.250.4 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [67.219.250.4 listed in wl.mailspike.net]
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
X-Headers-End: 1mnPYM-0002dZ-AU
Subject: Re: [ibm-acpi-devel] [External] Re: [PATCH 0/4] power: supply: add
 charge_behaviour property (force-discharge, inhibit-charge)
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
Cc: nicolopiazzalunga@gmail.com, bberg@redhat.com,
 Hans de Goede <hdegoede@redhat.com>, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, Sebastian Reichel <sre@kernel.org>,
 platform-driver-x86@vger.kernel.org, Mark Gross <markgross@kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>, hadess@hadess.net,
 smclt30p@gmail.com, njoshi1@lenovo.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGkgVGhvbWFzLAoKCk9uIDIwMjEtMTEtMTcgMTI6NTcsIFRob21hcyBXZWnDn3NjaHVoIHdyb3Rl
Ogo+IE9uIDIwMjEtMTEtMTYgMTc6NTYrMDEwMCwgVGhvbWFzIEtvY2ggd3JvdGU6Cj4+IHRoYW5r
IHlvdSB2ZXJ5IG11Y2ggZm9yIHdvcmtpbmcgb24gdGhpcy4gSXQgaXMgaGlnaCB0aW1lIHRoYXQg
d2UgbGVhdmUKPj4gZXh0ZXJuYWwga2VybmVsIG1vZHVsZXMgZm9yIFRoaW5rUGFkcyBiZWhpbmQg
dXMuCj4+Cj4+IE9uIDEzLjExLjIxIDExOjQyLCBUaG9tYXMgV2Vpw59zY2h1aCB3cm90ZToKPj4+
IEhpLAo+Pj4KPj4+IHRoaXMgc2VyaWVzIGFkZHMgc3VwcG9ydCBmb3IgdGhlIGNoYXJnZV9iZWhh
dmlvdXIgcHJvcGVydHkgdG8gdGhlIHBvd2VyCj4+PiBzdWJzeXN0ZW0gYW5kIHRoaW5rcGFkX2Fj
cGkgZHJpdmVyLgo+Pj4KPj4+IEFzIHRoaW5rcGFkX2FjcGkgaGFzIHRvIHVzZSB0aGUgJ3N0cnVj
dCBwb3dlcl9zdXBwbHknIGNyZWF0ZWQgYnkgdGhlIGdlbmVyaWMKPj4+IEFDUEkgZHJpdmVyIGl0
IGhhcyB0byByZWx5IG9uIGN1c3RvbSBzeXNmcyBhdHRyaWJ1dGVzIGluc3RlYWQgb2YgcHJvcGVy
Cj4+PiBwb3dlcl9zdXBwbHkgcHJvcGVydGllcyB0byBpbXBsZW1lbnQgdGhpcyBwcm9wZXJ0eS4K
Pj4+Cj4+PiBQYXRjaCAxOiBBZGRzIHRoZSBwb3dlcl9zdXBwbHkgZG9jdW1lbnRhdGlvbiBhbmQg
YmFzaWMgcHVibGljIEFQSQo+Pj4gUGF0Y2ggMjogQWRkcyBoZWxwZXJzIHRvIHBvd2VyX3N1cHBs
eSBjb3JlIHRvIGhlbHAgZHJpdmVycyBpbXBsZW1lbnQgdGhlCj4+PiAgICBjaGFyZ2VfYmVoYXZp
b3VyIGF0dHJpYnV0ZQo+Pj4gUGF0Y2ggMzogQWRkcyBzdXBwb3J0IGZvciBmb3JjZS1kaXNjaGFy
Z2UgdG8gdGhpbmtwYWRfYWNwaS4KPj4+IFBhdGNoIDQ6IEFkZHMgc3VwcG9ydCBmb3IgaW5oaWJp
dC1kaXNjaGFyZ2UgdG8gdGhpbmtwYWRfYWNwaS4KPj4+Cj4+PiBQYXRjaCAzIGFuZCA0IGFyZSBs
YXJnZWx5IHRha2VuIGZyb20gb3RoZXIgcGF0Y2hlcyBhbmQgYWRhcHRlZCB0byB0aGUgbmV3IEFQ
SS4KPj4+IChMaW5rcyBhcmUgaW4gdGhlIHBhdGNoIHRyYWlsZXIpCj4+Pgo+Pj4gT2duamVuIEdh
bGljLCBOaWNvbG8nIFBpYXp6YWx1bmdhLCBUaG9tYXMgS29jaDoKPj4+Cj4+PiBZb3VyIFMtby1i
IGlzIG9uIHRoZSBvcmlnaW5hbCBpbmhpYml0X2NoYXJnZSBhbmQgZm9yY2VfZGlzY2hhcmdlIHBh
dGNoZXMuCj4+PiBJIHdvdWxkIGxpa2UgdG8gYWRkIHlvdSBhcyBDby1kZXZlbG9wZWQtYnkgYnV0
IHRvIGRvIHRoYXQgaXQgd2lsbCBhbHNvIHJlcXVpcmUKPj4+IHlvdXIgUy1vLWIuIENvdWxkIHlv
dSBnaXZlIHlvdXIgc2lnbi1vZmZzIGZvciB0aGUgbmV3IHBhdGNoZXMsIHNvIHlvdSBjYW4gYmUK
Pj4+IHByb3Blcmx5IGF0dHJpYnV0ZWQ/Cj4+IFMtby1iL0NvLWRldmVsb3BlZC1ieS9UZXN0ZWQt
YnkgaXMgZmluZSB3aXRoIG1lLgo+Pgo+PiBJIHRlc3RlZCB5b3VyIHBhdGNoZXMuCj4+Cj4+IEhh
cmR3YXJlOgo+Pgo+PiAtIFRoaW5rUGFkIFgyMjAsIEJBVDAKPj4gLSBUaGlua1BhZCBUNDUwcywg
QkFUMCtCQVQxCj4+IC0gVGhpbmtQYWQgWDFDNiwgQkFUMAo+Pgo+PiBUZXN0IFJlc3VsdHM6Cj4+
Cj4+IDEuIGZvcmNlLWRpc2NoYXJnZQo+Pgo+PiBFdmVyeXRoaW5ncyB3b3JrcyBhcyBleHBlY3Rl
ZAo+PiAtIFdyaXRpbmcgaW5jbHVkaW5nIGRpc2VuZ2FnaW5nIHcvICJhdXRvIiA6IE9LCj4+IC0g
UmVhZGluZzogT0sKPj4KPj4gLSBCYXR0ZXJ5IGRpc2NoYXJnaW5nOiBPSwo+PiAtIERpc2VuZ2Fn
aW5nIHdpdGggImF1dG8iOiBPSwo+Pgo+PiAyLiBpbmhpYml0LWNoYXJnZQo+Pgo+PiBXb3JrcyBh
cyBleHBlY3RlZDoKPj4gLSBXcml0aW5nOiBPSwo+Pgo+PiAtIERpc2VuZ2FnaW5nIHdpdGggImF1
dG8iOiBPSwo+Pgo+Pgo+PiBEaXNjcmVwYW5jaWVzOgo+PiAtIEJhdHRlcnkgY2hhcmdlIGluaGli
aXRlZDogQkFUMCBPSywgQkFUMSBubyBlZmZlY3QgZS5nLiBjb250aW51ZXMgY2hhcmdpbmcKPj4g
LSBSZWFkaW5nOiBhbHdheXMgcmV0dXJucyAiYXV0byIKPiAKPiBJIHRlc3RlZCBpdCBvbiBhIFQ0
NjBzIHdpdGggdHdvIGJhdHRlcmllcyBhbmQgdGhlcmUgaW5oaWJpdC1jaGFyZ2Ugd29ya3MKPiBm
aW5lIGZvciBib3RoIGJhdHRlcmllcy4KPiBXaGF0IGRvZXMgbm90IHdvcmsgaXMgc2V0dGluZyBm
b3JjZS1kaXNjaGFyZ2UgZm9yIGJvdGggYmF0dGVyaWVzIGF0IHRoZSBzYW1lCj4gdGltZS4KPiBU
aGlzIG1ha2VzIHNvbWV3aGF0IHNlbnNlIGFzIG9uIGEgcGh5c2ljYWwgbGV2ZWwgcHJvYmFibHkg
b25seSBvbmUgb2YgdGhlbSBjYW4KPiBiZSB1c2VkIGF0IGEgdGltZS4KPiAKPiBNYXJrIFBlYXJz
b246IENvdWxkIHlvdSBjb25maXJtIHRoYXQgdGhpcyBpcyB0aGUgaW50ZW5kZWQgYmVoYXZpb3Vy
Pwo+IApDb25maXJtZWQgLSBvbmx5IG9uZSBiYXR0ZXJ5IGNhbiBiZSB1c2VkIHdpdGggdGhlIEJE
U1MgY29tbWFuZAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmlibS1hY3BpLWRldmVsIG1haWxpbmcgbGlzdAppYm0tYWNwaS1kZXZlbEBsaXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8v
aWJtLWFjcGktZGV2ZWwK

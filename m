Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF94517742
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  2 May 2022 21:15:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1nlbVH-0008Ht-Cb; Mon, 02 May 2022 19:14:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <markpearson@lenovo.com>) id 1nlbVF-0008Hn-Ut
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 02 May 2022 19:14:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:CC:To:From:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Zh7IkU9khBQUNiI+Yavix2ggPTmaSrJrJiecXjwo6RU=; b=fWq1ZAb3klwIKOhqKTjTn1KMLD
 6vqzkk+Bgw5fzy37d7qtYZ8RBYch5eoXKig/xfnM81U/x5QdRlVZ5c9cknZsLdLm5d0F3F5v1wK8P
 b93nDrcYr4EZeYQpJ+fHZp/enip4MkV8AHb/Ifip3wNu1nYUXIxrbHFldhBAVm3Nf2e4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:CC:To:From:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Zh7IkU9khBQUNiI+Yavix2ggPTmaSrJrJiecXjwo6RU=; b=kbZ3vPhlDGOLKY18pfatdO2kMx
 v7UpwzUKQUrD1jUTRUQOrrHzH8u0SMohGlpgTLgvIiLOYIw8cgLotzuYa7GDI9vX9Cm9yriyTjMrP
 52mCuKF9ZQZlxv6toq/NYoJbiCMGulVoGUXh8mCuJFp/HrROuVfs/9A+Qmlbyd6LTnRU=;
Received: from mail1.bemta31.messagelabs.com ([67.219.246.2])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nlbVB-00GqId-6H
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 02 May 2022 19:14:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lenovo.com;
 s=Selector; t=1651518860; i=@lenovo.com;
 bh=Zh7IkU9khBQUNiI+Yavix2ggPTmaSrJrJiecXjwo6RU=;
 h=Message-ID:Date:MIME-Version:Subject:From:To:CC:References:
 In-Reply-To:Content-Type:Content-Transfer-Encoding;
 b=N+buZ8M4oBhQYdZzYsLlCi1zUHxYrBJq/71rVAon36OMVhxnUo+4wYzXNSQIeLWQf
 lJ98Rl9Jyo/xYAK5QxFrpfl/Ll9AAAGeV+jNirm7CkiHyHCVUP94tlj1XqvYD5seNv
 wHruHbZ71g+BJYf4/e4eW8CjChP1do7r1VsPzQm/kFARhsnZl7ojTbJ2iSQJGjopiP
 UTWFrKzTfLnAfA1thVmZ91XTXY1p0suiI7MCHlpuKx0Cqdfah2AQksa+Zk+etkcGit
 JjXXYuTddSB5RNyFOgKdMDdRZ/b//5tWB/U1DlJwX7Jhwoj91MbHx1JTsw+sR+oIxY
 4IwvzteSiIIhA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrNJsWRWlGSWpSXmKPExsWSoS+Vp9utW5B
 k8Pwvj8Wb49OZLNb/XsliMfuwjUX7662MFpd3zWGzmLq7n9XiwNRpzBar97xgduDw+H2A0WPT
 qk42j90LPjN5vN93lc3j8ya5ANYo1sy8pPyKBNaMPcvaWAr2y1a8mBjQwPhRoouRi4NRYCmzx
 LHvSxghnEWsEi1LD0E5nUwSk+fdYwdxhARmMkksOvWHFcLZzyTx5PtGMEdC4DijRPehdUwQmU
 5GiR+vTrFAOP1MEs0rrjFCOI8ZJR4+24jgtF3cwNbFyMnBK2Ar8brrBhOIzSKgIvGm9xcjRFx
 Q4uTMJywgtqhAuET3/v2sILawQJbExJ6jYL3MAuISt57MB+tlE9CW2LLlF1hcRKBQYtaKyWBn
 MAvsZpTYvuY61OmNTBJdJ1vANnAK2ElMX3ScBWKSpkTr9t/sELa8RPPW2cwgtpCAssSv/vNgt
 oSAosSnU8dYIewEieYpRxkhbEmJazcvsEPYshJHz85hgbB9JXYvBanhALJ1JWZPFYQI50icev
 sZqlxO4lTvOaYJjLqzkPw8C8lvs5BcNwvJdQsYWVYxWiYVZaZnlOQmZuboGhoY6Boamuia6hp
 b6CVW6SbqlRbrpiYWl+ga6iWWF+ulFhfrFVfmJuek6OWllmxiBKa0lCJWtR2Mk3p+6h1ilORg
 UhLlrVMrSBLiS8pPqcxILM6ILyrNSS0+xKjBwSFw5eCR2YxSLHn5ealKErzmmkB1gkWp6akVa
 Zk5wLQLUyrBwaMkwssjCJTmLS5IzC3OTIdInWK057iybe9eZo4HJ04CyUuHrgDJa+sX7GMWAp
 sqJc5rrQjUJgDSllGaBzcUlicuMcpKCfMyMjAwCPEUpBblZpagyr9iFOdgVBLm7dAGmsKTmVc
 Ct/sV0FlMQGc1peeCnFWSiJCSamCqYF+3fPXxR0xbq1qmvTz6aZla7taCH++f7zi048vyp35f
 e1iEuPWclFjOr48/fsThS9+7zL8Lrm/9mlj+aMLX0+UqaiwGquFZUQHTr35zdm52n/zic3nNR
 H3pVRr3Xws5/amf3hqtyrG/afp2tR+vtxyNi60876/xbVXLuifPZY9s0HrwjF9U4K2t28HG0s
 Kl/nPrPx+wn6hx/m92SX1zx8LLC2KWXV11x1q7zpSlYP6FtvXiKRvFP65UfeniWM9i6qR8w7/
 IqqH+XktqVnxUfoWe99epYalv7fqiG/1YfyQwJWj5fBd58Nb88KcbfakLVnJ2nDm54ceCLsvZ
 3ZOcBZt3aHG9TPBkvFe4/rm1EktxRqKhFnNRcSIAnjnbtY4EAAA=
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-6.tower-706.messagelabs.com!1651518857!35151!1
X-Originating-IP: [104.47.26.110]
X-SYMC-ESS-Client-Auth: mailfrom-relay-check=pass
X-StarScan-Received: 
X-StarScan-Version: 9.86.4; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 17032 invoked from network); 2 May 2022 19:14:18 -0000
Received: from mail-sgaapc01lp2110.outbound.protection.outlook.com (HELO
 APC01-SG2-obe.outbound.protection.outlook.com) (104.47.26.110)
 by server-6.tower-706.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 2 May 2022 19:14:18 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X9sDdZ25FvrwIcPoVY7MO3r0P6SPYEP636BsAjrBzugvL+RiptjgipLARlJ5DAWNTdw9NWAt/kr26pVe0z2VSpwWnfmxU7H6DO+S4+e91Hxbjjc6aidxUBMCX+AmFb8u/DOYsFgSp5ZhQkfU6CWdHkQYAiDicZ2tUkLOTvDffs7MIHAW5rlHS0uWMvplcs9yAyW7ooBDqZ41POZyqA17OtGkyv1/52KHp+qQzqkpmJ4Ko28eHY4sL1JhuZypwGxRErut4u9NPfTnh8qo0BPjF3Z29xnavbNYV9hkUqSWGcJjnREyICPRj9BGU2LF3bR9jL1m2B/DSABkKURRY0ahZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zh7IkU9khBQUNiI+Yavix2ggPTmaSrJrJiecXjwo6RU=;
 b=Ob7YPujUQJY0BwFWGyRriXpxLMQbu7KYIQClqJxhLmE9avbT5AXE5SQPe22QLy3UMNY6Um0f26eONbMrI3ldUBpykLibZWFlgu+Qnq6tZm4tflODJ4fmlL/mD5J9+WxMb/K3nvjv3svutWVBeaVgJ7nt7ynM8Sdf4VZZ4V1gnIijRQNqarCQKICE1G4d6j6BlgeihTGfOUiihdJH4F1/gUCBreCwkh0lOx7ZbIFIipxQpcKdLSi07CAsQ9Dd1WVsDrj8k28mBE3HK7BBcp4sFMm0uf6gADb0sYqUvdS0a/naGdJSS9uC04rkf99jMigSbk4oi+XdKqddAx7sQTsZBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 104.232.225.7) smtp.rcpttodomain=redhat.com smtp.mailfrom=lenovo.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=lenovo.com;
 dkim=none (message not signed); arc=none
Received: from SG2PR06CA0227.apcprd06.prod.outlook.com (2603:1096:4:68::35) by
 SG2PR03MB4568.apcprd03.prod.outlook.com (2603:1096:4:85::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5206.13; Mon, 2 May 2022 19:14:16 +0000
Received: from SG2APC01FT0030.eop-APC01.prod.protection.outlook.com
 (2603:1096:4:68:cafe::e2) by SG2PR06CA0227.outlook.office365.com
 (2603:1096:4:68::35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.24 via Frontend
 Transport; Mon, 2 May 2022 19:14:16 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is
 104.232.225.7) smtp.mailfrom=lenovo.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=lenovo.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 lenovo.com discourages use of 104.232.225.7 as permitted sender)
Received: from mail.lenovo.com (104.232.225.7) by
 SG2APC01FT0030.mail.protection.outlook.com (10.13.37.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5206.12 via Frontend Transport; Mon, 2 May 2022 19:14:15 +0000
Received: from reswpmail01.lenovo.com (10.62.32.20) by mail.lenovo.com
 (10.62.123.117) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2308.27; Mon, 2 May
 2022 15:13:58 -0400
Received: from [10.38.104.132] (10.38.104.132) by reswpmail01.lenovo.com
 (10.62.32.20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2308.27; Mon, 2 May
 2022 15:15:03 -0400
Message-ID: <24fdaa0c-5f63-5e81-5f7c-cd439d301f8c@lenovo.com>
Date: Mon, 2 May 2022 15:13:56 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
From: Mark Pearson <markpearson@lenovo.com>
To: Lyude Paul <lyude@redhat.com>, <ibm-acpi-devel@lists.sourceforge.net>,
 <platform-driver-x86@vger.kernel.org>
References: <20220429211418.4546-1-lyude@redhat.com>
 <20220429211418.4546-2-lyude@redhat.com>
 <d3461670-a905-4956-4f4d-d847adf4289b@lenovo.com>
 <2769588a352e9c3b43a4e09afff100d52a9ba524.camel@redhat.com>
 <d7a35afb-6b3a-7d76-0dc1-975842407fea@lenovo.com>
In-Reply-To: <d7a35afb-6b3a-7d76-0dc1-975842407fea@lenovo.com>
X-Originating-IP: [10.38.104.132]
X-ClientProxiedBy: reswpmail01.lenovo.com (10.62.32.20) To
 reswpmail01.lenovo.com (10.62.32.20)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2faf0db6-8738-4ba9-7819-08da2c6ff362
X-MS-TrafficTypeDiagnostic: SG2PR03MB4568:EE_
X-Microsoft-Antispam-PRVS: <SG2PR03MB4568A02B846765978DA1D0E5C5C19@SG2PR03MB4568.apcprd03.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: r7mIcKZNtuXBh/abq/tTpkJnGVLjVn5QWJb4THS/Avqm1OTK2xSdbJCbknEWq0p2xyNAhONsXr674IZu6Wz+KdS6i5R6ziu0zDIuHEkzfLK0tdyeY9RPD03URDRzN2N9LBSSyixzVwjcbhUfNMby3P0gourGjIv7sBxW2xt1G2pRm86AaS0LlIlLqGZjwB/OnzbDhQqTNNU7SifzfQPpb6n2ysg/6nGcIbZWwsKZRBWpmzN3Ba3ehaKHn91Gb29MZqMkrtrUgRbGZfrCAGT8FQ8uO7Lk40MBnlsPmNyeAGhnISVLzaMwsruvEb6YCJfFGAtXEsLt87dirSNqHnw05a0E4xlrreXQNy4gyGIGJ2BqbVHh6BSVeBFE8Gier0orbPgperWwER9+hzIzet3lfgv4agyj974C1YoSabkDqZZ/baI5860WMMad69vE2UIwGXqMyJ0BszIXV7ymcx5YJBdo7ABY66qCAshnnhVgLhQpdwEQiY+9yqp4MjiZRrG+v53ixUlM6XQ5xUGbbhBxrbIEZsB7DfzmB2DqwWcmW1Gr1YhQ7d6f7zTB72x7Gi/rREKJHE/nimstYk8Iie9t/6twTE+J0qauIw+61QbNNE2HkPeHaC67L1cTC7TQrSOEzrVorHaFaYNpj7Hxk31LJClx558vMWIsulEZQ1rDyQqx/7GxXvah/G8AvO2jTGyL+IM1vhtenm8bftVG5VBs4V3O4YUsQjxw/55Na7iapHPHA5oOHxbgRKwF+qrOs5GjenSXY7kuFliAshG/Kx6SNg9WLYlvUbXbSIjzJjxxQ0KwB/doyvd9PGbdfTRUMvpR
X-Forefront-Antispam-Report: CIP:104.232.225.7; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.lenovo.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230001)(4636009)(36840700001)(40470700004)(46966006)(356005)(70586007)(70206006)(81166007)(8936002)(36906005)(16576012)(54906003)(86362001)(31696002)(40460700003)(110136005)(5660300002)(36860700001)(53546011)(426003)(2906002)(316002)(47076005)(508600001)(2616005)(6666004)(16526019)(336012)(186003)(83380400001)(82960400001)(31686004)(8676002)(82310400005)(36756003)(26005)(4326008)(3940600001)(43740500002)(36900700001);
 DIR:OUT; SFP:1102; 
X-OriginatorOrg: lenovo.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 May 2022 19:14:15.7499 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2faf0db6-8738-4ba9-7819-08da2c6ff362
X-MS-Exchange-CrossTenant-Id: 5c7d0b28-bdf8-410c-aa93-4df372b16203
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=5c7d0b28-bdf8-410c-aa93-4df372b16203; Ip=[104.232.225.7];
 Helo=[mail.lenovo.com]
X-MS-Exchange-CrossTenant-AuthSource: SG2APC01FT0030.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR03MB4568
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 5/2/22 13:44, Mark Pearson wrote: > > > On 5/2/22 13:42, 
 Lyude Paul wrote: >> Some answers/comments down below >> >> On Fri, 2022-04-29
 at 21:25 -0400, Mark Pearson wrote: >>> Hi Lyude >>> >>> On 4 [...] 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [67.219.246.2 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [67.219.246.2 listed in wl.mailspike.net]
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
X-Headers-End: 1nlbVB-00GqId-6H
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

CgpPbiA1LzIvMjIgMTM6NDQsIE1hcmsgUGVhcnNvbiB3cm90ZToKPiAKPiAKPiBPbiA1LzIvMjIg
MTM6NDIsIEx5dWRlIFBhdWwgd3JvdGU6Cj4+IFNvbWUgYW5zd2Vycy9jb21tZW50cyBkb3duIGJl
bG93Cj4+Cj4+IE9uIEZyaSwgMjAyMi0wNC0yOSBhdCAyMToyNSAtMDQwMCwgTWFyayBQZWFyc29u
IHdyb3RlOgo+Pj4gSGkgTHl1ZGUKPj4+Cj4+PiBPbiA0LzI5LzIyIDE3OjE0LCBMeXVkZSBQYXVs
IHdyb3RlOgo+Pj4+IFRoZSBuZXcgbWV0aG9kIG9mIHByb2JpbmcgZHVhbCBmYW4gc3VwcG9ydCBp
bnRyb2R1Y2VkIGluOgo+Pj4+Cj4+Pj4gYmY3NzlhYWY1NmVhICgicGxhdGZvcm0veDg2OiB0aGlu
a3BhZF9hY3BpOiBBZGQgZHVhbCBmYW4gcHJvYmUiKQo+Pj4+Cj4+Pj4gV2hpbGUgdGhpcyBjb21t
aXQgc2F5cyB0aGlzIHdvcmtzIG9uIHRoZSBYMSBDYXJib24gOXRoIEdlbiwgaXQgYWN0dWFsbHkK
Pj4+PiBqdXN0IHJlc3VsdHMgaW4gaGlkaW5nIHRoZSBzZWNvbmQgZmFuIG9uIG15IGxvY2FsIG1h
Y2hpbmUuIEFkZGl0aW9uYWxseSwKPj4+PiBJJ20gZmFpcmx5IHN1cmUgdGhpcyBtYWNoaW5lIHBv
d2VycyBvbiBxdWl0ZSBvZnRlbiB3aXRob3V0IGVpdGhlciBvZiB0aGUKPj4+PiB0d28gZmFucyBz
cGlubmluZy4KPj4+Pgo+Pj4+IFNvIGxldCdzIGZpeCB0aGlzIGJ5IGFkZGluZyBiYWNrIHRoZSBk
dWFsIGZhbiBxdWlyayBmb3IgdGhlIFgxIENhcmJvbiA5dGgKPj4+PiBHZW4uCj4+Pj4KPj4+PiBT
aWduZWQtb2ZmLWJ5OiBMeXVkZSBQYXVsIDxseXVkZUByZWRoYXQuY29tPgo+Pj4+IEZpeGVzOiBi
Zjc3OWFhZjU2ZWEgKCJwbGF0Zm9ybS94ODY6IHRoaW5rcGFkX2FjcGk6IEFkZCBkdWFsIGZhbiBw
cm9iZSIpCj4+Pj4gQ2M6IE1hcmsgUGVhcnNvbiA8bWFya3BlYXJzb25AbGVub3ZvLmNvbT4KPj4+
PiBDYzogSGFucyBkZSBHb2VkZSA8aGRlZ29lZGVAcmVkaGF0LmNvbT4KPj4+PiBDYzogSGVucmlx
dWUgZGUgTW9yYWVzIEhvbHNjaHVoIDxobWhAaG1oLmVuZy5icj4KPj4+PiBDYzogTWFyayBHcm9z
cyA8bWFya2dyb3NzQGtlcm5lbC5vcmc+Cj4+Pj4gQ2M6IGlibS1hY3BpLWRldmVsQGxpc3RzLnNv
dXJjZWZvcmdlLm5ldAo+Pj4+IENjOiBwbGF0Zm9ybS1kcml2ZXIteDg2QHZnZXIua2VybmVsLm9y
Zwo+Pj4+IC0tLQo+Pj4+IMKgZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jIHwg
MSArCj4+Pj4gwqAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPj4+Pgo+Pj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMKPj4+PiBiL2RyaXZl
cnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYwo+Pj4+IGluZGV4IGM1NjhmYWU1NmRiMi4u
OTA2N2ZkMGE5NDVjIDEwMDY0NAo+Pj4+IC0tLSBhL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5r
cGFkX2FjcGkuYwo+Pj4+ICsrKyBiL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGku
Ywo+Pj4+IEBAIC04Njk5LDYgKzg2OTksNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHRwYWNwaV9x
dWlyayBmYW5fcXVpcmtfdGFibGVbXQo+Pj4+IF9faW5pdGNvbnN0ID0gewo+Pj4+IMKgwqDCoMKg
wqDCoMKgwqBUUEFDUElfUV9MTlYzKCdOJywgJzInLCAnRScsIFRQQUNQSV9GQU5fMkNUTCkswqDC
oC8qIFAxIC8gWDEgRXh0cmVtZQo+Pj4+ICgxc3QgZ2VuKSAqLwo+Pj4+IMKgwqDCoMKgwqDCoMKg
wqBUUEFDUElfUV9MTlYzKCdOJywgJzInLCAnTycsIFRQQUNQSV9GQU5fMkNUTCkswqDCoC8qIFAx
IC8gWDEgRXh0cmVtZQo+Pj4+ICgybmQgZ2VuKSAqLwo+Pj4+IMKgwqDCoMKgwqDCoMKgwqBUUEFD
UElfUV9MTlYzKCdOJywgJzMnLCAnMCcsIFRQQUNQSV9GQU5fMkNUTCkswqDCoC8qIFAxNSAoMXN0
IGdlbikgLwo+Pj4+IFAxNXYgKDFzdCBnZW4pICovCj4+Pj4gK8KgwqDCoMKgwqDCoMKgVFBBQ1BJ
X1FfTE5WMygnTicsICczJywgJzInLCBUUEFDUElfRkFOXzJDVEwpLMKgIC8qIFgxIENhcmJvbiAo
OXRoCj4+Pj4gZ2VuKSAqLwo+Pj4+IMKgwqDCoMKgwqDCoMKgwqBUUEFDUElfUV9MTlYzKCdOJywg
JzMnLCAnNycsIFRQQUNQSV9GQU5fMkNUTCkswqAgLyogVDE1ZyAoMm5kIGdlbikKPj4+PiAqLwo+
Pj4+IMKgwqDCoMKgwqDCoMKgwqBUUEFDUElfUV9MTlYzKCdOJywgJzEnLCAnTycsIFRQQUNQSV9G
QU5fTk9GQU4pLMKgLyogWDEgVGFibGV0ICgybmQKPj4+PiBnZW4pICovCj4+Pj4gwqB9Owo+Pj4g
SSBqdXN0IGRvdWJsZSBjaGVja2VkIHRoaXMgb24gbXkgWDFDOSAtIGFuZCBpdCdzIHdvcmtpbmcg
Y29ycmVjdGx5LiAybmQKPj4+IGZhbiBpcyBkZXRlY3RlZCBjb3JyZWN0bHkuCj4+Pgo+Pj4gSSdk
IHJhdGhlciB1bmRlcnN0YW5kIHdoeSBpdCdzIG5vdCB3b3JraW5nIG9uIHlvdXIgc2V0dXAgdGhl
biBqdXN0Cj4+PiByZS1pbnRyb2R1Y2UgdGhlIHF1aXJrLgo+Pgo+PiBPZiBjb3Vyc2UhIEkgZmln
dXJlZCBhcyBtdWNoLCBpdCdzIGp1c3QgZWFzeSB0byBzdGFydCBjb252ZXJzYXRpb25zIHdpdGgg
YQo+PiByZXZlcnQgOlAKPj4KPj4+Cj4+PiBXaGF0IGhhcHBlbnMgb24geW91ciBzeXN0ZW0gd2hl
biB0aGUKPj4+IMKgIHJlcyA9IGZhbjJfZ2V0X3NwZWVkKCZzcGVlZCk7Cj4+PiBpcyBjYWxsZWQ/
IElmIHRoYXQgaXMgZmFpbGluZyBpdCBtZWFucyB5b3VyIDJuZCBmYW4gaXNuJ3QgcmVzcG9uZGlu
ZyBhbmQKPj4+IHRoYXQncyBub3Qgc3VwcG9zZWQgdG8gaGFwcGVuLiBDb3VsZCB5b3UgbGV0IG1l
IGtub3cgaWYgeW91IGdldCBhbiBlcnJvcgo+Pj4gY29kZSwgaWYgaXQgaGFwcGVucyBldmVyeSBi
b290LCBldGMKPj4+IEkgYXNzdW1lIHdoZW4gdGhlIGZ1bmN0aW9uIGlzIGNhbGxlZCBsYXRlciBp
dCB3b3JrcyBzdWNjZXNzZnVsbHk/Cj4+Cj4+IEl0IGRlZmluaXRlbHkgc2VlbXMgdG8gaGFwcGVu
IGV2ZXJ5IGJvb3QsIG5vdCBzdXJlIGFib3V0IHRoZSBlcnJvciBjb2RlIGl0Cj4+IHJldHVybnMu
IEkgd2lsbCBjaGVjayBhbmQgZ2V0IHlvdSB0aGlzIGluZm8gYXNhcAo+Pgo+Pj4KPj4+IEFsc28g
cGxlYXNlIGNvbmZpcm0gd2hpY2ggQklPUyBhbmQgRUMgdmVyc2lvbiB5b3UgaGF2ZS4KPj4KPj4g
QklPUyB2ZXJzaW9uIE4zMkVUNzVXICgxLjUxKSByZWxlYXNlIGRhdGUgMTIvMDIvMjAyMSwgZW1i
ZWRkZWQgY29udHJvbGxlciBpcwo+PiAwLjEuMzIKPj4KPj4KPiBUaGFua3MhCj4gCj4gQWxvbmcg
d2l0aCBUaG9tYXMnIG5vdGVzIEkgdGhpbmsgSSd2ZSBmb3VuZCB0aGUgcHJvYmxlbSAodGhvdWdo
IHN0aWxsCj4gYmVtdXNlZCB3aHkgSSBkb24ndCBzZWUgdGhlIHByb2JsZW0gb24gbXkgWDFDOSBh
bmQgSSB0ZXN0ZWQgb24gbXVsdGlwbGUKPiBwbGF0Zm9ybXMgcHJldmlvdXNseS4uLnNvIGl0IGlz
IHNvbWV3aGF0IHdlaXJkKS4KPiAKPiBXb3JraW5nIG9uIGEgZml4IC0gd2lsbCB0cnkgYW5kIGhh
dmUgdGhhdCBvdXQgZm9yIHJldmlldyBsYXRlciB0b2RheSBvcgo+IHRvbW9ycm93Lgo+IApOb3Qg
c3VyZSBleGFjdGx5IHdoYXQgdGhlIGV0aXF1ZXR0ZSBoZXJlIGlzIGZvciB0aGUgbWFpbGluZyBs
aXN0IGJ1dCBJCmp1c3QgcG9zdGVkIGFuIHVwZGF0ZWQgcGF0Y2ggInBsYXRmb3JtL3g4NjogdGhp
bmtwYWRfYWNwaTogQ29ycmVjdCBkdWFsCmZhbiBwcm9iZSIgdGhhdCBJIHRoaW5rIGFkZHJlc3Nl
cyBhbGwgdGhlIGlzc3VlcyByYWlzZWQgaW4gdGhpcyBwYXRjaApzZXF1ZW5jZS4KClBsZWFzZSBs
ZXQgbWUga25vdyBhbnkgZmVlZGJhY2sgb3IgY29uY2VybnMuIEFuZCB0aGFua3MgZm9yIHJhaXNp
bmcgdGhpcyEKCk1hcmsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwppYm0tYWNwaS1kZXZlbCBtYWlsaW5nIGxpc3QKaWJtLWFjcGktZGV2ZWxAbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL2libS1hY3BpLWRldmVsCg==

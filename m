Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1B959A2B8
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 19 Aug 2022 18:58:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1oP5K3-0001Nx-Eq;
	Fri, 19 Aug 2022 16:58:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <markpearson@lenovo.com>) id 1oP5K1-0001Nq-Ly
 for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 19 Aug 2022 16:58:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:CC:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VzRSQmRD97EY5MzKcAQ/ZodWRoni50rzUbY3QuQN/rM=; b=WqoMaZg+b1fn8tdn69zEwY/7YY
 qcxMJKOgx+RWxIFUWlvw4I/9/qxJt0Hsb+DDEGx1rPmOL2qDSpGX0e/ZGF99gq6bvkjW4462yXHvV
 JXRIhy1DeDtHMIVeVoM+fzzkSECyJqHPeV7o0oaNbHeoh4DlC+Be5o4Jc81s7K2fkaDE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:CC:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VzRSQmRD97EY5MzKcAQ/ZodWRoni50rzUbY3QuQN/rM=; b=U0kcUN/Gn8naveD5bInxNIRxb0
 H7agZ46Lbc5rJp7trs2ezZNsBcSmuhdnscdod0lz/ApArCvbwpoE8Bi5iISRi3wW+dMPC1UwJs/+O
 WLeKS0+Ciy6HhY4XguP1OlfLbDcD+8bZVtRW3oIKeu58SoccuK8BfMchxqX3kfchYy4o=;
Received: from mail1.bemta31.messagelabs.com ([67.219.246.112])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oP5Jw-0002O2-H9 for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 19 Aug 2022 16:58:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lenovo.com;
 s=Selector; t=1660928277; i=@lenovo.com;
 bh=VzRSQmRD97EY5MzKcAQ/ZodWRoni50rzUbY3QuQN/rM=;
 h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
 In-Reply-To:Content-Type:Content-Transfer-Encoding;
 b=GeriuYEik5Tbl5EDUGVH5Q06jlrB6fGURQpS8NNlBqxVZJSk9j9ADO4zbH8YpNEYh
 6RTazLcmcP3oBfk3UmYj+g4HAsiuMwHM44RlECF9JLYs2+/IP3yr2bnh7/3CkTvfhV
 dXJ5MJD0W5PsLTfIMwm418BHQN0wJ4jV9fU2r2IJA7WpuLKQ5CTVwr90PdrP/9RCK6
 GtZwQcLnRbJzD5xi8PHjmd+Bsu77SMuvT5PNX752XSNFJg2bQcgstLAsbqlD2FlCtB
 GSebGawqkkguIwfJ6HSMDkF8ikC015D83Ah1LILqnbE6hkmp+D74glEZVwGWXb5at7
 Ae4bO7C0O70dA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrMJsWRWlGSWpSXmKPExsWSoS+VrSty8H+
 SwfI1phZvjk9nslj/eyWLxezDNhaXd81hs9jwvIPJ4sDUacwWq/e8YHZg9zj8cTuzx+8DjB6b
 VnWyeexe8JnJ4/2+q2wenzfJBbBFsWbmJeVXJLBm7H91irVgvkDF6lmH2BsYj/N2MXJxMAosZ
 ZY49uolI4SziFVi4ZyXTBBOG5PEn6bzLCCOkMA8Jol56/qZIZxDTBLnmq+AORICxxklug+tY4
 LIdDJK/Hh1CqpnApNE6/e1jBDOE0aJ/ifT2LsYOYGcR4wSF/epgNi8ArYSi28+YgGxWQRUJX5
 tb2KFiAtKnJz5BCwuKhAh0TvxDyOILSyQIfFh7k9mEJtZQFzi1pP5YKtFBFYySux99AjsKGaB
 NkaJj2v/skBss5U43nAdrJtNQFtiy5ZfbCA2p4CdxKVHy5kgJmlKtG7/zQ5hy0tsfzuHGaJXW
 eJX/3kwW0JAQeLGsUlsEHaCRPOUo4wQtqTEtZsX2CFsWYmjZ+ewQNi+Ene3fAeq4QCydSXmv/
 OECNtIvL2xBWqknMSp3nNMExh1ZyH5eRaS32YhuW4WkusWMLKsYrRMKspMzyjJTczM0TU0MNA
 1NDTRNdW1sNRLrNJN1Cst1k1NLC7RNdRLLC/WSy0u1iuuzE3OSdHLSy3ZxAhMaSlFrJE7GGf3
 /NQ7xCjJwaQkymu273+SEF9SfkplRmJxRnxRaU5q8SFGGQ4OJQne1yA5waLU9NSKtMwcYHqFS
 Utw8CiJ8J7cA5TmLS5IzC3OTIdInWI05riybe9eZo7z6y7tZRZiycvPS5US57U+AFQqAFKaUZ
 oHNwiW9i8xykoJ8zIyMDAI8RSkFuVmlqDKv2IU52BUEuYV3A80hSczrwRu3yugU5iATjl28Tf
 IKSWJCCmpBiZHzpX3beouR7WvSxdV0/7j6l4tknqneGq4d/lJh6hvKbu4DZ8YN3Y6CS4LaD1w
 YP3B//U2c7YxiqjMkK9cJ/hqi06BdKDuh83G+/jZDmS/Ef86oVyvT7700Lpfr9pT9zK+uCZf3
 fdsR2vrdf9DG8I460Pf8rIaNWvL3TtUsu3pz+iD7y1aY1+dcd8/y46jTjB0RvC/vnth7yxU//
 DdM7TSvG2o8/Q355YUQzXTe/zl+5y6zI/PM9kdOieW0c3otwATq99EEWefQway+zZ8meRwM8P
 glv/h8+n2ZpuXvZ+/v+XUVl4Dd6tmozDPhW2vv8tJfnJPW56iszf0nXJxIf/N72m2k/oufg0o
 6WC/rsRSnJFoqMVcVJwIAMS1HCx2BAAA
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-6.tower-686.messagelabs.com!1660928274!216842!2
X-Originating-IP: [104.47.26.107]
X-SYMC-ESS-Client-Auth: mailfrom-relay-check=pass
X-StarScan-Received: 
X-StarScan-Version: 9.87.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 2970 invoked from network); 19 Aug 2022 16:57:56 -0000
Received: from mail-sgaapc01lp2107.outbound.protection.outlook.com (HELO
 APC01-SG2-obe.outbound.protection.outlook.com) (104.47.26.107)
 by server-6.tower-686.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 19 Aug 2022 16:57:56 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tqmse7HDq6CcUTu27xvXJxjFXdK6PM+RMqX6jZOaM4gUraBwcuAmqI4kefh2tVwyZVQmAo5O9PyeFCL7oaLwKttddu3wVvtyKaszqLx6RrCUMSaCNUgIFCzCOKpyvk3giaPuA03jC6KtaHMLblzEAkmfFLyTOsQrJjZEHtWyWabcQXw7sA0KVCkSg+VDGm0OoVC27J4D80Psgq7GC//exzYq3FIxGyQ/UlaDEMTek1280VmD0Tkp7XTjAh1JAB7UpLMZH7b43lmuxhFbO1yvg3TE/JKEyVv/vcXLYtZVy0/kfDtg4xJae4OQX+i8jnFvTTp7iddgslT8aXXQZvpT/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VzRSQmRD97EY5MzKcAQ/ZodWRoni50rzUbY3QuQN/rM=;
 b=EvCP5VMbQNHnKbNUi3FFDyXaYkcccC2f7xAeitQCcMgd+djr8fQ4RB3+13QvmDxcz3DgwRgDg0hHLX13HMhNkOVr7izbFBJeYDaF3Xsb4/jTWJVpLKEcNWaYL44ws4IFiKGczdQGjTc8lBaEacs2mO3mQKuHpv2Nes23HqgjaiuOzO9m5CyrLI/qTPW+sE2nqk/SkP31anA2NQZ2w/eFrB3VWAmiQJD2Re2EXV2uOzLxziW5sIswwGC57KyELmE15a+LD/4gAJlxGhnma73rZRVleReJN3w/iNBPVwX5+q4/J0V2HzOQEpnT9tMzAep9Jvg5ogMsC8QURJhjghnbFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 104.232.225.7) smtp.rcpttodomain=amd.com smtp.mailfrom=lenovo.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=lenovo.com;
 dkim=none (message not signed); arc=none
Received: from PS2PR06CA0014.apcprd06.prod.outlook.com (2603:1096:300:56::26)
 by SG2PR03MB6432.apcprd03.prod.outlook.com (2603:1096:4:1c3::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.10; Fri, 19 Aug
 2022 16:57:49 +0000
Received: from PSAAPC01FT005.eop-APC01.prod.protection.outlook.com
 (2603:1096:300:56:cafe::4) by PS2PR06CA0014.outlook.office365.com
 (2603:1096:300:56::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.17 via Frontend
 Transport; Fri, 19 Aug 2022 16:57:48 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is
 104.232.225.7) smtp.mailfrom=lenovo.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=lenovo.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 lenovo.com discourages use of 104.232.225.7 as permitted sender)
Received: from mail.lenovo.com (104.232.225.7) by
 PSAAPC01FT005.mail.protection.outlook.com (10.13.38.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5546.15 via Frontend Transport; Fri, 19 Aug 2022 16:57:48 +0000
Received: from reswpmail01.lenovo.com (10.62.32.20) by mail.lenovo.com
 (10.62.123.117) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2375.28; Fri, 19 Aug
 2022 12:57:46 -0400
Received: from [10.38.97.152] (10.38.97.152) by reswpmail01.lenovo.com
 (10.62.32.20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2375.28; Fri, 19 Aug
 2022 12:57:45 -0400
Message-ID: <d9be30da-7306-149d-0e43-f32832965e59@lenovo.com>
Date: Fri, 19 Aug 2022 12:57:44 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Mario Limonciello <mario.limonciello@amd.com>, Henrique de Moraes Holschuh
 <hmh@hmh.eng.br>, Hans de Goede <hdegoede@redhat.com>, Mark Gross
 <markgross@kernel.org>
References: <20220819140142.4925-1-mario.limonciello@amd.com>
From: Mark Pearson <markpearson@lenovo.com>
In-Reply-To: <20220819140142.4925-1-mario.limonciello@amd.com>
X-Originating-IP: [10.38.97.152]
X-ClientProxiedBy: reswpmail01.lenovo.com (10.62.32.20) To
 reswpmail01.lenovo.com (10.62.32.20)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f88d2c8e-bd40-40ce-e4d9-08da8203f218
X-MS-TrafficTypeDiagnostic: SG2PR03MB6432:EE_
X-LD-Processed: 5c7d0b28-bdf8-410c-aa93-4df372b16203,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oyrSeRaYzfPwGBxAZwzurs/Z0VwePB4j/uOwYpJrZ2CLX/rdbnjrV+IT9UgrrtsVxQOh/rD1ukp1nbvIm08/56V3KlgHSr8kmnQWPw6P+sg0A93rFssQDhnXM8eSHxUx+VCMrJBkmSGSk4R0CqlfDPeLgusDImzjfzdHhcBZsc+cNThgZDdt7GEbvGdYHoFUxGLJk7vEtCvJ4dKRWUg+EPeSfcQQ5X9Jadxsl+L0NdHajxUsZcDZTyuAmEKwqjNO6f2tEbjRfjgLjATdDQ2wC7gPcojfK6OC84SVvBfvhzJHDfWmKmtreWQ8GIfdlBXhzTRNuRJTVc19hEfL8khlF2bWxdclnQkENMfGuuIvPWiYD3vnkmIsXfaIz+jW2vigVn/1LMsjPh7YcsmM/hBpjufur7ebMTlPFRqFt8kx3KQz0qDQILxhSK7et0SffdTf7UtvtH6KvqstZyzuOajKjACyQdn/jIxjU4GsVNNLMRMcCtwjJdWZtJqRDOZS6LJxluVJSkf5O2dscNXpdRkrY+fIXHEdPj+U0OBqLSkGjhQkZLqOpTmRMT4M1yTvIQHhxgQtyAOZH3EA8kuEQYPmGrS7T7xRKPjEGpAjlslgNdGP0bXhRMKxv30FuJu0TB+nEM2Ex45CFMDc4m7Z3elCzVFtJol8xaRmWFTuR3jMeO/4MuxDGCcthEydD2DCE/8qkfVjaCaSJkkSubTBlCTqgz94CDP1T2nypXybT05tiXUbIW7G+xC8fx24NEUhazm7hZin01z5WTt8YHtPe8xWoM9EKKAEM0ofDnrpnLTJG59DZGgqciMLiU2KDSvc775YvOCP1xHMwfFEUD+0lkpw1wleIeJFC8PKY8RMTt5ribIVkWJopy7W2dQJ0FrltLT30pZjyPpMtpWLT+4PPm14Uw==
X-Forefront-Antispam-Report: CIP:104.232.225.7; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.lenovo.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230016)(4636009)(39860400002)(396003)(376002)(136003)(346002)(36840700001)(46966006)(40470700004)(36756003)(82310400005)(4326008)(8676002)(40480700001)(2906002)(70206006)(70586007)(5660300002)(31686004)(8936002)(110136005)(54906003)(41300700001)(316002)(36906005)(16576012)(478600001)(966005)(356005)(36860700001)(26005)(86362001)(53546011)(31696002)(2616005)(186003)(336012)(16526019)(82960400001)(82740400003)(81166007)(426003)(47076005)(83380400001)(40460700003)(3940600001)(36900700001)(43740500002);
 DIR:OUT; SFP:1102; 
X-OriginatorOrg: lenovo.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2022 16:57:48.0202 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f88d2c8e-bd40-40ce-e4d9-08da8203f218
X-MS-Exchange-CrossTenant-Id: 5c7d0b28-bdf8-410c-aa93-4df372b16203
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=5c7d0b28-bdf8-410c-aa93-4df372b16203; Ip=[104.232.225.7];
 Helo=[mail.lenovo.com]
X-MS-Exchange-CrossTenant-AuthSource: PSAAPC01FT005.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR03MB6432
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022-08-19 10:01,
 Mario Limonciello wrote: > It was observed
 that on a Thinkpad T14 Gen1 (AMD) that the platform > profile is starting
 up in 'low-power' mode after refreshing what the > firmware ha [...] 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [67.219.246.112 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [67.219.246.112 listed in list.dnswl.org]
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
X-Headers-End: 1oP5Jw-0002O2-H9
Subject: Re: [ibm-acpi-devel] [External] [PATCH] platform/x86:
 thinkpad_acpi: Explicitly set to balanced mode on startup
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
Cc: ibm-acpi-devel@lists.sourceforge.net, madcatx@atlas.cz,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net



On 2022-08-19 10:01, Mario Limonciello wrote:
> It was observed that on a Thinkpad T14 Gen1 (AMD) that the platform
> profile is starting up in 'low-power' mode after refreshing what the
> firmware had.  This is most likely a firmware bug, but as a harmless
> workaround set the default profile to 'balanced' at thinkpad_acpi startup.
> 
> Reported-and-tested-by: madcatx@atlas.cz
> Link: https://bugzilla.kernel.org/show_bug.cgi?id=216347>> Signed-off-by: Mario Limonciello <mario.limonciello@amd.com>
> ---
>  drivers/platform/x86/thinkpad_acpi.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 22d4e8633e30..e7e86c0b9ad7 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -10590,12 +10590,7 @@ static int tpacpi_dytc_profile_init(struct ibm_init_struct *iibm)
>  		return -ENODEV;
>  
>  	/* Ensure initial values are correct */
> -	dytc_profile_refresh();
> -
> -	/* Set AMT correctly now we know current profile */
> -	if ((dytc_capabilities & BIT(DYTC_FC_PSC)) &&
> -	    (dytc_capabilities & BIT(DYTC_FC_AMT)))
> -	    dytc_control_amt(dytc_current_profile == PLATFORM_PROFILE_BALANCED);
> +	dytc_profile_set(NULL, PLATFORM_PROFILE_BALANCED);
>  
>  	return 0;
>  }
I'm hesitant on this and would like some time to dig into it first.

I worry that this would be overriding the setting in the BIOS. On the
Intel platforms (at least on the mobile workstations) we can set the
default power setting in the BIOS. I don't see this on the T14 AMD G1 -
and haven't had a chance to check other platforms so its less of a
concern there.

As a compromise I'd want to force the profile to balanced on the PSC
modes only.

Ideally, if this is a FW bug we should get it fixed in FW. I know our FW
team can be a bit slow, but I'd rather hold off a few more days until I
have a better idea where the issue is. I don't really understand why the
person with the original issue is seeing the behaviour that they are.

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

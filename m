Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D34E5453B44
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 16 Nov 2021 21:53:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mn5S8-0000mw-TT; Tue, 16 Nov 2021 20:53:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <markpearson@lenovo.com>) id 1mn5S7-0000ml-27
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 16 Nov 2021 20:53:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:CC:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tPA0v+1rxlNKGftCn8CJPkZNF6Rrq/mSTCsdgUDOjjs=; b=KuTKvlmhZFprV+RNY6V6jn/gS+
 YP5n4Y0BH9BIyToUEMKhkDflCWos0nU6frD6eqdqQW/NbkH7YHOFygIMzR6EhGti7IPw8ump7mwmZ
 TwntOYiIs2pDMEsbbb0OfFNTMC+HU3gcpLEze/kGCjbMKsnItFfnNyeuue6DqYh/8eJk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:CC:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tPA0v+1rxlNKGftCn8CJPkZNF6Rrq/mSTCsdgUDOjjs=; b=m9jqC6EErmhhEuE6RqM3rzqiji
 lJLmOjFkWUVd6NAd6+h+R13rdOiwUA2t7mIE32X8YLZ3DLV3fjc5FhP64zfVUAMk3oDkdh13mZ5YS
 p/oyY7A+kmibOY3ZR5bGv1d+MifCuB0Wvf9o9uVj6rr5fCCDqRZDW+ez8zu99xrxY7QY=;
Received: from mail1.bemta23.messagelabs.com ([67.219.246.114])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mn5S2-00FJTe-9o
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 16 Nov 2021 20:53:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lenovo.com;
 s=Selector; t=1637095983; i=@lenovo.com;
 bh=tPA0v+1rxlNKGftCn8CJPkZNF6Rrq/mSTCsdgUDOjjs=;
 h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
 In-Reply-To:Content-Type:Content-Transfer-Encoding;
 b=12MwLMvl8QqgXySG426D+8rzLG4pxWx9tfIPVMY4qwQCN5zF5oBIqv8J+KJwLcp0K
 D7BeyqGigLtxHihBbxUqFtmJQQrU56VQNhWXhcKAEhH3psdSt6x6uRYY2azKdeRPy+
 dz9FnCNWibuPRtmCG3kNyCk/k6Eq4c9e+pD+Vf88aiOShjlEUD7h7Sa0g3cVcxcdhj
 wB1+PBZJ/SwinyiL7eSeHGE3a9QUBkcmar2Ak/rkJa+YOdE9TIrnKUnk2Lgnq5cHy+
 M3y+IdeWENXgDME7Qjr6u0fOGlABp8hvIF19kldsBc9J/uJdMkFqi7rd6WxQy2Bgya
 ReiNwzHhEuY/g==
Received: from [100.112.4.164] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-3.bemta.az-c.us-east-1.aws.symcld.net id 25/D0-32713-E2A14916;
 Tue, 16 Nov 2021 20:53:02 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA1VTfUwTZxzmvbter4Syo8B46URNHSwWrlBGlmO
 4zf2h6WaGi8zMmH14QKWdpZBeibhk0gGSKAzkQxkVFbUMBhqBQrutQBHwC0bcBGZFRhQR+fCL
 Mc2kju0uh4798+Z5fs/ved7fL3lfApWViOWENtusNRkZgwL3xXTRciWlklcwMZ5+knZfg/TjJ
 zfE9L2LlQh91vs9Rh/pWUfvG1vA6cGfqnF6/pteQHv/mkTorkOHUdqR1wPoxvYplB4q9wC632
 Ve76/50fq7WHOqxY1rFhynMY23C2haGvbjGlfNPKJ52DmMa+ZbVmpKCi+IP5RsF+mNyRnZO0Q
 6ywMPkmmjsv/pnhZbQG74AeBLALIWhc/63IhAToqge9iBCWQBwL8vW1CeyEgrAkfzK3GBuBF4
 byxXzBNIDgDYWmXn2iSckgHPOdqWLGUI/NntWbJMADjydfuSchPAuZuLOG+Rkm/B07+OYzzGy
 HDY0DyDCfUAeLlqgsMEEUx+DC2jLA8DyW3Qfm4r34GSIXBk4jjC4yDyAgLbRt/h41HyDIAnZu
 YA3y8jv4B/no3ge3AyEra2LuB8WUImwJ7p14SYtXCf0ysW8CqY13ZkaZc1cKHkCsq3Q65uqZL
 wZUjugEWL47iAQ+Fv138RCzgMnh+oxgT8ATwzPyYWrEpujyihbIAPGzqXEiPg6P1NB4HKumxZ
 67K1rMtmsy6brQZgDeCNZJM+TWdOZ/QGSh0TQ6nVsVQcpY5Xq5gvqRRVFktpGdZMcXQ3q2L3p
 KcYUlVGrbkFcO8xNRNz/wCGZh+pukEogSiCpS/fKmdk/skZqXt0DKv73JRl0LLdYAVBKKC0xr
 eCkQWYtGna7J16A/eqn8uQ8FMESSshJ0vZTCad1acJUh+IJw5OHz2JEgeKTnBnWa/LicowY4Z
 RKw+RPuYNJG/QZRlfxD3/J1dBmDxQCnx8fGR+mVpTut78f30GhBBAESh9FMKl+OmN5he3znAD
 IdxAYYPl/EBm5j9JbkE2BqhevVSZfzdxTZzpOt6+ZfeAhOjd9nTO9sraqUlXX85HK7aGvqlo7
 6peN55ZP11ZWk/g+wv2Xtnl05RaN2xUIqL37IO392KqnA1lnk6n6HhJ8Ez+XKG3NDwyr7ZjNO
 fd8SKR/+vOyA5quqt+tslU2JwSW089vTT0R1Z1se7Oyif13ynTDuObSh7Uxta9Xxrdn7H5k5o
 kWxPmuBF1t7j2WddniUlJEZ6E1bmhpauic8YmgkpXI1dHnJNmqW3xzk6F3d5jnepwHPXkht2+
 lXAt0SZ/adf2gmrpt42zzRu3rD/vrd3Q+FU+MEUqovKK3u6enXVcrKgr9jEXfHr/lCsuO/6YA
 mN1jFqJmljmX4cgBNqiBAAA
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-9.tower-406.messagelabs.com!1637095980!50706!1
X-Originating-IP: [104.47.26.42]
X-SYMC-ESS-Client-Auth: mailfrom-relay-check=pass
X-StarScan-Received: 
X-StarScan-Version: 9.81.5; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 27284 invoked from network); 16 Nov 2021 20:53:01 -0000
Received: from mail-psaapc01lp2042.outbound.protection.outlook.com (HELO
 APC01-PSA-obe.outbound.protection.outlook.com) (104.47.26.42)
 by server-9.tower-406.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 16 Nov 2021 20:53:01 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ncX/PGmNfi3GAL9YOsuOZCiz6GvkpO0YtdK45UyGsp7VtXxzYOUrZaLH3quef+MncZJhUhs0TEl8719KY3pIIltd9Y5Bk4pkgyVySm6AaSxTLpz+IfBeS1dkW2cx0ECI+2moPbrXftkbduFe/KFoNHu64Hd2L+VCgXBPU8ZMc5f1PK4AIdi0LQmPTfMmijYud1Ws+h1wgv3L1a/cWiPJw02pLCgYbC2Wlu2QuzQyy0mFUhmLGXoYtTs2tuoXDEyMdPXnXHaqZW1iwuGel8DAseZ20oKQycQtvAzcqcLKVpWlMX+DBxxwP2xd0ShC3ybj/6bbANUXpa8ZZq8pahvTFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tPA0v+1rxlNKGftCn8CJPkZNF6Rrq/mSTCsdgUDOjjs=;
 b=B4lrsWwDhZR4RYvBljWBhhD9tXu9uoJxt35Sr/bg5TBm5KuoiQi947ERgcB36O+RxRlhr6bEb3P0FvvHAXCatuuIu46n/qD1tLu/FciQzoTuXMwd5s39/r9n3lB+xNx0b0JsD9RDhJ22uWPnJMLzPYB7i/sRAfz2mp6SB7JXK3PJhwX4SnDwPgZ7Hvl1G3VTzsAKmzdX2N6CgjcOQImFRi2ALv5bwAS+32Pq+jTRn3rF6A585DNX/52eRmt7GSSghB8W/mhM48/24HJ+2GwVpr17IMFcdjRKB3VtYWoeuQ8PwzuraV8TuClQSGpeXv7nFTKjIYzhTZG++6k3/zPGxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=temperror (sender ip
 is 104.232.225.6) smtp.rcpttodomain=weissschuh.net
 smtp.mailfrom=lenovo.com; 
 dmarc=temperror action=none header.from=lenovo.com; dkim=none (message not
 signed); arc=none
Received: from SG2PR0302CA0015.apcprd03.prod.outlook.com (2603:1096:3:2::25)
 by SG2PR03MB3959.apcprd03.prod.outlook.com (2603:1096:4:33::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4713.18; Tue, 16 Nov 2021 20:52:58 +0000
Received: from SG2APC01FT015.eop-APC01.prod.protection.outlook.com
 (2603:1096:3:2:cafe::6f) by SG2PR0302CA0015.outlook.office365.com
 (2603:1096:3:2::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4713.15 via Frontend
 Transport; Tue, 16 Nov 2021 20:52:58 +0000
X-MS-Exchange-Authentication-Results: spf=temperror (sender IP is
 104.232.225.6) smtp.mailfrom=lenovo.com; dkim=none (message not signed)
 header.d=none;dmarc=temperror action=none header.from=lenovo.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of lenovo.com: DNS Timeout)
Received: from mail.lenovo.com (104.232.225.6) by
 SG2APC01FT015.mail.protection.outlook.com (10.152.250.181) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4690.15 via Frontend Transport; Tue, 16 Nov 2021 20:52:56 +0000
Received: from reswpmail01.lenovo.com (10.62.32.20) by mail.lenovo.com
 (10.62.123.116) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2308.20; Tue, 16 Nov
 2021 15:52:54 -0500
Received: from [10.38.49.20] (10.38.49.20) by reswpmail01.lenovo.com
 (10.62.32.20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2308.20; Tue, 16 Nov
 2021 15:52:53 -0500
Message-ID: <82ec6164-223b-940a-6992-48ccbe47a615@lenovo.com>
Date: Tue, 16 Nov 2021 15:52:52 -0500
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
 <20211113104225.141333-5-linux@weissschuh.net>
From: Mark Pearson <markpearson@lenovo.com>
In-Reply-To: <20211113104225.141333-5-linux@weissschuh.net>
X-Originating-IP: [10.38.49.20]
X-ClientProxiedBy: reswpmail04.lenovo.com (10.62.32.23) To
 reswpmail01.lenovo.com (10.62.32.20)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0814060b-177a-42bc-d170-08d9a94311ab
X-MS-TrafficTypeDiagnostic: SG2PR03MB3959:
X-Microsoft-Antispam-PRVS: <SG2PR03MB3959B03F564CB51C3B384A50C5999@SG2PR03MB3959.apcprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VfoApSh0HKoNK3PLaXIHfYgY+vPBT42rj8r/shEyrRp6M+ymsPI5TMr2403pZqlg58lYENhwMTZkWnZ9fIvbwevdqncMkJETHfTFMLQWpQVW+G04Ml/YIs0Ri9IDJhfIH9JGGDmfVzfX3ccfCRCrDTE9LmeJhhrraUYp39cCmgtzQSbwwHIi7HTgbBXNKk48jdv1uHb/Ptym+/kdFtmANLev08w/VIEAzJaE/kmydEW4bEuEqOZ70jJMKQoVLVNYBKKJv3/xNalKk5WhfF6UVc0cCM3tN9tZ9wv3Dw1LAZ7UMUD1RjtEW6KMf9i54A99ztxKA3RZNn4LeVTgFOAE7GZ4e7jbXKkd92QBrUajJeGV0A7gGMHJe2bThE2CMsH3q8NtuyhMCJtTMNPLxqFIBzT78ZNNrByoaa8ZSc3BxhmvK6jplLm364sk0A5z+x8EBxOsy47jmv3TEA90nPdnzj0dxVtosetJeM2ovTCE8D277xKvx0OvJ5l21d7cqueDM1cQeCZ1yM9A3ZnMKIZtkG/bGIGBHHhoik4bhTJn2A1RyWM8g+0krMxVpVXGg/eeFEmUyP8771+TMGrOhb0yS+XeVkjc0buYz09rmFvtQn7vDzU9PlgbQ9K+o6DXh8xl3nGdrWUwI8d5GKY+TTKh3SBH1Xx1fkLxmpu53ughObSaizOMXFBBkOEVwqMZH+ll80Ryhrc+pTlIOkaeEQHWbfbAXvdXIA0gHupSSyJb1LQGozFQNsi9vgiEGwG04UYnutjSenmHIjz2MRzVwPjD+zq63chqlvwWKv0KbQ4qtHycMtrzc+OwGFfOQHGBi5VKq5T+9C10YSpy718qaR4kf5dEA6p8WXDpbSVreMA1LfS9ghNQqooyY/B/zl/LXKshUOIuilWLFg09ggTpXachLg==
X-Forefront-Antispam-Report: CIP:104.232.225.6; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.lenovo.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(4636009)(36840700001)(46966006)(4326008)(63370400001)(16526019)(186003)(53546011)(966005)(70206006)(83380400001)(426003)(336012)(2616005)(31696002)(356005)(82960400001)(47076005)(7416002)(81166007)(86362001)(66574015)(26005)(70586007)(36860700001)(82310400003)(54906003)(110136005)(36756003)(16576012)(5660300002)(8676002)(36906005)(2906002)(508600001)(316002)(31686004)(8936002)(4001150100001)(63350400001)(3940600001)(43740500002)(2101003)(36900700001);
 DIR:OUT; SFP:1102; 
X-OriginatorOrg: lenovo.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Nov 2021 20:52:56.8735 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0814060b-177a-42bc-d170-08d9a94311ab
X-MS-Exchange-CrossTenant-Id: 5c7d0b28-bdf8-410c-aa93-4df372b16203
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=5c7d0b28-bdf8-410c-aa93-4df372b16203; Ip=[104.232.225.6];
 Helo=[mail.lenovo.com]
X-MS-Exchange-CrossTenant-AuthSource: SG2APC01FT015.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR03MB3959
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Thomas, On 2021-11-13 05:42, Thomas Weißschuh wrote: >
    This adds support for the inhibit-charge charge_behaviour through the > embedded
    controller of ThinkPads. > > Signed-off-by: Thomas Weißschuh <linux@we [...]
    
 
 Content analysis details:   (-2.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [67.219.246.114 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [67.219.246.114 listed in wl.mailspike.net]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mn5S2-00FJTe-9o
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
 linux-kernel@vger.kernel.org, smclt30p@gmail.com, hadess@hadess.net,
 njoshi1@lenovo.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGkgVGhvbWFzLAoKT24gMjAyMS0xMS0xMyAwNTo0MiwgVGhvbWFzIFdlacOfc2NodWggd3JvdGU6
Cj4gVGhpcyBhZGRzIHN1cHBvcnQgZm9yIHRoZSBpbmhpYml0LWNoYXJnZSBjaGFyZ2VfYmVoYXZp
b3VyIHRocm91Z2ggdGhlCj4gZW1iZWRkZWQgY29udHJvbGxlciBvZiBUaGlua1BhZHMuCj4gCj4g
U2lnbmVkLW9mZi1ieTogVGhvbWFzIFdlacOfc2NodWggPGxpbnV4QHdlaXNzc2NodWgubmV0Pgo+
IAo+IC0tLQo+IAo+IFRoaXMgcGF0Y2ggaXMgYmFzZWQgb24gaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvcGxhdGZvcm0tZHJpdmVyLXg4Ni9kMjgwODkzMC01ODQwLTZmZmItM2E1OS1kMjM1Y2RiMWZl
MTZAZ21haWwuY29tLz4+IC0tLQo+ICBkcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3Bp
LmMgfCA1NSArKysrKysrKysrKysrKysrKysrKysrKysrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCA1
MyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMgYi9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlu
a3BhZF9hY3BpLmMKPiBpbmRleCBlOGM5OGU5YWZmNzEuLjdjZDY0NzUyNDBiMiAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMKPiArKysgYi9kcml2ZXJz
L3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMKPiBAQCAtOTMyMSw2ICs5MzIxLDggQEAgc3Rh
dGljIHN0cnVjdCBpYm1fc3RydWN0IG11dGVfbGVkX2RyaXZlcl9kYXRhID0gewo+ICAjZGVmaW5l
IFNFVF9TVE9QCSJCQ1NTIgo+ICAjZGVmaW5lIEdFVF9ESVNDSEFSR0UJIkJEU0ciCj4gICNkZWZp
bmUgU0VUX0RJU0NIQVJHRQkiQkRTUyIKPiArI2RlZmluZSBHRVRfSU5ISUJJVAkiUFNTRyIKPiAr
I2RlZmluZSBTRVRfSU5ISUJJVAkiQklDUyIKPiAgCj4gIGVudW0gewo+ICAJQkFUX0FOWSA9IDAs
Cj4gQEAgLTkzMzgsNiArOTM0MCw3IEBAIGVudW0gewo+ICAJVEhSRVNIT0xEX1NUQVJULAo+ICAJ
VEhSRVNIT0xEX1NUT1AsCj4gIAlGT1JDRV9ESVNDSEFSR0UsCj4gKwlJTkhJQklUX0NIQVJHRSwK
PiAgfTsKPiAgCj4gIHN0cnVjdCB0cGFjcGlfYmF0dGVyeV9kYXRhIHsKPiBAQCAtOTQwOSw2ICs5
NDEyLDEzIEBAIHN0YXRpYyBpbnQgdHBhY3BpX2JhdHRlcnlfZ2V0KGludCB3aGF0LCBpbnQgYmF0
dGVyeSwgaW50ICpyZXQpCj4gIAkJLyogVGhlIGZvcmNlIGRpc2NoYXJnZSBzdGF0dXMgaXMgaW4g
Yml0IDAgKi8KPiAgCQkqcmV0ID0gKnJldCAmIDB4MDE7Cj4gIAkJcmV0dXJuIDA7Cj4gKwljYXNl
IElOSElCSVRfQ0hBUkdFOgo+ICsJCS8qIFRoaXMgaXMgYWN0dWFsbHkgcmVhZGluZyBwZWFrIHNo
aWZ0IHN0YXRlLCBsaWtlIHRwYWNwaS1iYXQgZG9lcyAqLwo+ICsJCWlmIEFDUElfRkFJTFVSRSh0
cGFjcGlfYmF0dGVyeV9hY3BpX2V2YWwoR0VUX0lOSElCSVQsIHJldCwgYmF0dGVyeSkpCj4gKwkJ
CXJldHVybiAtRU5PREVWOwo+ICsJCS8qIFRoZSBpbmhpYml0IGNoYXJnZSBzdGF0dXMgaXMgaW4g
Yml0IDAgKi8KPiArCQkqcmV0ID0gKnJldCAmIDB4MDE7Cj4gKwkJcmV0dXJuIDA7Cj4gIAlkZWZh
dWx0Ogo+ICAJCXByX2NyaXQoIndyb25nIHBhcmFtZXRlcjogJWQiLCB3aGF0KTsKPiAgCQlyZXR1
cm4gLUVJTlZBTDsKPiBAQCAtOTQ0Nyw2ICs5NDU3LDIyIEBAIHN0YXRpYyBpbnQgdHBhY3BpX2Jh
dHRlcnlfc2V0KGludCB3aGF0LCBpbnQgYmF0dGVyeSwgaW50IHZhbHVlKQo+ICAJCQlyZXR1cm4g
LUVOT0RFVjsKPiAgCQl9Cj4gIAkJcmV0dXJuIDA7Cj4gKwljYXNlIElOSElCSVRfQ0hBUkdFOgo+
ICsJCS8qIFdoZW4gc2V0dGluZyBpbmhpYml0IGNoYXJnZSwgd2Ugc2V0IGEgZGVmYXVsdCB2YWx1
ZSBvZgo+ICsJCSAqIGFsd2F5cyBicmVha2luZyBvbiBBQyBkZXRhY2ggYW5kIHRoZSBlZmZlY3Rp
dmUgdGltZSBpcyBzZXQgdG8KPiArCQkgKiBiZSBwZXJtYW5lbnQuCj4gKwkJICogVGhlIGJhdHRl
cnkgSUQgaXMgaW4gYml0cyA0LTUsIDIgYml0cywKPiArCQkgKiB0aGUgZWZmZWN0aXZlIHRpbWUg
aXMgaW4gYml0cyA4LTIzLCAyIGJ5dGVzLgo+ICsJCSAqIEEgdGltZSBvZiBGRkZGIGluZGljYXRl
cyBmb3JldmVyLgo+ICsJCSAqLwo+ICsJCXBhcmFtID0gdmFsdWU7Cj4gKwkJcGFyYW0gfD0gYmF0
dGVyeSA8PCA0Owo+ICsJCXBhcmFtIHw9IDB4RkZGRiA8PCA4Owo+ICsJCWlmIChBQ1BJX0ZBSUxV
UkUodHBhY3BpX2JhdHRlcnlfYWNwaV9ldmFsKFNFVF9JTkhJQklULCAmcmV0LCBwYXJhbSkpKSB7
Cj4gKwkJCXByX2VycigiZmFpbGVkIHRvIHNldCBpbmhpYml0IGNoYXJnZSBvbiAlZCIsIGJhdHRl
cnkpOwo+ICsJCQlyZXR1cm4gLUVOT0RFVjsKPiArCQl9Cj4gKwkJcmV0dXJuIDA7Cj4gIAlkZWZh
dWx0Ogo+ICAJCXByX2NyaXQoIndyb25nIHBhcmFtZXRlcjogJWQiLCB3aGF0KTsKPiAgCQlyZXR1
cm4gLUVJTlZBTDsKPiBAQCAtOTQ2Nyw2ICs5NDkzLDggQEAgc3RhdGljIGludCB0cGFjcGlfYmF0
dGVyeV9wcm9iZShpbnQgYmF0dGVyeSkKPiAgCSAqIDQpIENoZWNrIGZvciBzdXBwb3J0Cj4gIAkg
KiA1KSBHZXQgdGhlIGN1cnJlbnQgZm9yY2UgZGlzY2hhcmdlIHN0YXR1cwo+ICAJICogNikgQ2hl
Y2sgZm9yIHN1cHBvcnQKPiArCSAqIDcpIEdldCB0aGUgY3VycmVudCBpbmhpYml0IGNoYXJnZSBz
dGF0dXMKPiArCSAqIDgpIENoZWNrIGZvciBzdXBwb3J0Cj4gIAkgKi8KPiAgCWlmIChhY3BpX2hh
c19tZXRob2QoaGtleV9oYW5kbGUsIEdFVF9TVEFSVCkpIHsKPiAgCQlpZiBBQ1BJX0ZBSUxVUkUo
dHBhY3BpX2JhdHRlcnlfYWNwaV9ldmFsKEdFVF9TVEFSVCwgJnJldCwgYmF0dGVyeSkpIHsKPiBA
QCAtOTUxMyw2ICs5NTQxLDE2IEBAIHN0YXRpYyBpbnQgdHBhY3BpX2JhdHRlcnlfcHJvYmUoaW50
IGJhdHRlcnkpCj4gIAkJCWJhdHRlcnlfaW5mby5iYXR0ZXJpZXNbYmF0dGVyeV0uY2hhcmdlX2Jl
aGF2aW91cnMgfD0KPiAgCQkJCUJJVChQT1dFUl9TVVBQTFlfQ0hBUkdFX0JFSEFWSU9VUl9GT1JD
RV9ESVNDSEFSR0UpOwo+ICAJfQo+ICsJaWYgKGFjcGlfaGFzX21ldGhvZChoa2V5X2hhbmRsZSwg
R0VUX0lOSElCSVQpKSB7Cj4gKwkJaWYgKEFDUElfRkFJTFVSRSh0cGFjcGlfYmF0dGVyeV9hY3Bp
X2V2YWwoR0VUX0lOSElCSVQsICZyZXQsIGJhdHRlcnkpKSkgewo+ICsJCQlwcl9lcnIoIkVycm9y
IHByb2JpbmcgYmF0dGVyeSBpbmhpYml0IGNoYXJnZTsgJWRcbiIsIGJhdHRlcnkpOwo+ICsJCQly
ZXR1cm4gLUVOT0RFVjsKPiArCQl9Cj4gKwkJLyogU3VwcG9ydCBpcyBtYXJrZWQgaW4gYml0IDUg
Ki8KPiArCQlpZiAocmV0ICYgQklUKDUpKQo+ICsJCQliYXR0ZXJ5X2luZm8uYmF0dGVyaWVzW2Jh
dHRlcnldLmNoYXJnZV9iZWhhdmlvdXJzIHw9Cj4gKwkJCQlCSVQoUE9XRVJfU1VQUExZX0NIQVJH
RV9CRUhBVklPVVJfSU5ISUJJVF9DSEFSR0UpOwo+ICsJfQo+ICAKPiAgCWJhdHRlcnlfaW5mby5i
YXR0ZXJpZXNbYmF0dGVyeV0uY2hhcmdlX2JlaGF2aW91cnMgfD0KPiAgCQlCSVQoUE9XRVJfU1VQ
UExZX0NIQVJHRV9CRUhBVklPVVJfQVVUTyk7Cj4gQEAgLTk2NzMsNiArOTcxMSwxMSBAQCBzdGF0
aWMgc3NpemVfdCBjaGFyZ2VfYmVoYXZpb3VyX3Nob3coc3RydWN0IGRldmljZSAqZGV2LAo+ICAJ
CQlyZXR1cm4gLUVOT0RFVjsKPiAgCQlpZiAocmV0KQo+ICAJCQlhY3RpdmUgPSBQT1dFUl9TVVBQ
TFlfQ0hBUkdFX0JFSEFWSU9VUl9GT1JDRV9ESVNDSEFSR0U7Cj4gKwl9IGVsc2UgaWYgKGF2YWls
YWJsZSAmIEJJVChQT1dFUl9TVVBQTFlfQ0hBUkdFX0JFSEFWSU9VUl9JTkhJQklUX0NIQVJHRSkp
IHsKPiArCQlpZiAodHBhY3BpX2JhdHRlcnlfZ2V0KElOSElCSVRfQ0hBUkdFLCBiYXR0ZXJ5LCAm
cmV0KSkKPiArCQkJcmV0dXJuIC1FTk9ERVY7Cj4gKwkJaWYgKHJldCkKPiArCQkJYWN0aXZlID0g
UE9XRVJfU1VQUExZX0NIQVJHRV9CRUhBVklPVVJfSU5ISUJJVF9DSEFSR0U7Cj4gIAl9Cj4gIAo+
ICAJcmV0dXJuIHBvd2VyX3N1cHBseV9jaGFyZ2VfYmVoYXZpb3VyX3Nob3coZGV2LCBhdmFpbGFi
bGUsIGFjdGl2ZSwgYnVmKTsKPiBAQCAtOTcxMCwxMiArOTc1MywyMCBAQCBzdGF0aWMgc3NpemVf
dCBjaGFyZ2VfYmVoYXZpb3VyX3N0b3JlKHN0cnVjdCBkZXZpY2UgKmRldiwKPiAgCXN3aXRjaCAo
c2VsZWN0ZWQpIHsKPiAgCWNhc2UgUE9XRVJfU1VQUExZX0NIQVJHRV9CRUhBVklPVVJfQVVUTzoK
PiAgCQlyZXQgPSB0cGFjcGlfYmF0dGVyeV9zZXQoRk9SQ0VfRElTQ0hBUkdFLCBiYXR0ZXJ5LCAw
KTsKPiAtCQlpZiAocmV0IDwgMCkKPiArCQlyZXQgPSB0cGFjcGlfYmF0dGVyeV9zZXQoSU5ISUJJ
VF9DSEFSR0UsIGJhdHRlcnksIDApIHx8IHJldDsKPiArCQlpZiAocmV0KQo+ICAJCQlyZXR1cm4g
cmV0Owo+ICAJCWJyZWFrOwo+ICAJY2FzZSBQT1dFUl9TVVBQTFlfQ0hBUkdFX0JFSEFWSU9VUl9G
T1JDRV9ESVNDSEFSR0U6Cj4gIAkJcmV0ID0gdHBhY3BpX2JhdHRlcnlfc2V0KEZPUkNFX0RJU0NI
QVJHRSwgYmF0dGVyeSwgMSk7Cj4gLQkJaWYgKHJldCA8IDApCj4gKwkJcmV0ID0gdHBhY3BpX2Jh
dHRlcnlfc2V0KElOSElCSVRfQ0hBUkdFLCBiYXR0ZXJ5LCAwKSB8fCByZXQ7Cj4gKwkJaWYgKHJl
dCkKPiArCQkJcmV0dXJuIHJldDsKPiArCQlicmVhazsKPiArCWNhc2UgUE9XRVJfU1VQUExZX0NI
QVJHRV9CRUhBVklPVVJfSU5ISUJJVF9DSEFSR0U6Cj4gKwkJcmV0ID0gdHBhY3BpX2JhdHRlcnlf
c2V0KEZPUkNFX0RJU0NIQVJHRSwgYmF0dGVyeSwgMCk7Cj4gKwkJcmV0ID0gdHBhY3BpX2JhdHRl
cnlfc2V0KElOSElCSVRfQ0hBUkdFLCBiYXR0ZXJ5LCAxKSB8fCByZXQ7Cj4gKwkJaWYgKHJldCkK
PiAgCQkJcmV0dXJuIHJldDsKPiAgCQlicmVhazsKPiAgCWRlZmF1bHQ6Cj4gCgpJIGNhbiBjb25m
aXJtIHRoZSBiaXQgZmllbGRzIGFyZSBjb3JyZWN0IGZvciB0aGVzZSBjYWxscyAoYXMgZm9yIHRo
ZQpwcmV2aW91cyBwYXRjaCkKCkNvdXBsZSBvZiB0aGluZ3MgdG8gbm90ZSwgYmFzZWQgb24gZmVl
ZGJhY2sgcHJldmlvdXNseSBmcm9tIHRoZSBGVyB0ZWFtCnRoYXQgSSBmb3VuZCB3aGVuIGRpZ2dp
bmcgdGhydSBteSBiYXR0ZXJ5IHJlbGF0ZWQgZW1haWxzLgoKIkxlbm92byBkb2Vzbid0IG9mZmlj
aWFsbHkgc3VwcG9ydCB0aGUgdXNlIG9mIHRoZXNlIGNhbGxzIC0gdGhleSdyZQppbnRlbmRlZCBm
b3IgaW50ZXJuYWwgdXNlIiAoYXQgdGhpcyBwb2ludCBpbiB0aW1lIC0gdGhlcmUgaXMgc29tZQpk
aXNjdXNzaW9uIGFib3V0IGJhdHRlcnkgcmVjYWxpYnJhdGlvbiBzdXBwb3J0IGJ1dCBJIGRvbid0
IGhhdmUgZGV0YWlscwpJIGNhbiBzaGFyZSB0aGVyZSB5ZXQpLgoKVGhlIEZXIHRlYW0gYWxzbyBu
b3RlZCB0aGF0OgoKIkFjdHVhbCBiYXR0ZXJ5IGNoYXJnaW5nL2Rpc2NoYXJnaW5nIGJlaGF2aW9y
cyBhcmUgbWFuYWdlZCBieSBFQ0ZXLiBTbwp0aGUgcmVxdWVzdCBvZiBCRFNTL0JJQ1MgbWV0aG9k
IG1heSBiZSByZWplY3RlZCBieSBFQ0ZXIGZvciB0aGUgY3VycmVudApiYXR0ZXJ5IG1vZGUvc3Rh
dHVzLiBZb3UgaGF2ZSB0byBjaGVjayBpZiB0aGUgcmVxdWVzdCBvZiB0aGUgbWV0aG9kIGlzCmFj
dHVhbGx5IGFwcGxpZWQgb3Igbm90IgoKU28gZm9yIHRoZSBjYWxscyBhYm92ZSAoYW5kIGZvciB0
aGUgQkRTUyBjYWxscyBpbiB0aGUgcHJldmlvdXMgcGF0Y2gpIGl0CndvdWxkIGJlIGdvb2QgdG8g
ZG8gYSByZWFkIGJhY2sgb2YgdGhlIHNldHRpbmcgdG8gZW5zdXJlIGl0IGhhcwpjb21wbGV0ZWQg
c3VjY2Vzc2Z1bGx5LgoKSG9wZSB0aGF0IGhlbHBzCk1hcmsKCgoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwppYm0tYWNwaS1kZXZlbCBtYWlsaW5nIGxp
c3QKaWJtLWFjcGktZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291
cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2libS1hY3BpLWRldmVsCg==

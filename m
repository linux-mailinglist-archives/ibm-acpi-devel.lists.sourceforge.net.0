Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AA6AD0785
	for <lists+ibm-acpi-devel@lfdr.de>; Fri,  6 Jun 2025 19:31:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GM7orcw2scBwMuWDJV1nzd/rLt+Q//FQxHdrIcGaa94=; b=mAsUaMi/QKPY0Q3vZIN2RUTlS4
	eh2cIqA9YcHfcgxkxTSZXwNr7hl3fNCE2kE90gAi/jxncco4JJC1g1J0AQxYhFpUTr6eVwIz3QTUk
	6xUhEkYPhfAPQJ+xfgSrdsfeaYzKoja3Rl6RSmQQz0Nsy3PgOT1DDT/WIyRgUKfyo+k8=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uNauC-0008I1-0L;
	Fri, 06 Jun 2025 17:31:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1uNauA-0008Hu-4A
 for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 06 Jun 2025 17:30:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CxdpNWHLhJQTJYp3lPIgeA/cQMR7pKQl5v7aS7fdBik=; b=IGEpFro/XHEevK+FdEJIrLpdcZ
 ms71QuuTwo8EQ2AL7Mesn0V1kB4jekiNaiT+QTwR3Xl99kLzSzAYgfeRj8/hmUOR/HDjBjMc1YBsi
 NiZ8VVBLpmdDzSVO1f0pcFfAcEvzAJCeZjvdH8w5yHbmft7tv7Jc26TaGmVQajrEksYc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CxdpNWHLhJQTJYp3lPIgeA/cQMR7pKQl5v7aS7fdBik=; b=FTbzAPZZdtyoIJ+HyX6ScEEFdO
 qg6sC8Ghr0g26k2wCzyTX3J1id2M+PYUb1tqFKCaMUcbvccDBKyZzvP6kTqBIpyGgAFks0ZkGYsNO
 KPbqvj7xhJvdlCxKm7/kFbMWunetuCxbKJnjFrL7pEC+by6RYFgDAIaZe7vHwlsq53a0=;
Received: from fhigh-a6-smtp.messagingengine.com ([103.168.172.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uNau9-0007BM-5s for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 06 Jun 2025 17:30:58 +0000
Received: from phl-compute-12.internal (phl-compute-12.phl.internal
 [10.202.2.52])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 86B3511400BA;
 Fri,  6 Jun 2025 13:30:46 -0400 (EDT)
Received: from phl-imap-08 ([10.202.2.84])
 by phl-compute-12.internal (MEProxy); Fri, 06 Jun 2025 13:30:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm2; t=1749231046;
 x=1749317446; bh=CxdpNWHLhJQTJYp3lPIgeA/cQMR7pKQl5v7aS7fdBik=; b=
 JZC64LVXZ8/jaa6a5GyMkx5tXFpXykYPZbyEDB2G8WSn5TRpUN8CqdeKFacu/2Hq
 B1rB1onnam2g+j1oAk6fK/Nz3+eVT9ygbQzug6WCFpSCZ8bdAtvPPNcAUci3aAvj
 CAk8e5Ec0VOT57N18yAyGgTEnzXWLP8K4ovfwC63bv/OhnbBNQ4E3WXhpXgN+ZxN
 w858qIh/3Uw89LRePceyVF9qLuJzhEULSxkoFxL/9ITCc8YmxnkBI/QroeURJemP
 6leUtimspsw7BMLxBVuWitf73lW3jg14nxmCUEzhSL0VuOoz/9JiVEBdnXbrSvOr
 oA6CLu+NM/iJLI1Y0QfreA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1749231046; x=
 1749317446; bh=CxdpNWHLhJQTJYp3lPIgeA/cQMR7pKQl5v7aS7fdBik=; b=f
 G9GmERvIJyoHD3bS/Uf3Ighsn46oYATf4LNqZhUD8BsyaMvAdP+pGUcKiy56D6W/
 xeeThvFtqqDzP96fa92rgYPqd4CieOT2JRzF3VKJLCbWbXgfHbCkY9MAfei17tsM
 V4k4aRXGYacvnZY4KyIWoacy57wh0+VQ7XWHarftb5ZxrQuHKC4M7PVSrrp10r8S
 G2yYGxJhmXp9m889FRoVi7hFF9qYyGzeNlUE9fcBsPKdObhNrRVR6Isxyqqznqi1
 a+sZHgBTp1+uPWljxKiStrXtIf2Uu2ddYwkjWKv+koSJ0cGCRfXBtXw3a5HlL6SX
 BACCuTtkD6Q/DiY45MSCw==
X-ME-Sender: <xms:xSVDaCrH-gIoSAXnolxC-NwFfBIRedIY8bEfcO-IxX5zQ03kgI87RA>
 <xme:xSVDaAqlZOK-74z8v4c7OdU9BCr0ZiWm95i-f1tQMD1OAt_hIMwlBSLOa04FAB9en
 VyzSstjicarWJpYT5Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugdehfeelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepofggfffhvfevkfgjfhfutgfgsehtjeertdertddt
 necuhfhrohhmpedfofgrrhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnh
 hovhhosehsqhhuvggssgdrtggrqeenucggtffrrghtthgvrhhnpeehveetgfdvuedthfef
 hfevjefgtefhgffgteduhfevuddvjefguefhvedtjefhkeenucffohhmrghinhepghhith
 dqshgtmhdrtghomhdpghhithhhuhgsrdgtohhmpdhkvghrnhgvlhdrohhrghdptddurdho
 rhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmh
 hpvggrrhhsohhnqdhlvghnohhvohesshhquhgvsggsrdgtrgdpnhgspghrtghpthhtohep
 udefpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehikhgvphgrnhhhtgesghhmrg
 hilhdrtghomhdprhgtphhtthhopeifpggrrhhmihhnsehgmhigrdguvgdprhgtphhtthho
 pehhmhhhsehhmhhhrdgvnhhgrdgsrhdprhgtphhtthhopehlkhhpsehinhhtvghlrdgtoh
 hmpdhrtghpthhtoheprghnughrihihrdhshhgvvhgthhgvnhhkoheslhhinhhugidrihhn
 thgvlhdrtghomhdprhgtphhtthhopehilhhpohdrjhgrrhhvihhnvghnsehlihhnuhigrd
 hinhhtvghlrdgtohhmpdhrtghpthhtohepohgvqdhksghuihhlugdqrghllheslhhishht
 shdrlhhinhhugidruggvvhdprhgtphhtthhopehisghmqdgrtghpihdquggvvhgvlheslh
 hishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvthdprhgtphhtthhopegtohhrsggvthes
 lhifnhdrnhgvth
X-ME-Proxy: <xmx:xSVDaHOZuZlLRYP92PTRgTgoxwSMWaMEFUrbGuOaobQwmMcJFN5Brg>
 <xmx:xSVDaB4Uy6iA4UnnpQHilQwZxX3BY5jK_rNA0fLCIlU-ivE6QAwdHA>
 <xmx:xSVDaB5Jdh6gtY7L4QFMMnT4aw42iIHpWVlN_YhpdZ8j_v-0rOpsnQ>
 <xmx:xSVDaBiynCru4kenoYzwuo1FguuMDxeKoa8oIKYu-dhaNjKGjCV1hg>
 <xmx:xiVDaCDAwFpvv1UA5MWfUTlGuFtM1SEhWSwkHhL10BC93O3wuLzvNYfA>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 6162A2CE0063; Fri,  6 Jun 2025 13:30:45 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: T107eb5199b18744c
Date: Fri, 06 Jun 2025 13:30:25 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "kernel test robot" <lkp@intel.com>
Message-Id: <6d17454f-faac-4616-ac2e-7da80feedf2c@app.fastmail.com>
In-Reply-To: <202506062319.F0IpDxF6-lkp@intel.com>
References: <20250604173702.3025074-1-mpearson-lenovo@squebb.ca>
 <202506062319.F0IpDxF6-lkp@intel.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Fri, Jun 6, 2025, at 11:58 AM,
 kernel test robot wrote:
 > Hi Mark, > > kernel test robot noticed the following build warnings: >
 > [auto build test WARNING on linus/master] > [also build test WARNI [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
X-Headers-End: 1uNau9-0007BM-5s
Subject: Re: [ibm-acpi-devel] [PATCH v2] platform/x86: Move Lenovo files
 into lenovo subdir
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
Cc: Armin Wolf <W_Armin@gmx.de>, Jonathan Corbet <corbet@lwn.net>,
 ikepanhc@gmail.com, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>, oe-kbuild-all@lists.linux.dev,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On Fri, Jun 6, 2025, at 11:58 AM, kernel test robot wrote:
> Hi Mark,
>
> kernel test robot noticed the following build warnings:
>
> [auto build test WARNING on linus/master]
> [also build test WARNING on next-20250606]
> [cannot apply to v6.15]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch#_base_tree_information]
>
> url:    
> https://github.com/intel-lab-lkp/linux/commits/Mark-Pearson/platform-x86-Move-Lenovo-files-into-lenovo-subdir/20250605-013934
> base:   linus/master
> patch link:    
> https://lore.kernel.org/r/20250604173702.3025074-1-mpearson-lenovo%40squebb.ca
> patch subject: [PATCH v2] platform/x86: Move Lenovo files into lenovo 
> subdir
> config: x86_64-randconfig-078-20250606 
> (https://download.01.org/0day-ci/archive/20250606/202506062319.F0IpDxF6-lkp@intel.com/config)
> compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
> reproduce (this is a W=1 build): 
> (https://download.01.org/0day-ci/archive/20250606/202506062319.F0IpDxF6-lkp@intel.com/reproduce)
>
> If you fix the issue in a separate patch/commit (i.e. not just a new 
> version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: 
> https://lore.kernel.org/oe-kbuild-all/202506062319.F0IpDxF6-lkp@intel.com/
>
> All warnings (new ones prefixed by >>):
>
>    drivers/platform/x86/lenovo/think-lmi.c: In function 'certificate_store':
>>> drivers/platform/x86/lenovo/think-lmi.c:661:47: warning: '%s' directive argument is null [-Wformat-overflow=]
>      661 |                 return kasprintf(GFP_KERNEL, "%s,%s", arg1, 
> arg2);
>          |                                               ^~
>    drivers/platform/x86/lenovo/think-lmi.c:657:50: warning: '%s' 
> directive argument is null [-Wformat-overflow=]
>      657 |                 return kasprintf(GFP_KERNEL, "%s,%s,%s",
>          |                                                  ^~
>
>
> vim +661 drivers/platform/x86/lenovo/think-lmi.c
>
> 640a5fa50a42b9 drivers/platform/x86/think-lmi.c Mark Pearson 2021-11-17 
>  652  
> 5dcb5ef125907d drivers/platform/x86/think-lmi.c Mark Pearson 2024-10-24 
>  653  static char *cert_command(struct tlmi_pwd_setting *setting, const 
> char *arg1, const char *arg2)
> 5dcb5ef125907d drivers/platform/x86/think-lmi.c Mark Pearson 2024-10-24 
>  654  {
> 5dcb5ef125907d drivers/platform/x86/think-lmi.c Mark Pearson 2024-10-24 
>  655  	/* Prepend with SVC or SMC if multicert supported */
> 5dcb5ef125907d drivers/platform/x86/think-lmi.c Mark Pearson 2024-10-24 
>  656  	if (tlmi_priv.pwdcfg.core.password_mode >= 
> TLMI_PWDCFG_MODE_MULTICERT)
> 5dcb5ef125907d drivers/platform/x86/think-lmi.c Mark Pearson 2024-10-24 
>  657  		return kasprintf(GFP_KERNEL, "%s,%s,%s",
> 5dcb5ef125907d drivers/platform/x86/think-lmi.c Mark Pearson 2024-10-24 
>  658  				 setting == tlmi_priv.pwd_admin ? "SVC" : "SMC",
> 5dcb5ef125907d drivers/platform/x86/think-lmi.c Mark Pearson 2024-10-24 
>  659  				 arg1, arg2);
> 5dcb5ef125907d drivers/platform/x86/think-lmi.c Mark Pearson 2024-10-24 
>  660  	else
> 5dcb5ef125907d drivers/platform/x86/think-lmi.c Mark Pearson 2024-10-24 
> @661  		return kasprintf(GFP_KERNEL, "%s,%s", arg1, arg2);
> 5dcb5ef125907d drivers/platform/x86/think-lmi.c Mark Pearson 2024-10-24 
>  662  }
> 5dcb5ef125907d drivers/platform/x86/think-lmi.c Mark Pearson 2024-10-24 
>  663  
>
> -- 
> 0-DAY CI Kernel Test Service
> https://github.com/intel/lkp-tests/wiki

I'm unable to reproduce this issue with a W=1 build and I think it's a false positive.

Am I safe to ignore this report?

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

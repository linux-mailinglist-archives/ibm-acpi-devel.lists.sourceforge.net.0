Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 25FFFAD0861
	for <lists+ibm-acpi-devel@lfdr.de>; Fri,  6 Jun 2025 20:59:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZFLL7Wnodemc8zZMsw2SPgNnJloaZcsZ9j8yUnvC4kI=; b=YIKBAh9AEiIx+t86wmS1YM5pRH
	KqpFh3GYl+t5CPXUxW6CN/k1xbLmrqQ0L5AkQqYa+bYr8byEvjubHF1Fty3OOcOCAeVQB4I1tBS6l
	bkugudX1sSnYsNS1vFYelOzh1B//EsXtTpLXe/ubsLzW1bXtFKEbnJzSLguMcBY2n910=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uNcGm-0004rS-GQ;
	Fri, 06 Jun 2025 18:58:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1uNcGl-0004rM-78 for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 06 Jun 2025 18:58:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VhJiHWbocL4odwL2Eahvgmxhk5UHHdyZzqhrnnLZyI4=; b=C3D+yAWNUUAvNurhQUw/wotFW6
 cJZNzjR+kZZleVMvQ7tKtcoO5Ra8L+xbCGqH9itO3IX6FhQvF4XCxF41xy666Jo/1JPW/sESQeie/
 6mbOGwrQ/CgTUXzb5EFbWNmUWq6V+JgC3RtWey9ObVtse98FlhAGTUeMDLqdTszXbvOE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VhJiHWbocL4odwL2Eahvgmxhk5UHHdyZzqhrnnLZyI4=; b=Q5ZEzzPblu09/yP0d8lZOX6iqk
 hXoWDVSgn6hpyC5o2oXCeh0xGLvOHGUDcpmv5LBf4U5zUhe36RJQnmNSzXLSIN+hqk+5ZeM8lEEvz
 JInSRUXLCUH2aRKPDKhtG2mIHf5bY371TphhHhMe5VuJrM6u8jOoXbmanGa4wjB9RCYs=;
Received: from mgamail.intel.com ([192.198.163.17])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uNcGk-00030F-QN for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 06 Jun 2025 18:58:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749236302; x=1780772302;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=h+JweaNJ8/r3ImFh1BQmoSXgPgwr/MU87ypzJO8IqzY=;
 b=Gn5SUNoHQdtkkm/DQTa6ndEW7/p4JC68dWDyTeE7RSdVzwaxQs4lS4H8
 LsPqEz/aPPz2s7imNNl2DR0qgKSGTAXSFMyQtAv42/NpMbHqR2pJE02Rh
 hCfZYOWTmaLxilk2x5NqMN/Wvaumm9pb4AU2PZqAqSMonJPG6M85ORSdv
 +pAlY2U0WBiLaBPdO580+/9j0u4C/95ORXI2DGHkPCs9E13q/ThztmUMS
 2yue6XuuC6+ZZy1GFYJ3MDfMdJvJfpkUayjLWKQjYOVOAhbg4ovG2ObTi
 QvqWXC+75UiavYX/2u89h/aL8RazstWBnrBFbqOJgqw8axH9a/m9p18J3 g==;
X-CSE-ConnectionGUID: 6o2Oiw6ET3WS8Yie0itSjA==
X-CSE-MsgGUID: ItlJVtIuQ+KRs5PhFVL2cg==
X-IronPort-AV: E=McAfee;i="6800,10657,11456"; a="51303835"
X-IronPort-AV: E=Sophos;i="6.16,215,1744095600"; d="scan'208";a="51303835"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2025 11:58:12 -0700
X-CSE-ConnectionGUID: PM6PjR8cTDSt7gCu1v3XvA==
X-CSE-MsgGUID: nvBpNtQmRlGWhkbun1OPAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,215,1744095600"; d="scan'208";a="146415947"
Received: from smile.fi.intel.com ([10.237.72.52])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2025 11:58:09 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1uNcGU-00000004HtF-18zX; Fri, 06 Jun 2025 21:58:06 +0300
Date: Fri, 6 Jun 2025 21:58:05 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Mark Pearson <mpearson-lenovo@squebb.ca>
Message-ID: <aEM6PTCql7l1n6e0@smile.fi.intel.com>
References: <20250604173702.3025074-1-mpearson-lenovo@squebb.ca>
 <202506062319.F0IpDxF6-lkp@intel.com>
 <6d17454f-faac-4616-ac2e-7da80feedf2c@app.fastmail.com>
 <aEM6Da6CZ0DI3x8w@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aEM6Da6CZ0DI3x8w@smile.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jun 06, 2025 at 09:57:17PM +0300, Andy Shevchenko
 wrote: > On Fri, Jun 06, 2025 at 01:30:25PM -0400, Mark Pearson wrote: > >
 On Fri, Jun 6, 2025, at 11:58 AM, kernel test robot wrote: ... > > I'm unable
 to reproduce this issue with a W=1 build > > Do you have GCC-12? 
 Content analysis details:   (-0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uNcGk-00030F-QN
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
Cc: Armin Wolf <W_Armin@gmx.de>, kernel test robot <lkp@intel.com>,
 Jonathan Corbet <corbet@lwn.net>, ikepanhc@gmail.com,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>, oe-kbuild-all@lists.linux.dev,
 Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Fri, Jun 06, 2025 at 09:57:17PM +0300, Andy Shevchenko wrote:
> On Fri, Jun 06, 2025 at 01:30:25PM -0400, Mark Pearson wrote:
> > On Fri, Jun 6, 2025, at 11:58 AM, kernel test robot wrote:

...

> > I'm unable to reproduce this issue with a W=1 build
> 
> Do you have GCC-12?

To be more precise you need to have a CONFIG_DMI=n.

> > and I think it's a false positive.
> 
> I think the problematic line is in certificate_store().
> You need to check the value of dmi_get_system_info().
> Or make sure the DMI is always selected (depend on DMI
> in Kconfig, perhaps).
> 
> > Am I safe to ignore this report?
> 
> Please, try to fix it.

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

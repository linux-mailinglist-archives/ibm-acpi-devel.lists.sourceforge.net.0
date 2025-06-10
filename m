Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0FEAD3C6F
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 10 Jun 2025 17:15:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OjYv0htuMKtCyXzcj+JcYqOizVIXeJWMTAXIeq+Hwgs=; b=Uc/wBtWgGQzDMu4elC1SX/12Gs
	pailNZICArFTMF2S/hip4sR0lP7g98LFL0u7xelRLcfdFjzBDm9LeGAj00pC15eLJxpM7qw3J0qFY
	0KXRKyMHNmV7BNdZwkx7WAs1zfd8PT/EbVMSJZCG04lNRfZbQezsIiGER4l/02yi+IfA=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uP0gQ-0007UP-MN;
	Tue, 10 Jun 2025 15:14:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1uP0gP-0007UH-5C for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 10 Jun 2025 15:14:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EGfgfVLez9cb9xn8JO2Wv6oUBmsuG3BaA9oQRaidrIE=; b=a6HuQQtAIsb4WDKaQNIWgSvpLv
 tmaneQVPqdXE6JDFNQSkmZL+gERBtc5/Df4ilzsbJwVMAOFb3Z3O+PcCAtYzUnM+IWGp4VsG+pnct
 DCbmfr7I7Aj5e1eY8wtVXoUCf5YR9jp41SWp4v2C/WEALDubsxZ4ljZucnGz/QhVfwnY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EGfgfVLez9cb9xn8JO2Wv6oUBmsuG3BaA9oQRaidrIE=; b=ekvljTGyqFi0FTfAXbfXDPS6zV
 ILxNCLNJ4Fpft/nOVA4pt0iE6LrYEcXD5Mu7UUV08/DH2azMOQOHAa8oI7eBxhh5mmkj4gr4xs10/
 EW7omlG1XKET/niaKvDbEBpdtqRAG8ocPfP4iImLLPa5DqEtlVeluYsMYU6wVP1I+YB0=;
Received: from mgamail.intel.com ([192.198.163.12])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uP0gO-00034X-2l for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 10 Jun 2025 15:14:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749568476; x=1781104476;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=4eF9/CmotdESBddggte8FL/5iJIVylN8R74UX+xQaak=;
 b=OIVFc3FPwaK9QK9U279cM9V4MAjBXyDEp5He4gX59q43CjsADH7n1DBT
 sanWXTb2oyvkRO9hJ/iPSLeT93H6qqShK6SnTb7kedzVdb9gYfT5BCtLg
 KWPOCmmwrJqC6gSV6TNoFM0wUh9K/HD541gKzfAsujACf8aYstVbCNZ1B
 5fValwumJW0g3ZH2iYgSriXmARTYlfF0TTPjgl/l/qgpEBtbBl5nxl/vB
 9bVUqO6IPZEJc9kukppC0i5Pj760P19tEg5fLXGYW94W74jJade/yTCnX
 vjMcS+7vy8mGNCo540CHCwPc7t89hG8VSZ1kGW5f9ckemT7CJ8cJSMwZJ A==;
X-CSE-ConnectionGUID: H82aZUeFRw2YO4pNrVcVzQ==
X-CSE-MsgGUID: 8lrH2e9jRr+nYuoTC9SR4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="55464398"
X-IronPort-AV: E=Sophos;i="6.16,225,1744095600"; d="scan'208";a="55464398"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 06:33:37 -0700
X-CSE-ConnectionGUID: 67tGi3H5SDaALS0eLrw+yg==
X-CSE-MsgGUID: eWeYUNL+RHS8Glqniw5VYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,225,1744095600"; d="scan'208";a="146712823"
Received: from smile.fi.intel.com ([10.237.72.52])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 06:33:34 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1uOz6Z-00000005MWZ-2ZGq; Tue, 10 Jun 2025 16:33:31 +0300
Date: Tue, 10 Jun 2025 16:33:31 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Mark Pearson <mpearson-lenovo@squebb.ca>
Message-ID: <aEg0K1OE6zhL97me@smile.fi.intel.com>
References: <mpearson-lenovo@squebb.ca>
 <20250609122736.3373471-1-mpearson-lenovo@squebb.ca>
 <20250609122736.3373471-2-mpearson-lenovo@squebb.ca>
 <b792059e-44d2-82c0-574c-76c3f6a3129d@linux.intel.com>
 <f3b5c138-5576-4c01-b177-7450f1e91d24@app.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f3b5c138-5576-4c01-b177-7450f1e91d24@app.fastmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-2.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Jun 10, 2025 at 08:28:49AM -0400, Mark Pearson wrote:
    > On Tue, Jun 10, 2025, at 3:35 AM, Ilpo Järvinen wrote: > > On Mon, 9 Jun
    2025, Mark Pearson wrote: ... > >> + serial = dmi_get_system_info(DMI_PRODUCT_SERIAL);
    > >> + if (!serial) > >> + return -EINVAL; > > > > This should not return
    -EINVAL as it is not a problem with the input > > parameters. Perhaps [...]
    
 
 Content analysis details:   (-0.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uP0gO-00034X-2l
Subject: Re: [ibm-acpi-devel] [PATCH v3 2/2] platform/x86: thinklmi:
 improved DMI handling
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
 linux-doc@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Tue, Jun 10, 2025 at 08:28:49AM -0400, Mark Pearson wrote:
> On Tue, Jun 10, 2025, at 3:35 AM, Ilpo J=E4rvinen wrote:
> > On Mon, 9 Jun 2025, Mark Pearson wrote:

...

> >> +		serial =3D dmi_get_system_info(DMI_PRODUCT_SERIAL);
> >> +		if (!serial)
> >> +			return -EINVAL;
> >
> > This should not return -EINVAL as it is not a problem with the input =

> > parameters. Perhaps -ENODEV would make sense instead?
> =

> Good point.
> Unless Andy strongly thinks I should drop this bit, I'll fix in the next =
version

If maintainers are okay to take this approach (both Kconfig and C file
changes), I am fine.

-- =

With Best Regards,
Andy Shevchenko




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

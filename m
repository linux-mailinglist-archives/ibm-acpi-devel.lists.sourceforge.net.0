Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 15119AD3DB9
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 10 Jun 2025 17:44:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XiRK2ds3OZKUV4oxw5GlTteiTeW/fIuoCVS/rs9TVMU=; b=jDXQ7KuzGxhzdovbLJdErFJLTX
	Waa1Y5ZRThalrRzif9F5veBhyZc86lSiyh+LBhnigNcfJVh/GBlut72eYZWYijLWQFa5eoOi/Z/34
	3udBwUteXmAr5VeVKQ4qelpsMiWIrYqgqN+HUXNXE9hWAUjZ6QyemFDvwmAsXmtQ6DM0=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uP18o-000745-Bv;
	Tue, 10 Jun 2025 15:43:58 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1uP18m-00073w-H6 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 10 Jun 2025 15:43:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kwfNYempt5Q6iGEURnJ6IG6Kj27RcVOul1cUOlT4Yrk=; b=dCmbtcFEsOY+yZ2H8BcLrJe5OF
 3YHqclzmCl1Yn4+oO2/Peyn94vurzV4Lnt8fqrcDSZx/cLpMNLJ1f24nbpjD08MUy7l9St/hGicYV
 pD98hytzX4S446dtRnb54SygVn1J54SvstGldocTsuPyV/j5XYRBF+yinIkKmFFfgUX0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kwfNYempt5Q6iGEURnJ6IG6Kj27RcVOul1cUOlT4Yrk=; b=kkA4p8/PASg7BNWZkWMZsjtBz2
 79hQmtIHAB0eHemYvye8BzJeCvgNxz48EGZSgVlOz8nNTz7uUcCIf7dA8EgjPJ/2UongqN5phO+kG
 pGS2dV1rfo/j/OGZ+IdnHGB6+UyC9VGGwLM/sZ6+gYlsYdWgjh5CZS9JzxIxY7K3pNtM=;
Received: from mgamail.intel.com ([198.175.65.21])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uP18l-0006qQ-U4 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 10 Jun 2025 15:43:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749570236; x=1781106236;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=0esks7NiXmflWu86rtyiHIstnvaZKrxBSy6l+qhJjF4=;
 b=O32VrRosRI3/szhF+HAOZWLW1iPeMcckE+5XhbX1t8NSTlmsuVrwyCYk
 OEWAXMnKVnR0jaedURZgHw8kEmSu5bxDsj3B7zw+Z7dljRnzKc3eBoL1H
 YTc9IykMrYNWjVx7rUdri9oPLeRiu9Xybnm6dGtX44K9RcbLA8gD3DvV1
 /Tw5vFo0DDuLk3A3QidymeWx3/8+FuYuJxmiiK5td0qhdFcT5yYiMrlKc
 mNfFMNM8tzBlX7FXL+o0G3BSxsHdJhrUo35u2cEr5RmYarDxkZ1jClq4X
 VwpK3sVh28dA8TiePhth7fAKIrduCRPzSSB0iniWeCOJQrHGR1f8Kpqch w==;
X-CSE-ConnectionGUID: XrqLMl52TQuUAA7zWLorSA==
X-CSE-MsgGUID: ZKBNdjDzQcmRhZEEWG+16Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="51507607"
X-IronPort-AV: E=Sophos;i="6.16,224,1744095600"; d="scan'208";a="51507607"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 03:01:34 -0700
X-CSE-ConnectionGUID: 7me+KZ45RwK1tv3QMP35qQ==
X-CSE-MsgGUID: SV1iRhpfTj+uJjkfSBuvIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,224,1744095600"; d="scan'208";a="177720231"
Received: from smile.fi.intel.com ([10.237.72.52])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 03:01:31 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1uOvnM-00000005JbT-0JsS; Tue, 10 Jun 2025 13:01:28 +0300
Date: Tue, 10 Jun 2025 13:01:27 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Mark Pearson <mpearson-lenovo@squebb.ca>
Message-ID: <aEgCd7Z1rE6-K2Ac@smile.fi.intel.com>
References: <mpearson-lenovo@squebb.ca>
 <20250609122736.3373471-1-mpearson-lenovo@squebb.ca>
 <aEdBWymLN7aYqkeB@smile.fi.intel.com>
 <33d3ea0d-161d-4297-9a99-9e7e129b31b1@app.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <33d3ea0d-161d-4297-9a99-9e7e129b31b1@app.fastmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jun 09, 2025 at 09:21:45PM -0400, Mark Pearson wrote:
 > On Mon, Jun 9, 2025, at 4:17 PM, Andy Shevchenko wrote: > > On Mon, Jun
 09, 2025 at 08:27:24AM -0400, Mark Pearson wrote: ... > >> -F:
 drivers/platform/x86/lenovo-wmi-hotkey-utilities.c
 > >> +F: drivers/platform/x86/lenovo/lenovo-wmi-hotkey-utilities.c > > >
 > Is this correct? > > > Jackie is on my team, he wrote this driver [...] 
 Content analysis details:   (-0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uP18l-0006qQ-U4
Subject: Re: [ibm-acpi-devel] [PATCH v3 1/2] platform/x86: Move Lenovo files
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
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Mon, Jun 09, 2025 at 09:21:45PM -0400, Mark Pearson wrote:
> On Mon, Jun 9, 2025, at 4:17 PM, Andy Shevchenko wrote:
> > On Mon, Jun 09, 2025 at 08:27:24AM -0400, Mark Pearson wrote:

...

> >> -F:	drivers/platform/x86/lenovo-wmi-hotkey-utilities.c
> >> +F:	drivers/platform/x86/lenovo/lenovo-wmi-hotkey-utilities.c
> >
> > Is this correct?
> >
> Jackie is on my team, he wrote this driver originally (with some help) for one of the thinkbook platforms.
> If there are any changes he should review them as he has access to the HW, but I'll be helping too.
> I think it's fine - let me know if otherwise.
> 
> Just as background: We can't use our Lenovo email addresses for kernel
> contributions. They're based on an awful Outlook server that is incapable of
> handling text only emails, and also won't play nice with any other tooling
> (including git send-email). Not ideal but it is what it is, and I gave up
> fighting with IT about it (there are some workarounds, but they're arguably
> worse).
> 
> > Otherwise LGTM.

What I'm talking about is the filename.

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

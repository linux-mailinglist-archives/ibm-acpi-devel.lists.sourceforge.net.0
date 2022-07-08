Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C44A456C176
	for <lists+ibm-acpi-devel@lfdr.de>; Fri,  8 Jul 2022 23:28:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1o9vVV-0003B5-2z; Fri, 08 Jul 2022 21:27:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1o9vVU-0003Az-2J
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 08 Jul 2022 21:27:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b/6RNi1tUyVaKyqnp9YlDtSyxmkJjAA6p714/rNk4gk=; b=QAcRCYj4GHmQY7atEF7vzgax44
 k7uiCThsaFKCQ1iyzSetbspEH98ruOTZxzAdlwQthCXRgadTBYDQMX8iZUX2SQ2Rr6RQP2ojzCJAF
 vmityeq3Z4FkudZwI9nB4uLwWVRrKHYN8+YlA3H+fWEa9ujoOV624gLszMr3wRxbRXT8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=b/6RNi1tUyVaKyqnp9YlDtSyxmkJjAA6p714/rNk4gk=; b=jJkbi67k3hUVk2TKtBzYv9DKqU
 O4MS46ZOvTWwGTD95XxU7eP5sB9JKN2UG+4eci+w0zZr8SYttNx+i/fB958oV9Vrx2PZK86AqT5df
 M3n54g4V0rJMSmuktr9hyDnvzawyPSqv56ox7zHtK5GO1iATWazNjK8AM57CoOGBorFU=;
Received: from mga14.intel.com ([192.55.52.115])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o9vVR-00BE6u-Hx
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 08 Jul 2022 21:27:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657315641; x=1688851641;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=/g4mtROTOBVuUxZNYOgmva+gD7qdsf4Jg2P69fXsDec=;
 b=X3Qny98AiK8WTHNaM2+/8D00iAQkDA6xMl+mEfygZQJwX0UPRUVJ22RL
 PfpHbx+AdlcFIAuaC8BJBR/3walJ48MxwO/SmuvXVTbYXvopzpvqm1/F5
 RkBMY+gpBdw7yXl1O7jQFbyQ7Q22MQ1rUeeb/RL3UYrAGk9Ptautf/3Vb
 QjGcn0pU4hlesC3n5s1AhprxWUzWs+XRygRPscaju84nfa/Vlu85oH7BK
 /ocrHZsJghTi6FsVjceDDPLqEPqK0FSdqRVpLOixdb+mPDqvzvrtYWyKz
 x1CYp/Jw2r25x95bEPMUuYmIK7i4y+e9UO2n3s5Ir114/nxD1wt6Onu82 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10402"; a="284392106"
X-IronPort-AV: E=Sophos;i="5.92,256,1650956400"; d="scan'208";a="284392106"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 14:27:15 -0700
X-IronPort-AV: E=Sophos;i="5.92,256,1650956400"; d="scan'208";a="661902889"
Received: from smile.fi.intel.com ([10.237.72.54])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 14:27:12 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.96)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1o9vVF-0018q7-0K; Sat, 09 Jul 2022 00:27:09 +0300
Date: Sat, 9 Jul 2022 00:27:08 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Message-ID: <YsihLEX3At421cAK@smile.fi.intel.com>
References: <20220630212819.42958-1-andriy.shevchenko@linux.intel.com>
 <Yr6KcPlC/3rYAtKE@lahna>
 <CAJZ5v0ht6hfaBsifhr=M_htHh6uHohwgcab2dFR5hqq4rO+xFQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJZ5v0ht6hfaBsifhr=M_htHh6uHohwgcab2dFR5hqq4rO+xFQ@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -5.8 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jul 05, 2022 at 08:40:30PM +0200, Rafael J. Wysocki
 wrote: > On Fri, Jul 1,
 2022 at 7:47 AM Mika Westerberg > <mika.westerberg@linux.intel.com>
 wrote: > > On Fri, Jul 01, 2022 at 12:28:15AM +0 [...] 
 Content analysis details:   (-5.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o9vVR-00BE6u-Hx
Subject: Re: [ibm-acpi-devel] [PATCH v1 1/5] ACPI: utils: Introduce
 acpi_match_video_device_handle() helper
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
Cc: Mark Gross <markgross@kernel.org>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Linux PCI <linux-pci@vger.kernel.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Wolfram Sang <wsa@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 linux-i2c <linux-i2c@vger.kernel.org>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 ibm-acpi-devel@lists.sourceforge.net, Bjorn Helgaas <bhelgaas@google.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Tue, Jul 05, 2022 at 08:40:30PM +0200, Rafael J. Wysocki wrote:
> On Fri, Jul 1, 2022 at 7:47 AM Mika Westerberg
> <mika.westerberg@linux.intel.com> wrote:
> > On Fri, Jul 01, 2022 at 12:28:15AM +0300, Andy Shevchenko wrote:
> > >  extern long acpi_is_video_device(acpi_handle handle);
> > > +extern bool acpi_match_video_device_handle(acpi_handle handle);
> >
> > I think we can do slightly better here. The only caller of
> > acpi_is_video_device() is in drivers/acpi/video_detect.c so we can move
> > it there and make it static (is_video_device()).

AFAICS, the scan.c is user of it as well.

> > Then we can name this one acpi_is_video_device() instead and in addition
> > make it take struct acpi_device as parameter instead of acpi_handle (I
> > think we should not use acpi_handles in drivers if possible).
> 
> Agreed.

Not sure it will help to have acpi device since most of the callers asks for
handle to be checked.

Taking into account above, what we can do is to rename it to

	acpi_handle_is_video_device()

which should be clearer than initial proposal.

Thoughts?

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

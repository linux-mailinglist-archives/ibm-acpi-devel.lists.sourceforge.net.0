Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4D956C17A
	for <lists+ibm-acpi-devel@lfdr.de>; Fri,  8 Jul 2022 23:32:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1o9vZb-0003Gs-Ga; Fri, 08 Jul 2022 21:31:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1o9vZT-0003Gh-Ky
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 08 Jul 2022 21:31:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yRmDB0DzGoBeKNkdgNCG33lPtWSQmK9e7A8FhmQdAgk=; b=KNdihuiaxXa/jJEmDDAxKBsZgt
 MaqnqQAEfT/PbUkAxsUcCwKGl/kMPoJuFCQzQDl8cBNpNHYYKUi0jAR+5aAsrQoa/SuiJsYZi3qvY
 R3Zk2XRkxeEo5klxl7db2L1ugdGisbnbSmISUnDzYl9joN4cjawgLZLHdPQbmVeBHOx8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yRmDB0DzGoBeKNkdgNCG33lPtWSQmK9e7A8FhmQdAgk=; b=U1A/J/d8sQ5ogPPU8xFnM+Ln8L
 1ACsg9DgowY1i5MYRC8zc4v4uTkwS2N3QEJnqptaj7OcjdYNrNqpMoJIWRMU19ULRPbES022rz1o9
 Q6+912ENwgl9oY6Y8qDeGj2Ut84d3W4ErZjv1hHkt2JyKc+WKBxvPyA4f0Fze30GKiYE=;
Received: from mga09.intel.com ([134.134.136.24])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o9vZR-00076e-CL
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 08 Jul 2022 21:31:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657315889; x=1688851889;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=8glBkFV6dO5pltOl2NLTXJxSpJypr9SAuPCGEx1OqtM=;
 b=k36e9cv72A077FRPC/2gxN1GGtsugYZk+Sp1nJKcLA3b6Q3EwZNz72Z/
 0Gl0PwwqkOQJPDVXIauhsaa5t/HhvvG2bo96Xk6NzrNQ0RzIe+UsvN8WA
 PcF71dw/XHdGXXttykHWvPbAKM3ys4G0djS/7Vdx3BKcO6MP/q05Wx2qb
 xT767Y8hSphEdbbHyR/C8+FWdNdX1xe33Y7V10XrUqTFBhjiSXaMzdAnw
 U8Plu6uFST/imKm25N+1MN9YgWr93mKrZKNT6/yqCMvB/j3n+3ZpXZ91H
 BjBgMDVI3b0Yg3kP+U+3TAqAWRizVnfJ1wi9TsHV8cCG1sL/SuEbTqeGR w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10402"; a="285110275"
X-IronPort-AV: E=Sophos;i="5.92,256,1650956400"; d="scan'208";a="285110275"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 14:31:23 -0700
X-IronPort-AV: E=Sophos;i="5.92,256,1650956400"; d="scan'208";a="621372477"
Received: from smile.fi.intel.com ([10.237.72.54])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 14:31:19 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.96)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1o9vZE-0018qY-1T; Sat, 09 Jul 2022 00:31:16 +0300
Date: Sat, 9 Jul 2022 00:31:16 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Message-ID: <YsiiJFdbFVLyRL6i@smile.fi.intel.com>
References: <20220630212819.42958-1-andriy.shevchenko@linux.intel.com>
 <Yr6KcPlC/3rYAtKE@lahna>
 <CAJZ5v0ht6hfaBsifhr=M_htHh6uHohwgcab2dFR5hqq4rO+xFQ@mail.gmail.com>
 <YsihLEX3At421cAK@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YsihLEX3At421cAK@smile.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -3.1 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Jul 09, 2022 at 12:27:09AM +0300, Andy Shevchenko
 wrote: > On Tue, Jul 05, 2022 at 08:40:30PM +0200, Rafael J. Wysocki wrote:
 > > On Fri, Jul 1, 2022 at 7:47 AM Mika Westerberg > > <mika.weste [...] 
 Content analysis details:   (-3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o9vZR-00076e-CL
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

On Sat, Jul 09, 2022 at 12:27:09AM +0300, Andy Shevchenko wrote:
> On Tue, Jul 05, 2022 at 08:40:30PM +0200, Rafael J. Wysocki wrote:
> > On Fri, Jul 1, 2022 at 7:47 AM Mika Westerberg
> > <mika.westerberg@linux.intel.com> wrote:
> > > On Fri, Jul 01, 2022 at 12:28:15AM +0300, Andy Shevchenko wrote:

...

> > > >  extern long acpi_is_video_device(acpi_handle handle);
> > > > +extern bool acpi_match_video_device_handle(acpi_handle handle);

> > > I think we can do slightly better here. The only caller of
> > > acpi_is_video_device() is in drivers/acpi/video_detect.c so we can move
> > > it there and make it static (is_video_device()).
> 
> AFAICS, the scan.c is user of it as well.
> 
> > > Then we can name this one acpi_is_video_device() instead and in addition
> > > make it take struct acpi_device as parameter instead of acpi_handle (I
> > > think we should not use acpi_handles in drivers if possible).
> > 
> > Agreed.
> 
> Not sure it will help to have acpi device since most of the callers asks for
> handle to be checked.

Actually it's 2:2 now. I'm fine with ACPI device and name like

	acpi_dev_is_video_device()

> Taking into account above, what we can do is to rename it to
> 
> 	acpi_handle_is_video_device()
> 
> which should be clearer than initial proposal.
> 
> Thoughts?

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

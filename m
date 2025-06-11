Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4AAAD5A40
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 11 Jun 2025 17:23:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=95sS3ts6OxTV/VNrM1Ar8e874DUvpcsmykv+3PwhLIg=; b=bHVsBS0Ee4rivSbSaWljqSkh7g
	u73Wt+n1SNJPIqOoMjF+xWk6zOi4hvHKy/8/Atv5XaNdHfsGSmIdiPjASX/380SZRGO9/hUzDohu4
	5ezvtcNr+mNuVHock0Wi4nBG0rDcmCXFNLhCwFKEZfQCh6PifoSFcqfs70FScRwQaAR8=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uPNHf-00055M-KN;
	Wed, 11 Jun 2025 15:22:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1uPNHd-00055D-99 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 11 Jun 2025 15:22:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o9lisPM7luj97OC/Bm+JTSfM2MLI68cIALUs8TjibMM=; b=AAtU5sxuYuVHohbShqh7q97odv
 ElafbFZAuvN/9G6qy2646WqEbEMui5zr0bxHcPMflsGv1v5wmpQK9aymyOfg4yGCjalfAJciau11S
 iQ2M37czhcEWDziItvfZD71cpI4UFd2kkeUMeXcP5x0SHn1AU+jXa/MLuxW3hGjuM4a0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=o9lisPM7luj97OC/Bm+JTSfM2MLI68cIALUs8TjibMM=; b=f8WvOPll0an4/HUpfEjKMSbWEP
 ZJec6O/WtSgZj+nZscJ3JpQLASKzfH36ifXInkubXuTstEJ+No2dTjcDF4RbKVJswBquMotV1jWME
 7rggS9KV230E9bXIgJGuOX6WdCnbIYc/+d20uI5BGXh9ZMmRde7EHI67o+xdqHNjZsdM=;
Received: from mgamail.intel.com ([198.175.65.19])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uPNHc-0005KB-NL for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 11 Jun 2025 15:22:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749655353; x=1781191353;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=nLyTLw3X4zqEgVxTxIWmgt4SSnc21bPbXLZbJ7pGNls=;
 b=eb/czDBZm6mYbk+r6piT4OyIoulESU3zOt18uVfEQTfFu1BFYxFreuf+
 Slc6v3FRg9zkJHjVYKT0CktSZJQn49UrWfXm1f4KnStVzo9HzomPFkRsY
 NxXdxvq2MRYZL8pNMZ47M73LrxCxCCPtFn5MHwxPrpxOazCpOOw6Hylzh
 sdQW8lhtPiQCNo1LT51yyxAFYR0GDKbrU8Ll+XkTUPjycsx4vQ7sonRb1
 OHl7x3AYABaRPFi9mVnPP6uPGyf4/AdBG+6VYJrtKo78o+Kp0a9CWbrAF
 fX6ycmh2Dzc0RIuWTZyj/os+08V93NgjSEfMR8KFFrUTv1vHt4nxvzHdk A==;
X-CSE-ConnectionGUID: EWHwhq+FQG69LjYzRa9dwA==
X-CSE-MsgGUID: IUvSoaulR72shijsAHIjlA==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="51683117"
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="51683117"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 08:22:20 -0700
X-CSE-ConnectionGUID: u9bzbMWdQqeO7GUioZzDog==
X-CSE-MsgGUID: ExX/Dka9SDKwCxt7YVLaOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="151019509"
Received: from smile.fi.intel.com ([10.237.72.52])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 08:07:49 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1uPN3K-00000005gC7-476M; Wed, 11 Jun 2025 18:07:46 +0300
Date: Wed, 11 Jun 2025 18:07:46 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>
Message-ID: <aEmbwiciy81fL58O@smile.fi.intel.com>
References: <mpearson-lenovo@squebb.ca>
 <20250610192830.1731454-1-mpearson-lenovo@squebb.ca>
 <20250610192830.1731454-2-mpearson-lenovo@squebb.ca>
 <aEiVHXI4vS9BDOPW@smile.fi.intel.com>
 <002d39fe-44ed-45a4-9410-4fecf1c2163f@app.fastmail.com>
 <b8af4da0-bd7f-1d65-8645-73dbd08ff3a8@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b8af4da0-bd7f-1d65-8645-73dbd08ff3a8@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-1.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, Jun 11, 2025 at 06:01:36PM +0300, Ilpo Järvinen wrote:
    > On Tue, 10 Jun 2025, Mark Pearson wrote: > > On Tue, Jun 10, 2025, at 4:27
    PM, Andy Shevchenko wrote: > > > On Tue, Jun 10, 2025 at 03 [...] 
 
 Content analysis details:   (-0.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uPNHc-0005KB-NL
Subject: Re: [ibm-acpi-devel] [PATCH v4 2/2] platform/x86: Move Lenovo files
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
Cc: Armin Wolf <W_Armin@gmx.de>, Hans de Goede <hdegoede@redhat.com>,
 ikepanhc@gmail.com, LKML <linux-kernel@vger.kernel.org>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 Jelle van der Waa <jvanderwaa@redhat.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Mark Pearson <mpearson-lenovo@squebb.ca>, ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Wed, Jun 11, 2025 at 06:01:36PM +0300, Ilpo J=E4rvinen wrote:
> On Tue, 10 Jun 2025, Mark Pearson wrote:
> > On Tue, Jun 10, 2025, at 4:27 PM, Andy Shevchenko wrote:
> > > On Tue, Jun 10, 2025 at 03:28:25PM -0400, Mark Pearson wrote:
> > >> Create lenovo subdirectory for holding Lenovo specific drivers.
> > >
> > > Assuming Kconfig entries have mostly been copied'n'pasted, the rest L=
GTM,
> > =

> > Yes - no changes from what they were previously.
> =

> Indeed, no changes, too bad that the addition "depends on DMI" was missed =

> because of that ;-). I've fixed this for you to not delay this patch =

> further.

Oh, thanks!

> A diff-of-pre/post magic trick helps to validate while preparing and =

> review move changes like this:
> =

> diff -u <(grep '^[-]' patch.patch | cut -b 2- | sort) <(grep '^[+]' patch=
.patch | cut -b 2- | sort)

AFAIK Git can do something like this for you (patch to the patch) or `b4`.
Never used personally, but interested to try if somebody tells me what to
do :-)

> The sorting is not always needed if no core reordering is done in the =

> patch but regardless of sorting or not, the unexpected differences are =

> usually pretty easy to spot from the output of that command. It's how I =

> found out the lack of depends on DMI on the post side and have found =

> plenty of similar issue when changes are rebased/reordered in a series =

> that does contain a move change.
> =

> While applying this, I realized I'd taken Jelle's ideapad patch which =

> resulted in this move patch not applying cleanly, so I ended up moving =

> Jelle's patch after this change to make things easier for me.
> =

> > > Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > >
> > Thanks for the reviews and help with both patches
> =

> Thanks for doing this, hopefully LKP will be okay with this change too
> and we can once again focus on less conflict prone work. :-)

-- =

With Best Regards,
Andy Shevchenko




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

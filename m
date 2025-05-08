Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA43AAFD24
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  8 May 2025 16:33:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tzrv6MD6gJbU1GCEt10m1oNwsHU68KOdAiB8sFIPyis=; b=HPIwx3RA/lTYJADpW5stncqmrB
	QbrbtZBD/1k12U4kiGxSmDlELFFQGzODNswfCK0wyg5m09aVtSQkVlgHqZG7NvIw2m9FLTnYwvgVY
	n7Egp41ZnFfFN/hp/h7lZ0IQw+yT18lhziowM2utyWEv0if2REwPuQSOe/vE2s3rrp9c=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uD2J9-0004nn-Vz;
	Thu, 08 May 2025 14:33:08 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1uD2J9-0004nd-0D for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 08 May 2025 14:33:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c15hSAcRe8IftpZtLTxWs+MgYkkiqtYddO3YHdfVQd0=; b=H9cMKilOuLHUcfrBlapi4usHd6
 vNn8BpC8RKmQ0gZkLL0C2y1zuDt1XPy4HotnnKi07ry1RdPcEWxmZfLhxKm8CgdEY/Ucty4uVllrt
 PtcOPKqEJr17dRZ+/PsefwRCWbYuSjxaDckf7HRrAS340rgwI5UQddmeVVlXXLvC/CJE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c15hSAcRe8IftpZtLTxWs+MgYkkiqtYddO3YHdfVQd0=; b=PYSKLv5IGvGPYSl32Uy15YqqgY
 /Y6D/bn1o9pd5+YYyRvc4dklVCzSbfBhcFWeS87CLZyfloYBupnE8ireyqVmkNmu4DVCrUqTwJjOQ
 74rnnsS4PZj8oXrcT+JrZ4VLwFz6qevzCDFoyjiKfxOtyiRRdGxSxum7rLKxp7Apl8lU=;
Received: from mgamail.intel.com ([198.175.65.19])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uD2J7-0005fQ-8G for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 08 May 2025 14:33:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746714786; x=1778250786;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=32/8Jvhnysr35wzEFLALrVHvT0vk1DBONh6gDqPky8Q=;
 b=ftKVW/ynURvbz7IDiSXfa+uMHHfdIynyFBhuIAQyD1LKOpmCLbELlbrO
 VYwpCSMXGSxESq+jBVV5zCNVGdEGdORhQx10inO4+riskNdm5IgPA1C65
 /jG23owQmJSDKhM48zrAy0TdnlVgHb4W2diEfs2D7QYVGKVSXs8AxmpUT
 Nzs/UNRUmjwNbJLVDZJdXtgJGUQRSUhI9L90+5fYpMAfgV/dzk54EMhX7
 clPbyjv8mBmwqUl7nSaRwu8ffnDiNs7mzgu4lXg7mVXWsCAn7RKn1JZj1
 GBk7Ka8TcDo8gRs6xWGw34ZzVtZRkH3v/lIFm0sXfLgizeHX56zIMt+TS w==;
X-CSE-ConnectionGUID: a0kUb381TF2Mv2Jqmh7DuQ==
X-CSE-MsgGUID: UEQ57qkVSAmRw6vWSoN4gQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="48369128"
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="48369128"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 07:32:55 -0700
X-CSE-ConnectionGUID: 6m4ImnWlSN+IiBuYyMby0w==
X-CSE-MsgGUID: 3Hk7sTD+Tmu9nvrdhnx+xQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="141523299"
Received: from smile.fi.intel.com ([10.237.72.55])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 07:32:52 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1uD2Ir-000000048T2-33Wp; Thu, 08 May 2025 17:32:49 +0300
Date: Thu, 8 May 2025 17:32:49 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Mark Pearson <mpearson-lenovo@squebb.ca>
Message-ID: <aBzAkfJvVA04r-2U@smile.fi.intel.com>
References: <mpearson-lenovo@squebb.ca>
 <20250507190456.3004367-1-mpearson-lenovo@squebb.ca>
 <20250507190456.3004367-2-mpearson-lenovo@squebb.ca>
 <6feeae5a-3928-8198-7ed6-2080c929d7c5@linux.intel.com>
 <c8ad9e6d-772d-4954-a3b9-ecafe7e3bdc7@app.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c8ad9e6d-772d-4954-a3b9-ecafe7e3bdc7@app.fastmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -3.8 (---)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, May 08, 2025 at 10:28:26AM -0400, Mark Pearson wrote:
    > On Thu, May 8, 2025, at 10:03 AM, Ilpo Järvinen wrote: > > On Wed, 7 May
    2025, Mark Pearson wrote: ... > >> +EXPORT_SYMBOL_GPL(tp_acpi_get_handle);
    > > > > Please put these symbols into a namespace. > > Sorry, not quite sure
    what you mean here. Could you point me at an example? 
 
 Content analysis details:   (-3.8 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [198.175.65.19 listed in list.dnswl.org]
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                          [198.175.65.19 listed in sa-trusted.bondedsender.org]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [198.175.65.19 listed in bl.score.senderscore.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -1.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uD2J7-0005fQ-8G
Subject: Re: [ibm-acpi-devel] [PATCH 2/2] platform/x86: export thinkpad_acpi
 handles
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
Cc: Armin Wolf <W_Armin@gmx.de>, ibm-acpi-devel@lists.sourceforge.net,
 ikepanhc@gmail.com, LKML <linux-kernel@vger.kernel.org>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Thu, May 08, 2025 at 10:28:26AM -0400, Mark Pearson wrote:
> On Thu, May 8, 2025, at 10:03 AM, Ilpo J=E4rvinen wrote:
> > On Wed, 7 May 2025, Mark Pearson wrote:

...

> >> +EXPORT_SYMBOL_GPL(tp_acpi_get_handle);
> >
> > Please put these symbols into a namespace.
> =

> Sorry, not quite sure what you mean here. Could you point me at an exampl=
e?

Use _NS variant of export.

-- =

With Best Regards,
Andy Shevchenko




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

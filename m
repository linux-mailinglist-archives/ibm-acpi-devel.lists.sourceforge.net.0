Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E42ACFE2B
	for <lists+ibm-acpi-devel@lfdr.de>; Fri,  6 Jun 2025 10:23:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lB4oJiZ27DGLGYiSF524Jjh1O6r2UPmoehtRnlPNml8=; b=J9QuyKhgjGdqVCMXjXTziJB9sl
	nGJokwq3QmyF8CuKoeI/nI+FiOUyfaze0oshwvTRrQtUsWZ9WyaehabGPuALXBC62AKaGvpVTOf4Y
	3yIrlNpGp0Q+zQQ7RK1YA7rw7HTlJkKO1fXvbT0zbiSdrxwKJMegtBhg+EvYLXC0FJFk=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uNSLP-00043v-1A;
	Fri, 06 Jun 2025 08:22:31 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1uNSLM-00043d-UG for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 06 Jun 2025 08:22:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7b9r2zVOt6YIDWljf4W2cYAiellO04TvGua3xdrM558=; b=W51+2BNxCf2Bu3hu+/Vt7lxUkA
 CWuptk3R/euszm9Vdk1u2rml25XeaKuT+Vx4PIF7L95SbAH3kKzCImieyDWi2YscKz7Slov8FDqpv
 xlpysweUOVPvov0FnNkV0RijmjWDSUy0JU53zwV9YArZ/DNoEG/y4jDShQjviRxFLAM0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7b9r2zVOt6YIDWljf4W2cYAiellO04TvGua3xdrM558=; b=OCnwL98UIhCBu9nMNSpwKw0ch9
 J+zTS2p+ZXPlVfNqP6whmA0YdDulBQ9+MoHeKmjiK+h/eZbzXTNoxcs73rbGG96PE24Q+GBlZ2DZC
 tGq3onfsp/gidRc5Kcyoc46DCN34bi/hk9j+Oj0zuYfl21DhimfqQkGfLvmaiQvxCR+k=;
Received: from mgamail.intel.com ([198.175.65.18])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uNSLM-0004dY-Dk for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 06 Jun 2025 08:22:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749198149; x=1780734149;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=5Wcwpm0Z8kSMrpruTks0M12X5foA0MV5jmGMbNb+6dM=;
 b=FnU6EvqUx08Mo7H3FM0oJpKWr+ToLSf60QREb+oXL7yAhf1TUD2W4dQM
 5C/ODS/FaGRpsaZCbwBi0/LmvDJBe/4yFydxlHS2wFeALWHg16/lua7qa
 TpD86cwexkt6mZBt3qqAinw89I2Yk1hOU7OruQSy5bSf42BFAQzuJWMcE
 TqnXo2ijLiau1eTDgrLU7zHza4xCbAUvzY7mr7ZWyVSSxtW8RuCjQ0Y3k
 Fne41eGz41XIRkFNkHH9FlMHsbsZ+xQ5MYsqIpP8by9Mo8rqJD0tIkUcv
 2xKRiNDhB0uvNrrzScPiB3Ut8Kyx6nOweQnOnIRNZMKcmI+TQRiGEFe6V Q==;
X-CSE-ConnectionGUID: T/6C5psWSMmDmpQh/Aa5Xg==
X-CSE-MsgGUID: HOoa9VEERj+tjXXdb1EuMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11455"; a="51486174"
X-IronPort-AV: E=Sophos;i="6.16,214,1744095600"; d="scan'208";a="51486174"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2025 01:22:18 -0700
X-CSE-ConnectionGUID: eboYxtTKRUmWuzIQmUOnyA==
X-CSE-MsgGUID: 1kUmMYwXQ2eM37IKT+dL5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,214,1744095600"; d="scan'208";a="145776851"
Received: from smile.fi.intel.com ([10.237.72.52])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2025 01:22:14 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1uNSL5-00000004837-1i9R; Fri, 06 Jun 2025 11:22:11 +0300
Date: Fri, 6 Jun 2025 11:22:11 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Mark Pearson <mpearson-lenovo@squebb.ca>
Message-ID: <aEKlM5lzhuVdYS-U@smile.fi.intel.com>
References: <mpearson-lenovo@squebb.ca>
 <20250604173702.3025074-1-mpearson-lenovo@squebb.ca>
 <aEEyEfYgpPQm8Tlx@smile.fi.intel.com>
 <71f410f4-6ac6-41d2-8c99-2a02e0f05fed@app.fastmail.com>
 <aEHzYT4XqhzIpO5k@smile.fi.intel.com>
 <dd3b79e3-a0d1-4413-8c69-58ca6b4fb8c9@app.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dd3b79e3-a0d1-4413-8c69-58ca6b4fb8c9@app.fastmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jun 05, 2025 at 05:03:15PM -0400, Mark Pearson wrote:
 > On Thu, Jun 5, 2025, at 3:43 PM, Andy Shevchenko wrote: > > On Thu, Jun
 05, 2025 at 11:53:47AM -0400, Mark Pearson wrote: > >> On Thu, J [...] 
 Content analysis details:   (-0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uNSLM-0004dY-Dk
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
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Thu, Jun 05, 2025 at 05:03:15PM -0400, Mark Pearson wrote:
> On Thu, Jun 5, 2025, at 3:43 PM, Andy Shevchenko wrote:
> > On Thu, Jun 05, 2025 at 11:53:47AM -0400, Mark Pearson wrote:
> >> On Thu, Jun 5, 2025, at 1:58 AM, Andy Shevchenko wrote:
> >> > On Wed, Jun 04, 2025 at 01:36:53PM -0400, Mark Pearson wrote:
> >> >> Create lenovo subdirectory for holding Lenovo specific drivers.

...

> >> >> -F:	drivers/platform/x86/lenovo-wmi-hotkey-utilities.c
> >> >> +F:	drivers/platform/x86/lenovo/lenovo-wmi-hotkey-utilities.c
> >> >
> >> > You may follow the trick in the Makefile (see intel folder) to avoid repetition
> >> > of the folder name in the file names. Note, the modules will be called the
> >> > same (assuming no ABI breakages due to renames).
> >> >
> >> Interesting - I'll have to look at that a bit more.
> >> Any objections if I leave that for a future change?
> >
> > IF it's nearest future :-)
> >
> I got this implemented - I'll include it with v3. It's less complicated than
> I thought when I initially looked. 

Thank you!

> Thanks for the suggestion.

You're welcome!

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

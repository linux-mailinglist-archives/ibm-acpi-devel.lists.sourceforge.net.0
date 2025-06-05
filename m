Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F02DACF83D
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  5 Jun 2025 21:44:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IOe4/RNO7e249F/3p7Q7belalEEilfjahI11bey9Krc=; b=d9uFMik0noznHcb4ym/IlYtDCc
	v4lm4O3FPnbogQ7af6vZRKi/eEl3PW1/kIDU4luoRFpF5TJ4rn6KbQojeg9WgOuwS2qq+ACYSQ6fM
	5sohuljJuStvobk8oKcrL9wV3YzaCVhXea8/8NBEuYGcyHgHggrTu+oq7Vc7ipqJgAGE=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uNGV7-000835-A9;
	Thu, 05 Jun 2025 19:43:45 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1uNGV4-00082z-To for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 05 Jun 2025 19:43:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8qtBRkWFWQ9A1MO0Zs7Z3HIxGiayNCyri6e9RF4jt3Q=; b=Tdc9BYmPRk6aMcO2J0SQ9E3uFF
 g5NkROH2SiACfJ86wEalEAUwgpqwZiikKtHvthQB3bZ4I3lMGt0c2iqmFNr6urTvY1GuPQ4vU2jhv
 5/LNlAoVJ0Uyq8Ptx++W0UU6v1+xehmosX9yl0lFQpINrfgH8vcBdokMX+ZrshnZBZLk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8qtBRkWFWQ9A1MO0Zs7Z3HIxGiayNCyri6e9RF4jt3Q=; b=Yb9oRmm7mh7HJA/gaiLCfUhfyN
 Rhe5Mh0oVnASPiF+Kvz6GgqWLSes820U284wqfaPp79sFcMhI6O3MgOMylcT1tHeGHzxJ0RlQ8+P5
 otV60shELJu2k7TTu8TJEgo7+2mFuCD20bhrSoRyDFIjnPwYe1TdK0LaIu5wPXrsx7TY=;
Received: from mgamail.intel.com ([198.175.65.14])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uNGV3-0008OZ-Up for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 05 Jun 2025 19:43:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749152622; x=1780688622;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=VLOUVhQrMl4XAJ98RU/ZeVhQMV1SLl+3znWYmt8OdJQ=;
 b=l5CVYQtqVEbNWToRuq5C4NzrkgZAiMRn1jzHHGA82/Q6jh07aR6E2YSQ
 YFW1ZkAJgjvOFWCaNrnHwFaZPSNMxcxWCqjm50DZk8u9HmxFazL1Si3hn
 I3z0DaEqJv3uc6SbvFAJr0Iu9iB5ZJo6g8FSZpMQcu7Zs0QjrWJF039+X
 XXvfDCJkZih3CzFFKXENa9tvrdK3JXFYnFI75SzZ8u3Vk1I7tmEOvREwt
 Qy4JjrCMqvMReBNUimzAP2o0AoRXTEm1SBANkyvlYfHckW9Z6g6si4yW7
 fRKpaZrMQdoH1YKikLYuyNc/B7wbKXlxkhYybMH1Q9cLLK+zV7XvctZVb g==;
X-CSE-ConnectionGUID: 0+GKPazBSt2ZVe2UhmzaOQ==
X-CSE-MsgGUID: aP/CVTL9Saiy9E8LPPtVrg==
X-IronPort-AV: E=McAfee;i="6800,10657,11455"; a="55097229"
X-IronPort-AV: E=Sophos;i="6.16,212,1744095600"; d="scan'208";a="55097229"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2025 12:43:36 -0700
X-CSE-ConnectionGUID: E1ZyDno8RNGwjQxzqLw5zQ==
X-CSE-MsgGUID: wWqhUdQ1QHmESSUM+W2UZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,212,1744095600"; d="scan'208";a="145576147"
Received: from smile.fi.intel.com ([10.237.72.52])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2025 12:43:34 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1uNGUs-00000003yiI-0sUk; Thu, 05 Jun 2025 22:43:30 +0300
Date: Thu, 5 Jun 2025 22:43:29 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Mark Pearson <mpearson-lenovo@squebb.ca>
Message-ID: <aEHzYT4XqhzIpO5k@smile.fi.intel.com>
References: <mpearson-lenovo@squebb.ca>
 <20250604173702.3025074-1-mpearson-lenovo@squebb.ca>
 <aEEyEfYgpPQm8Tlx@smile.fi.intel.com>
 <71f410f4-6ac6-41d2-8c99-2a02e0f05fed@app.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <71f410f4-6ac6-41d2-8c99-2a02e0f05fed@app.fastmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jun 05, 2025 at 11:53:47AM -0400, Mark Pearson wrote:
 > On Thu, Jun 5, 2025, at 1:58 AM, Andy Shevchenko wrote: > > On Wed, Jun
 04, 2025 at 01:36:53PM -0400, Mark Pearson wrote: > >> Create le [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [198.175.65.14 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [198.175.65.14 listed in bl.score.senderscore.com]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.175.65.14 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uNGV3-0008OZ-Up
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

On Thu, Jun 05, 2025 at 11:53:47AM -0400, Mark Pearson wrote:
> On Thu, Jun 5, 2025, at 1:58 AM, Andy Shevchenko wrote:
> > On Wed, Jun 04, 2025 at 01:36:53PM -0400, Mark Pearson wrote:
> >> Create lenovo subdirectory for holding Lenovo specific drivers.

...

> >> -F:	drivers/platform/x86/lenovo-wmi-hotkey-utilities.c
> >> +F:	drivers/platform/x86/lenovo/lenovo-wmi-hotkey-utilities.c
> >
> > You may follow the trick in the Makefile (see intel folder) to avoid repetition
> > of the folder name in the file names. Note, the modules will be called the
> > same (assuming no ABI breakages due to renames).
> >
> Interesting - I'll have to look at that a bit more.
> Any objections if I leave that for a future change?

IF it's nearest future :-)

...

> >> -# IBM Thinkpad and Lenovo
> >> +# IBM Thinkpad
> >
> > This is a bit ambiguous now. It's IBM and Lenove for ThinkPad... Perhaps you
> > should put some kind of date or so? Like
> >
> > # IBM Thinkpad (before 2007)
> >
> > (note, I speculated on the year, you may know better what to put there).
> >
> 
> Sure. Realistically the thinkpad_acpi driver still works for the (pretty old
> now!) IBM Thinkpads so it's a bit messy.
> 
> Main reason I did this is those two IBM specific drivers aren't, to my
> understanding, active for Lenovo devices now, and it seemed wrong to move
> them. Not sure if anybody really cares though :) I just didn't want to step
> on any toes.
> 
> IBM sold the PC business to Lenovo in 2005, so I can put that date there
> unless anybody else has concerns.

Sounds good to me.

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

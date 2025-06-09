Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF780AD2779
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  9 Jun 2025 22:18:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VUlGI/HO09sKWWJ0iD3Q3syhkrasDja5M7Xwk2hePAc=; b=USuoktBPIohvbTIQP09ef8RzeY
	1qfkZDSEglpRuqMhGhHLr86x/nQIRmgojdM0ea8L635lctIXSzfHG792/PXlDuST4h3rVos9XlhlC
	EceJatSeVsMsLYijs9YJta8qLbD527cFvf2MfIAbgdQKmVuqNdJP8kl8/i/epnP605ys=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uOiwC-0000XD-QM;
	Mon, 09 Jun 2025 20:17:44 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1uOiwB-0000X6-2u for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 09 Jun 2025 20:17:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qqiRjoiyGF2178jx+Lnr3wz3MAqXQjnNQLEIFnCrABA=; b=m5rkOZQueHefQR5mic+yt/dfjE
 Gso8dgbG+UskT2jcHRYHoZjyY/waoolvTnQ228ZiqHkH3DyQID4IqkeKffjCj9q2VhlS9kvnQAgmh
 hBePx3qH4mh6WLxqeEJ9h384n08YF3PiuuJnqWftbJMJSz48U66jCom/fbIyV1comxc0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qqiRjoiyGF2178jx+Lnr3wz3MAqXQjnNQLEIFnCrABA=; b=XChleDD9zbvs8rzKgS7o9Vammq
 99x5abYHj6RI4BAWhM4haFZTBzN0jXX+oDoVrCmhJvmeRttuTfRXbmXvS/Q7HGtX7jH7YN6VpkmzV
 g1L8kbKl27NmtV14yPxWlglGtc+auuel84zZ4z5x7TY3oNjbv20Y/QSHYIaK9Kr+dbXw=;
Received: from mgamail.intel.com ([192.198.163.12])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uOiwA-0003Ab-Lw for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 09 Jun 2025 20:17:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749500263; x=1781036263;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=R38hBJb4hHoL2F5+5FBgstMAamHDnZtofOGjHkEGdLA=;
 b=WjXa83eYO6RvwTS+A80SL0qNSTmOo9MM/U6USqS6kfO0Xr5M+g4ZFGBW
 s7hugDaW0BkTJkFcfTLFv7Vc14rEYaHvxbOb7mVMsO/GGHVHFNEVH6V7I
 Jr7cSNXMzURhu9pp2cgfEfRkQCFwK4Y4qK4B/nm6Epvu4DbtRDHxq+/yh
 4mDHmPJs0T2KFJ72VYQAYfyl9HIWGfr6rrcJsj20IEwBfOjgyU+UonXRL
 LVIf8eVkSptLNTfsnVlPrI6nNw9HPLZpQcTrlWR5sSLhYTijrHEWhWC4Q
 ffOpi7gTud8pD9oPm4e1la28biBlOef3jwoSpj29ybUOcmSYoyykj8VXG Q==;
X-CSE-ConnectionGUID: XlSz9LNNQKG6P6YPX8csUg==
X-CSE-MsgGUID: +Q2myOIyQ3q5ILTM+eZQww==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="55383519"
X-IronPort-AV: E=Sophos;i="6.16,223,1744095600"; d="scan'208";a="55383519"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 13:17:37 -0700
X-CSE-ConnectionGUID: Whf+OXgjQ9aoFFT+hIUQeQ==
X-CSE-MsgGUID: aNY/rQXdQxasgbLrXD2BOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,223,1744095600"; d="scan'208";a="151752800"
Received: from smile.fi.intel.com ([10.237.72.52])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 13:17:34 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1uOivz-000000059br-3N0w; Mon, 09 Jun 2025 23:17:31 +0300
Date: Mon, 9 Jun 2025 23:17:31 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Mark Pearson <mpearson-lenovo@squebb.ca>
Message-ID: <aEdBWymLN7aYqkeB@smile.fi.intel.com>
References: <mpearson-lenovo@squebb.ca>
 <20250609122736.3373471-1-mpearson-lenovo@squebb.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250609122736.3373471-1-mpearson-lenovo@squebb.ca>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jun 09, 2025 at 08:27:24AM -0400, Mark Pearson wrote:
 > Create lenovo subdirectory for holding Lenovo specific drivers. ... > LENOVO
 WMI HOTKEY UTILITIES DRIVER > M: Jackie Dong <xy-jackie@139.com> > L:
 platform-driver-x86@vger.kernel.org
 > S: Maintained > -F: drivers/platform/x86/lenovo-wmi-hotkey-utilities.c
 > +F: driver [...] 
 Content analysis details:   (-0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uOiwA-0003Ab-Lw
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
Cc: W_Armin@gmx.de, corbet@lwn.net, ikepanhc@gmail.com,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, hdegoede@redhat.com, hmh@hmh.eng.br,
 ilpo.jarvinen@linux.intel.com, ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Mon, Jun 09, 2025 at 08:27:24AM -0400, Mark Pearson wrote:
> Create lenovo subdirectory for holding Lenovo specific drivers.

...

>  LENOVO WMI HOTKEY UTILITIES DRIVER
>  M:	Jackie Dong <xy-jackie@139.com>
>  L:	platform-driver-x86@vger.kernel.org
>  S:	Maintained
> -F:	drivers/platform/x86/lenovo-wmi-hotkey-utilities.c
> +F:	drivers/platform/x86/lenovo/lenovo-wmi-hotkey-utilities.c

Is this correct?

Otherwise LGTM.

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

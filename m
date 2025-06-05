Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 639EFACE98B
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  5 Jun 2025 07:59:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6813VkvzmfyiUgX7cNnx/Dyw4Ig3LE+1MgUKfSxjgik=; b=H8NhoGXMjhx8ZyK538A7Uts+un
	e/9tWR+P9PXKops5qmegDMuu0Mh3g4gFlvLzZrf7K9Ni9RTi/pS0AriBBo/Ri2IU8M0Z7fwTYVQmH
	OdxVy/fNyROScNTuEmrfmRF/0NNKOpppUIKzB049oB+vcLiW/Tul3hXVwcVv4WBY+ILA=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uN3d2-0008Pc-CP;
	Thu, 05 Jun 2025 05:59:04 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1uN3d0-0008PM-2n for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 05 Jun 2025 05:59:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UexLclVpPXiITKd1jLX09DOga20arDMYKCS2KxHDknA=; b=ZSqReBrzbOTM6D0chW5LHN5UvP
 kcui1fhH6/OdH9s9TcJzF9atvRH90C7ktWH9cXINU31BMoRbnqzkLvv3Hmhv0outDzdW4DBBpa7Sj
 7M8hFmMSkGX3jVggAngq3GAtXU7/IiB2X4vH0fvn7j/vjyAf+3iL4P9pcRaxhsc+PHVQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UexLclVpPXiITKd1jLX09DOga20arDMYKCS2KxHDknA=; b=h3bE8FHIj43mW0/msC3tZHsFEw
 bLqwiIgXu/+KJXOK/Kr6C3PEKGD9TICwp/ox6yw4qMDrc8K3pY1NRuMyS68y8uvzYbssU4z9+vaU7
 xMpyS7i36DAL+UhVN8OqW88hkkKvRXCETDqq9Jc5ahcIJyMYArts3DWLb9xiPiGUMvJc=;
Received: from mgamail.intel.com ([192.198.163.15])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uN3cz-0006h3-KC for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 05 Jun 2025 05:59:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749103141; x=1780639141;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=/ByTCSRKhoKS/nj0DFNvNzqPbdF7gDWTNXPA+3K7AJM=;
 b=aHq//9KkaKZ11u5TaOudMZzyRAuf2LKgxQtwfkYDPM1w4iOIa0bhNH4h
 BhI5rlmldJpvWOhWV04BVJ+OPbNyg50tq+guvpMoVvPKhc8lGJAq7xcOe
 GhAMYBkU77AwOf6z3GUvt67de3qTOM60Tf2sOnB3bpBOxe4xVMIP3P3Lb
 /QJe5Iv8fj392V7frnl8FNGo79dJwy0vvUGMUyIapDGpPdaCv98EfdhWg
 4FzX4bD7D4muHyfphwgSKngDVCiSzI01BCrHgSIp62ybgifxhh9NZ9B5d
 GZ7t5N2y57EzbsT3kgXhbbVEh7pnw0RqWq0biKk8jpgzKuV4ee6DQdTX1 g==;
X-CSE-ConnectionGUID: JnsMeyKdRTCg3JGfCRemkw==
X-CSE-MsgGUID: Z2DnoK2wSkOeWvSp8+5tbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11454"; a="51350677"
X-IronPort-AV: E=Sophos;i="6.16,211,1744095600"; d="scan'208";a="51350677"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 22:58:49 -0700
X-CSE-ConnectionGUID: Qr7ZhDsVSQa50KZK2V97/A==
X-CSE-MsgGUID: RWXMFbBFSLOCtiLFxCnQFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,211,1744095600"; d="scan'208";a="146391908"
Received: from smile.fi.intel.com ([10.237.72.52])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 22:58:46 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1uN3cf-00000003m7A-1apF; Thu, 05 Jun 2025 08:58:41 +0300
Date: Thu, 5 Jun 2025 08:58:41 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Mark Pearson <mpearson-lenovo@squebb.ca>
Message-ID: <aEEyEfYgpPQm8Tlx@smile.fi.intel.com>
References: <mpearson-lenovo@squebb.ca>
 <20250604173702.3025074-1-mpearson-lenovo@squebb.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250604173702.3025074-1-mpearson-lenovo@squebb.ca>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jun 04, 2025 at 01:36:53PM -0400, Mark Pearson wrote:
 > Create lenovo subdirectory for holding Lenovo specific drivers. ... > -F:
 drivers/platform/x86/lenovo-wmi-hotkey-utilities.c > +F:
 drivers/platform/x86/lenovo/lenovo-wmi-hotkey-utilities.c
 Content analysis details:   (-0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uN3cz-0006h3-KC
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
Cc: W_Armin@gmx.de, corbet@lwn.net, ikepanhc@gmail.com,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, hdegoede@redhat.com, hmh@hmh.eng.br,
 ilpo.jarvinen@linux.intel.com, ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Wed, Jun 04, 2025 at 01:36:53PM -0400, Mark Pearson wrote:
> Create lenovo subdirectory for holding Lenovo specific drivers.

...

> -F:	drivers/platform/x86/lenovo-wmi-hotkey-utilities.c
> +F:	drivers/platform/x86/lenovo/lenovo-wmi-hotkey-utilities.c

You may follow the trick in the Makefile (see intel folder) to avoid repetition
of the folder name in the file names. Note, the modules will be called the
same (assuming no ABI breakages due to renames).

...

> -# IBM Thinkpad and Lenovo
> +# IBM Thinkpad

This is a bit ambiguous now. It's IBM and Lenove for ThinkPad... Perhaps you
should put some kind of date or so? Like

# IBM Thinkpad (before 2007)

(note, I speculated on the year, you may know better what to put there).

...

> +++ b/drivers/platform/x86/lenovo/Makefile
> @@ -0,0 +1,15 @@
> +# SPDX-License-Identifier: GPL-2.0
> +#
> +# Makefile for linux/drivers/platform/x86/lenovo
> +# Lenovo x86 Platform-Specific Drivers
> +#
> +obj-$(CONFIG_IDEAPAD_LAPTOP)	+= ideapad-laptop.o
> +obj-$(CONFIG_LENOVO_WMI_HOTKEY_UTILITIES)	+= lenovo-wmi-hotkey-utilities.o
> +obj-$(CONFIG_LENOVO_YMC)	+= lenovo-ymc.o
> +obj-$(CONFIG_THINKPAD_ACPI)	+= thinkpad_acpi.o
> +obj-$(CONFIG_THINKPAD_LMI)	+= think-lmi.o
> +obj-$(CONFIG_YOGABOOK)		+= lenovo-yogabook.o
> +obj-$(CONFIG_YT2_1380)		+= lenovo-yoga-tab2-pro-1380-fastcharger.o
> +obj-$(CONFIG_LENOVO_WMI_CAMERA)	+= lenovo-wmi-camera.o

> +
> +

No need to have even a single blank line at the end of file. Usually editors
even complain about this.

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

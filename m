Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 878AAAD43AA
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 10 Jun 2025 22:23:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jaomtv+fKsmRMgp2m19YPFy/kufzfd6fGHQCLQDMAKY=; b=SWMwLWVR5GxvqfGkRd1hy1Htds
	p1hknr+SUAPw6v2K+rSF9W0hPE2SP1a/GhQCxppV0RhBmhMqTW6cIDBDcPT8SU+PyPoXw2QrLd/RW
	gaUMvwBlMB0kccp9fCx8o1lR7eK62ZiKOhNGIhpc2uHz6Z/pQM4fvFYCXhUw6Tjox+1A=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uP5Us-0006vi-0M;
	Tue, 10 Jun 2025 20:23:02 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1uP5Uq-0006vT-8r for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 10 Jun 2025 20:23:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JWx8MPO/CJx8whOsalqtoLAGOct8uSv30U/d7wjl6jU=; b=Zm148SNWboO4T6WopCQRMhLv/c
 2Ll+qD4ySM/wYJGKYQb7mP6u2+wswTnqA6qplmtsOtr8WbRjjuns1y7WRlyPaXMrDhu9MHV9ZTFtY
 SeOUK15TnqLzB27uL0glOrMIWZPJ3SCz224HxXn/CAnCPqJWw5DRqPEDYzUN7bDDB520=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JWx8MPO/CJx8whOsalqtoLAGOct8uSv30U/d7wjl6jU=; b=i+NBH2kGRmbpXDQ8QtgsTclS9O
 TjW5zaxUmWOlu971qWE+bs+U89BqpBfNxWE/kuTXYGfEJqL9Vu2m2ltkyOqrnOYa/DHr//ZsXRItt
 /H62tKqWYd3ZcUx84PiaWIuLJ5Xt1lL3kdFO3l7n0sACxnOnrqMopu/LF44BJ35vBK/c=;
Received: from mgamail.intel.com ([192.198.163.8])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uP5Up-0005Vq-Ok for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 10 Jun 2025 20:23:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749586980; x=1781122980;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=vbDwLegN4BUBvpYXglEaqbIzLIT07N8leHj3G127kVc=;
 b=EWzRyNlg905sQM/W7YUW2jmODMfhbmkiBPaTbuDnvgVvL+BZvbiJjuuE
 HSYvMHjpf8Vr5uVRCQdjyzStCKuEAx+d+bSHnR0SS4lxAgbAsZTSDQHxs
 wWJLmhHN6WJ/2VL6sI2o+XP+NV1+OcYjBvFbM2mY/YnVceEZn6A0R84ov
 0lzOMg8nIhjOAIUqsrOaG8hAhvC7nHEYfHUTLHBo1LCSjjth8dzkrbx/6
 Cp1ePXCvVRnq1qjiIggTLeNMCsEBl9VfFxy7UxcY2y7e0A1WKxpJ4kNQ3
 EU98PkgZjk4O/EUVSo8gz/zju5Qmi8NFChF1BTaRPLZ3WHdI9PlzZdlWY g==;
X-CSE-ConnectionGUID: 3gAnO9taSLCEZkRzxkBDUQ==
X-CSE-MsgGUID: SxAsTguXR7KDMXfpMBqmyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="69276515"
X-IronPort-AV: E=Sophos;i="6.16,225,1744095600"; d="scan'208";a="69276515"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 13:22:49 -0700
X-CSE-ConnectionGUID: RvTyyALoRBC+3Tpj5sFVwA==
X-CSE-MsgGUID: vjIlHbFnTEyci7HL5Yth0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,225,1744095600"; d="scan'208";a="147516159"
Received: from smile.fi.intel.com ([10.237.72.52])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 13:22:46 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1uP5UY-00000005RYg-30TW; Tue, 10 Jun 2025 23:22:42 +0300
Date: Tue, 10 Jun 2025 23:22:42 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Mark Pearson <mpearson-lenovo@squebb.ca>
Message-ID: <aEiUEjI2ZoZlO8Vo@smile.fi.intel.com>
References: <mpearson-lenovo@squebb.ca>
 <20250610192830.1731454-1-mpearson-lenovo@squebb.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250610192830.1731454-1-mpearson-lenovo@squebb.ca>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jun 10, 2025 at 03:28:24PM -0400, Mark Pearson wrote:
 > Fix issues reported by kernel test robot. > - Require DMI for think-lmi.
 > - Check return from getting serial string Reviewed-by: Andy Shevchenko
 <andriy.shevchenko@linux.intel.com> 
 Content analysis details:   (-0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uP5Up-0005Vq-Ok
Subject: Re: [ibm-acpi-devel] [PATCH v4 1/2] platform/x86: thinklmi:
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
Cc: W_Armin@gmx.de, kernel test robot <lkp@intel.com>,
 ibm-acpi-devel@lists.sourceforge.net, ikepanhc@gmail.com,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 hdegoede@redhat.com, hmh@hmh.eng.br, ilpo.jarvinen@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Tue, Jun 10, 2025 at 03:28:24PM -0400, Mark Pearson wrote:
> Fix issues reported by kernel test robot.
>  - Require DMI for think-lmi.
>  - Check return from getting serial string

Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

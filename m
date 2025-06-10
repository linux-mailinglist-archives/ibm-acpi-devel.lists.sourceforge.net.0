Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5C8AD43B3
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 10 Jun 2025 22:27:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GPlEsrSDA4kNEtI/3VfHsidAOmi2I3pRbEvJ5ZxMFn8=; b=b+Q30WBrXFP8WB9Q8zIA/+F2lD
	CmQhOOogMIUW8169GsuI2mybdZ/aSz+H1D2EGL/yOupodEuUW0l6jajDue4Cun3Rll+GgfG8H3gnm
	BP+fyOoT3fR/v0r9x8aKGkl5kCXw1Aunzt5R9XcUEmFdSlR/nKoOPIEWmFQuo601kBMU=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uP5Z8-000508-VR;
	Tue, 10 Jun 2025 20:27:26 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1uP5Z7-000502-Ok for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 10 Jun 2025 20:27:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mACZ4w7xtcGqUCoMMTUXIVZZjZzrWTCQWayErxrx1A8=; b=V+GIjez+8xR90kOlR3kvEEDdBy
 y/5Lfb/rCJ3nQe3TuGSaIPyjqTD/pH1YiYHxVcEbIiZY+ho/KmGQL6eCRenov9j5BQdE+3zc9I14h
 RMsXKOCiaNdnTitgU+iG7BNPlfYYoiVATr1QvsRzJGmGhQNKzow8SOsTXouSqxfriNc4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mACZ4w7xtcGqUCoMMTUXIVZZjZzrWTCQWayErxrx1A8=; b=juSeEnUf9NpGCDBt3pfQ01QIbb
 X/GtlKIPs1RKNO9+wRSZtWxgxTEPALxTQXohf56YH0/wMWgWnvTtFkHAt4Rlxt9ra7Vpu9pmnWak5
 clKKmEiK0/iVLOHL14qRJ5TjipymZpEl3WvUAQ2XqwWAWgbbBKDf9//EJy0No4A4yFVk=;
Received: from mgamail.intel.com ([192.198.163.14])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uP5Z7-0005hw-DC for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 10 Jun 2025 20:27:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749587246; x=1781123246;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=a0fsVYzJm3+G88UxdB0B0y4YgNQAiF04/BzeC7n0bFM=;
 b=O9ci1BW9jioFkrdCa2csZe7ESP07/gOL0jvBL1ny2xuw0lFdA2FwG7p5
 sYR/v3uPVS31B8p3M4FBXwlR5Y7aqtTCFN19TcGQHScW7Ahg7gL8uGluN
 vjKGVbYf/NGTXSHjSWsysIgxu4z2hvP/bac7SUz9Os66v5KlTR78m2F8Y
 cka9nrFegForOW/3HhCvTDHLz7+B5RyjVBYvs/E19ge4iqSch9qw3qQ63
 KBBSSnzYYaMUoYwiNwVXKrC4bZYM5rcc2SXbmy9IwOwt1RJSB0mOb+Oo3
 KRLFnenzlA7YMCqS8z8zcbF1NIhFMjO2kkYxMTxMmua7oJmkMmXQBtjSa w==;
X-CSE-ConnectionGUID: Lq1PTgnaRmin5kz9yRfZkw==
X-CSE-MsgGUID: ylwaUaG4SzOO5oqJ4mlnoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="51812190"
X-IronPort-AV: E=Sophos;i="6.16,225,1744095600"; d="scan'208";a="51812190"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 13:27:15 -0700
X-CSE-ConnectionGUID: P3dVhLlURDeKL62XEUj5QA==
X-CSE-MsgGUID: hx91AJa8SgCOP+/SdpGtHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,225,1744095600"; d="scan'208";a="146867111"
Received: from smile.fi.intel.com ([10.237.72.52])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 13:27:13 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1uP5Ys-00000005RbS-06B9; Tue, 10 Jun 2025 23:27:10 +0300
Date: Tue, 10 Jun 2025 23:27:09 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Mark Pearson <mpearson-lenovo@squebb.ca>
Message-ID: <aEiVHXI4vS9BDOPW@smile.fi.intel.com>
References: <mpearson-lenovo@squebb.ca>
 <20250610192830.1731454-1-mpearson-lenovo@squebb.ca>
 <20250610192830.1731454-2-mpearson-lenovo@squebb.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250610192830.1731454-2-mpearson-lenovo@squebb.ca>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jun 10, 2025 at 03:28:25PM -0400, Mark Pearson wrote:
 > Create lenovo subdirectory for holding Lenovo specific drivers. Assuming
 Kconfig entries have mostly been copied'n'pasted, the rest LGTM, Reviewed-by:
 Andy Shevchenko <andriy.shevchenko@linux.intel.com> 
 Content analysis details:   (-0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uP5Z7-0005hw-DC
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
Cc: W_Armin@gmx.de, ibm-acpi-devel@lists.sourceforge.net, ikepanhc@gmail.com,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 hdegoede@redhat.com, hmh@hmh.eng.br, ilpo.jarvinen@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Tue, Jun 10, 2025 at 03:28:25PM -0400, Mark Pearson wrote:
> Create lenovo subdirectory for holding Lenovo specific drivers.

Assuming Kconfig entries have mostly been copied'n'pasted, the rest LGTM,
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

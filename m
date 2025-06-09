Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DAD3AD277D
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  9 Jun 2025 22:20:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0/K1Z7FgB+zuTeFPAAiMX4uhpVNMELT2+fW4CSknxxM=; b=WaNWTqdhr/hdI2nBRkaXKkDMR3
	2YFzpPt+wqN8HzTi1CAUFPh1MfoFLB9VBvVBbywBbLziSBaAmYvQmY2eit5qatmZDcYeurrD9k2BI
	LSBmBNmr5oO43njo8DZ1kHf9hakaBiWtpIzMHpRy2tJxYvvehwxOzk37JVLrLrhLPVUE=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uOiy2-0000Zw-95;
	Mon, 09 Jun 2025 20:19:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1uOiy0-0000Zo-W7 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 09 Jun 2025 20:19:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zBXnpp4IBwSpSjgtL84XPgS50QurFX6HJhCCCByo3xU=; b=HsYoNsroOWGGDqLcI/uNui+lYg
 gQjXoywcjaZZ6QBXIQgrDqbco6HXlcYPCuHNEdlyG+3eelYP5eCvlcOXIyEEoPC4yvoqtXSpSvjzH
 KE0//7Ac0icM0z0R8pNnFj+r0G+vnxeyqWxHEuv9nwNo2EKAjszm9BF30jEpEUDHRr6E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zBXnpp4IBwSpSjgtL84XPgS50QurFX6HJhCCCByo3xU=; b=gqnfy9+BGhbQsPQwkfZfYODNva
 m+l0Fx5kBbWeUl0MkelExR4BxeljaVLHKTF7PElvzMdHQrXJgLhjrXpCZYi0m2BEOxr1yLjj9xtvc
 gXyV+TceRmd0nx6lVgIBz2cleLAOVii1MlDypyqrGtFnB3xbsE5j5fVqO8/SEk2+HTPY=;
Received: from mgamail.intel.com ([198.175.65.9])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uOiy0-0003HZ-D9 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 09 Jun 2025 20:19:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749500376; x=1781036376;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=xHki770puYpEzm3QMVlBGE3HdQKNbbHjet2ZCnU39dg=;
 b=GgfMHUFB2URw6SJqG+TMkXkp1SY5VE9c/w2GisZBi8vCH6cJGwZxJV9T
 Gc9IFdXGShq2EKfPZ/8FhO4ZQMabZHuWEri0JZ9Gqko9dCvaP2qvDtxhY
 jPeuDypQ1iwpu39Cg9Km9CYbGgNDEHFKyHOGVt2Phv83RgKSWqpVH9sWw
 hhL1Pu34Y/3UqFHApLCdKD6NnUHz78TsGBNEVOujlrYBn29r18j0BGIH1
 cMFbKnnVGnjotoutf9cHDJlyERWt9y8BX8QFd8o6zzauRtRtEfO/z2CTb
 Iz6ke3Tj1q7UFN5bjRmWJbgR/k37COGocCqH3H+kiK5oTbV4I7Pd3YFTd A==;
X-CSE-ConnectionGUID: FEkfJ8OJTkihBF7/BuA6fA==
X-CSE-MsgGUID: lPobq4HOSRmF9ewOf+iTpA==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="74126653"
X-IronPort-AV: E=Sophos;i="6.16,223,1744095600"; d="scan'208";a="74126653"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 13:19:31 -0700
X-CSE-ConnectionGUID: vCR4LmqaSFOMbLacU69nbw==
X-CSE-MsgGUID: GHyQfBRVRnCO/63aM5EzCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,223,1744095600"; d="scan'208";a="151867743"
Received: from smile.fi.intel.com ([10.237.72.52])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 13:19:27 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1uOixo-000000059d8-0Xwz; Mon, 09 Jun 2025 23:19:24 +0300
Date: Mon, 9 Jun 2025 23:19:23 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Mark Pearson <mpearson-lenovo@squebb.ca>
Message-ID: <aEdBy6m_6aQr8l41@smile.fi.intel.com>
References: <mpearson-lenovo@squebb.ca>
 <20250609122736.3373471-1-mpearson-lenovo@squebb.ca>
 <20250609122736.3373471-2-mpearson-lenovo@squebb.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250609122736.3373471-2-mpearson-lenovo@squebb.ca>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jun 09, 2025 at 08:27:25AM -0400, Mark Pearson wrote:
 > Fix issues reported by kernel test robot. > - Require DMI for think-lmi.
 > - Check return from getting serial string > > Reported-by: ke [...] 
 Content analysis details:   (-0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uOiy0-0003HZ-D9
Subject: Re: [ibm-acpi-devel] [PATCH v3 2/2] platform/x86: thinklmi:
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
Cc: W_Armin@gmx.de, kernel test robot <lkp@intel.com>, corbet@lwn.net,
 ikepanhc@gmail.com, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, hdegoede@redhat.com, hmh@hmh.eng.br,
 ilpo.jarvinen@linux.intel.com, ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Mon, Jun 09, 2025 at 08:27:25AM -0400, Mark Pearson wrote:
> Fix issues reported by kernel test robot.
>  - Require DMI for think-lmi.
>  - Check return from getting serial string
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202506062319.F0IpDxF6-lkp@intel.com/

> 

No blank line in tag block.

> Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>

>  - New patch added to series.

Shouldn't it be the first one in the series? It seems to me that this is the
fix of the original code as well.

...

> +++ b/drivers/platform/x86/lenovo/think-lmi.c

My understanding is that you need either Kconfig or changing C file.

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

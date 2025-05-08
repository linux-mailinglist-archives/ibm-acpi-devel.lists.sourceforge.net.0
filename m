Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BA045AAFD05
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  8 May 2025 16:29:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=16i45H+hTPYKVAaLAFijCLJje+eh0wOS8p4ftci8+as=; b=QEUF/CerqtqBi71568yveBzfv5
	PRuyWFjasdU+2SRQXaJGUGRIa9MOZLnZ9FgaUsYIWLvmm9xrbxmsNJIbhFbqu7qj+ISSKLtfkhwQd
	d4hPrPHVQXhMALZSSmfEyTiXdL6DW3Lfs6B9im0s+RK5bTJShujHNrpNo4UfwxIVvsp4=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uD2Fk-0008NT-32;
	Thu, 08 May 2025 14:29:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1uD2Fi-0008NN-NR for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 08 May 2025 14:29:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hD11w0tpwzQqLTk+EfdD27o2lSf5sp129foqYVQtRgg=; b=gzaMcleDq4hO1X6o3JNR78rg8T
 01YiJJBDp9yrKqnmYM4fOMLNS3a+X6ivDV7JEZIc5faicGmBrKADiXr7ntRq/FLwkDTZW5fpnEonB
 M629ia8peBkWDXIa7l802O449HvvlRdhBSd6D0cFORV1EAQywNCnOKlCAiEFiwRPHk7o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hD11w0tpwzQqLTk+EfdD27o2lSf5sp129foqYVQtRgg=; b=EdSHdjd1Fy3vACNQpZX9jM4auv
 gYdHdt0wXha7Yqc09fVg6D5LPA3Ffys/2vjPF/hQjAsdL7GaWREIML+Liuy8ihdDfEl7ogsiC9NDO
 Hdu7lyev7JTy0NiMPsajtnq/WX4urxh6kTzxw4rzSb/f5VlcLx1841GWfyR6lZQLRybI=;
Received: from mgamail.intel.com ([198.175.65.11])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uD2Fh-0005Nb-Sg for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 08 May 2025 14:29:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746714574; x=1778250574;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=W6JOmhmDyfPqPFSYQOBYwQNFj1DkKPisOWKe00hmnlU=;
 b=XRmGd8nmkfP5hvMcO7irZfeliSp9C7vc+ZddWpxCbMVNuIPLBzJcSrzt
 qw4w1g7AhnmMCxdIgLTHkyf4nOwoZ8bSNuTlgPIHD5syrffval+U2yEvv
 38F+/LEaSpMfzEfAij0/NnVWhd6IOEySmuXpNOdcn+6Wb0iC3IAPrc3Me
 AMLVZngr25DJSgPkHDNwGSkOmbB/b+TpP9FnCeYl/S9a70bMSsc0c6muF
 BjbzSz2X/JWz12ribS4o8WCzP3tK8Lz45+VlDbxEVa2pjlPf2Aems6WnM
 b7iCniCvzqM0mWJ0CkZWQN/X3Arlsl+gMyH+GOl0xaxOfCpI79lRJSUhX A==;
X-CSE-ConnectionGUID: FHYJRVxmRQSfsGHffRYyCw==
X-CSE-MsgGUID: xnz/H28ASGCXPWxQZweIlA==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="58711038"
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="58711038"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 07:29:29 -0700
X-CSE-ConnectionGUID: emiuuaYYTdOAQc3k8ld2Sw==
X-CSE-MsgGUID: +wzcBO0sR8O4NeZ8Np7T8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="136022167"
Received: from smile.fi.intel.com ([10.237.72.55])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 07:29:27 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1uD2FX-000000048QW-1SJc; Thu, 08 May 2025 17:29:23 +0300
Date: Thu, 8 May 2025 17:29:23 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Mark Pearson <mpearson-lenovo@squebb.ca>
Message-ID: <aBy_w42MapjiD6al@smile.fi.intel.com>
References: <mpearson-lenovo@squebb.ca>
 <20250507190456.3004367-1-mpearson-lenovo@squebb.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250507190456.3004367-1-mpearson-lenovo@squebb.ca>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -3.7 (---)
X-Spam-Report: Spam detection software, running on the system "6901ab67b84d", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, May 07, 2025 at 03:04:34PM -0400, Mark Pearson wrote:
 > Move all Lenovo specific files into their own sub-directory as part > of
 clean-up exercise. > Longer term goal is to break-up thinkpad_a [...] 
 Content analysis details:   (-3.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.175.65.11 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -1.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uD2Fh-0005Nb-Sg
Subject: Re: [ibm-acpi-devel] [PATCH 1/2] platform/x86: Move Lenovo files
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
 hdegoede@redhat.com, ilpo.jarvinen@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Wed, May 07, 2025 at 03:04:34PM -0400, Mark Pearson wrote:
> Move all Lenovo specific files into their own sub-directory as part
> of clean-up exercise.
> Longer term goal is to break-up thinkpad_acpi to improve maintainability
> and perhaps share more functionality with other non thinkpad Lenovo
> platforms.

...

> Some questions that I didn't want to put in the commit comment:
> 
>  - I didn't know if now was a good time to propose this change. I
>    realise it could cause headaches for anybody with patches being
>    worked on. Please let me know what makes it easiest for maintainers
>    and other developers. If there is a particular branch that would be
>    better to do this against also let me know.

For me Git handles renaming very well.

>  - Should I be updating the MAINTAINERS file? I'm still not sure what
>    the protocol there is. I'm very happy to help review anything in the
>    lenovo directory, but I didn't want to make assumptions.
>  - I have tested on multiple platforms but I don't have any ideapads I
>    can use.

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

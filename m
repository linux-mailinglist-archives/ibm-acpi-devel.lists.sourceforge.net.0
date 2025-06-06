Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E20AD085D
	for <lists+ibm-acpi-devel@lfdr.de>; Fri,  6 Jun 2025 20:58:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gGhMqv/yxK301vDByanOYf6ZNKO8KWHj2qMYAiqByfw=; b=de/NSFDykMGW2Y9gN3OsVEVoNk
	qBwwkr0CxyuA8MDCyaiConS7N2x9chatAIP1dd+QsFi43+gciA+HeQuxeTy8cy09tXvTp8ZW06+SY
	z88IHiRyKynqqmPWw5y0UbQ97lJWonKKfsEPX67sJ/rYIg/tUzmTuGCXO+4vrDktHTeE=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uNcFw-000778-SK;
	Fri, 06 Jun 2025 18:57:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1uNcFv-00076z-1E for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 06 Jun 2025 18:57:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZuckE09v7XdD9rWQAzoNWD3ZIaE1Fmj0GlKFXV1WBUE=; b=e/+IZ7q93kcoafO+jU0uT5mQwa
 FlHZelUJtqD+z0OHcd4GfSb7CLl1pRLYw/4kFO6Ft0t3E+jtXQwQ31bpas4eDgpjeztXQn8VHrf5y
 FXUmRxApmfrukvpjQnmIWbeaVkrd13JUP2Fh45///szjWRKRD6r1bftSSNQqTG488fDA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZuckE09v7XdD9rWQAzoNWD3ZIaE1Fmj0GlKFXV1WBUE=; b=SDi3g0/W5B5uGa/RSewgvpraGS
 IVjFN1Iv4jnqm5wd1C3N0qWNqk8nqVUJxAyaz11j43XHo2OXZWULGCOY6KxrRZ3LAZ+ltqfZ8ss8d
 mtn7ubSY/1y1W7DUDjs0PV0E1cuXIdwaASVU7SNHtB1t7z6aw69SAugwqjfeWqTZt1Fo=;
Received: from mgamail.intel.com ([192.198.163.9])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uNcFu-0002x5-ED for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 06 Jun 2025 18:57:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749236251; x=1780772251;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=b5AmpCo1kMui/WXfal3d4wLBANr1weUX6ZU1bk956tk=;
 b=fkphjmMiH1i18sbdRP0DMqC+I5iarpLmMlFbhZlT+tHXWvRNM4sVIRy6
 yhBSXB3bM7E5VcNXhx64K3THpYevUMFZxkozN/ruwAY/nyKA5uT3RMwOD
 LqsABLJeLohrzSlh6MvxWmYkwyqGFN/RLj/8QYGpBODKxQgUlQJTY5fCj
 94V7j+09N7DrJsUmRG4aUZbKP6FlnGlCJsA0SZIB1qtifv5cAB3RhCNO6
 hi628riGm/6wJeeZqDq3uNUja7hX04oMlIWQKxzn4ytGwmpMiLgDfy/K8
 apbNdagqQKgvXG891+dfVLJsmB2JaiyOv94ETOIAB/LYI8iIYCHhMlfUZ g==;
X-CSE-ConnectionGUID: Qo2YF069SF6UttSvaM/zLg==
X-CSE-MsgGUID: J0b1pOtxQoKoRWhR19t8bQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11456"; a="62053473"
X-IronPort-AV: E=Sophos;i="6.16,215,1744095600"; d="scan'208";a="62053473"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2025 11:57:25 -0700
X-CSE-ConnectionGUID: /W+N2OtEQr2YuJrYP4Vf9g==
X-CSE-MsgGUID: 7zWk+uBlTPm38LVnfrr8Fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,215,1744095600"; d="scan'208";a="176850699"
Received: from smile.fi.intel.com ([10.237.72.52])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2025 11:57:21 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1uNcFh-00000004HrB-1PO2; Fri, 06 Jun 2025 21:57:17 +0300
Date: Fri, 6 Jun 2025 21:57:17 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Mark Pearson <mpearson-lenovo@squebb.ca>
Message-ID: <aEM6Da6CZ0DI3x8w@smile.fi.intel.com>
References: <20250604173702.3025074-1-mpearson-lenovo@squebb.ca>
 <202506062319.F0IpDxF6-lkp@intel.com>
 <6d17454f-faac-4616-ac2e-7da80feedf2c@app.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6d17454f-faac-4616-ac2e-7da80feedf2c@app.fastmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jun 06, 2025 at 01:30:25PM -0400, Mark Pearson wrote:
 > On Fri, Jun 6, 2025, at 11:58 AM, kernel test robot wrote: > > Hi Mark,
 > > > > kernel test robot noticed the following build warnings: [...] 
 Content analysis details:   (-0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uNcFu-0002x5-ED
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
Cc: Armin Wolf <W_Armin@gmx.de>, kernel test robot <lkp@intel.com>,
 Jonathan Corbet <corbet@lwn.net>, ikepanhc@gmail.com,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>, oe-kbuild-all@lists.linux.dev,
 Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Fri, Jun 06, 2025 at 01:30:25PM -0400, Mark Pearson wrote:
> On Fri, Jun 6, 2025, at 11:58 AM, kernel test robot wrote:
> > Hi Mark,
> >
> > kernel test robot noticed the following build warnings:
> >
> > [auto build test WARNING on linus/master]
> > [also build test WARNING on next-20250606]
> > [cannot apply to v6.15]
> > [If your patch is applied to the wrong git tree, kindly drop us a note.
> > And when submitting patch, we suggest to use '--base' as documented in
> > https://git-scm.com/docs/git-format-patch#_base_tree_information]
> >
> > url:    
> > https://github.com/intel-lab-lkp/linux/commits/Mark-Pearson/platform-x86-Move-Lenovo-files-into-lenovo-subdir/20250605-013934
> > base:   linus/master
> > patch link:    
> > https://lore.kernel.org/r/20250604173702.3025074-1-mpearson-lenovo%40squebb.ca
> > patch subject: [PATCH v2] platform/x86: Move Lenovo files into lenovo 
> > subdir
> > config: x86_64-randconfig-078-20250606 
> > (https://download.01.org/0day-ci/archive/20250606/202506062319.F0IpDxF6-lkp@intel.com/config)
> > compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
> > reproduce (this is a W=1 build): 
> > (https://download.01.org/0day-ci/archive/20250606/202506062319.F0IpDxF6-lkp@intel.com/reproduce)
> >
> > If you fix the issue in a separate patch/commit (i.e. not just a new 
> > version of
> > the same patch/commit), kindly add following tags
> > | Reported-by: kernel test robot <lkp@intel.com>
> > | Closes: 
> > https://lore.kernel.org/oe-kbuild-all/202506062319.F0IpDxF6-lkp@intel.com/
> >
> > All warnings (new ones prefixed by >>):
> >
> >    drivers/platform/x86/lenovo/think-lmi.c: In function 'certificate_store':
> >>> drivers/platform/x86/lenovo/think-lmi.c:661:47: warning: '%s' directive argument is null [-Wformat-overflow=]
> >      661 |                 return kasprintf(GFP_KERNEL, "%s,%s", arg1, 
> > arg2);
> >          |                                               ^~
> >    drivers/platform/x86/lenovo/think-lmi.c:657:50: warning: '%s' 
> > directive argument is null [-Wformat-overflow=]
> >      657 |                 return kasprintf(GFP_KERNEL, "%s,%s,%s",
> >          |                                                  ^~
> >
> >
> > vim +661 drivers/platform/x86/lenovo/think-lmi.c
> >
> > 640a5fa50a42b9 drivers/platform/x86/think-lmi.c Mark Pearson 2021-11-17 
> >  652  
> > 5dcb5ef125907d drivers/platform/x86/think-lmi.c Mark Pearson 2024-10-24 
> >  653  static char *cert_command(struct tlmi_pwd_setting *setting, const 
> > char *arg1, const char *arg2)
> > 5dcb5ef125907d drivers/platform/x86/think-lmi.c Mark Pearson 2024-10-24 
> >  654  {
> > 5dcb5ef125907d drivers/platform/x86/think-lmi.c Mark Pearson 2024-10-24 
> >  655  	/* Prepend with SVC or SMC if multicert supported */
> > 5dcb5ef125907d drivers/platform/x86/think-lmi.c Mark Pearson 2024-10-24 
> >  656  	if (tlmi_priv.pwdcfg.core.password_mode >= 
> > TLMI_PWDCFG_MODE_MULTICERT)
> > 5dcb5ef125907d drivers/platform/x86/think-lmi.c Mark Pearson 2024-10-24 
> >  657  		return kasprintf(GFP_KERNEL, "%s,%s,%s",
> > 5dcb5ef125907d drivers/platform/x86/think-lmi.c Mark Pearson 2024-10-24 
> >  658  				 setting == tlmi_priv.pwd_admin ? "SVC" : "SMC",
> > 5dcb5ef125907d drivers/platform/x86/think-lmi.c Mark Pearson 2024-10-24 
> >  659  				 arg1, arg2);
> > 5dcb5ef125907d drivers/platform/x86/think-lmi.c Mark Pearson 2024-10-24 
> >  660  	else
> > 5dcb5ef125907d drivers/platform/x86/think-lmi.c Mark Pearson 2024-10-24 
> > @661  		return kasprintf(GFP_KERNEL, "%s,%s", arg1, arg2);
> > 5dcb5ef125907d drivers/platform/x86/think-lmi.c Mark Pearson 2024-10-24 
> >  662  }
> > 5dcb5ef125907d drivers/platform/x86/think-lmi.c Mark Pearson 2024-10-24 
> >  663  
> >
> > -- 
> > 0-DAY CI Kernel Test Service
> > https://github.com/intel/lkp-tests/wiki
> 
> I'm unable to reproduce this issue with a W=1 build

Do you have GCC-12?

> and I think it's a false positive.

I think the problematic line is in certificate_store().
You need to check the value of dmi_get_system_info().
Or make sure the DMI is always selected (depend on DMI
in Kconfig, perhaps).

> Am I safe to ignore this report?

Please, try to fix it.

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

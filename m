Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FE4AD0652
	for <lists+ibm-acpi-devel@lfdr.de>; Fri,  6 Jun 2025 17:59:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M0XETaJWmJmRpNE2pApUTBRC6kqjcil/cLHFZUeo0+E=; b=iHdSCUIV3VQHOWujADs9v/SCxh
	5IjaIsAlimFjLvKNU996CvEakI61YSCyQIoZS5E1bvqa+yKTgxPHtn8Tvs7dFkTfSrhc6fnn7qhcF
	mtg7BMe8xrIjGM7oe1yv4LoKOLqUw+7HOP5+bh1OWG6TkEgstajO5Ffmxk1gXYhnjHME=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uNZTR-0001nl-Ak;
	Fri, 06 Jun 2025 15:59:17 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1uNZTQ-0001nW-5T
 for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 06 Jun 2025 15:59:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FDnY69fXgT45Ro06J6oE8xzeGsqDmcMnpSuiRUeMCrk=; b=XFJOA07SYiwpeTRVynkybN6IV8
 Fp0BS+txLAnLcKhgQLqdswy29iKasxVYzDML8q1YaNuHdnbEYHYNWB2DDAoonA0SjJ5bIlXF+JVHc
 7/dwv0ze6T5ZwZqcmtkG0MOoBreOrjonLtU5IWLhsLeuYpe065Zaqird/CSZSOtJALo0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FDnY69fXgT45Ro06J6oE8xzeGsqDmcMnpSuiRUeMCrk=; b=SfAvqF6bGrUeTQri4ic1noxV+c
 8XDC7QqG+3JQXQHRzgaTHa7KxQJpHe+XLV9FAM5RCchf3upvRpEc96mt5E2mK4LTsYsjGPGIBdHhH
 FNNm+zGZLilSNWDrWeZfBRgMCAYJF3QmYrCNeySUXvmtxdowATgb25AeMud5vvSsuuzM=;
Received: from mgamail.intel.com ([198.175.65.18])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uNZTP-00024o-Eh for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 06 Jun 2025 15:59:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749225555; x=1780761555;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=DqILrp7MAmIHBHpVhQPDe90I9D1u0u26u1bnK5dDg38=;
 b=UjJei3F9/rXjxpCshmOzRzatlYCOUf7zilPxgSCiYlmdebcOdkaWaRh2
 1BRC5fUdGRbZBBy3SJjD+WTGA6aDCsIvl5AbJ7iRCSOaYOWjDexyPLT3W
 2bVs2JTupSKxPXHpFkL+J5VubfcoSkf4K4EJUprIIEKVhx9nXRIz1I32q
 Vz4OM/aLu0A12yatFIC+XS99pH8R2JLYrOGuOP+VP3PXSg+dGIpRl4UdB
 6nK2c2bb46NCdOIL63ZaQFk5beBhUED6ca61fnXoTce4sxzKLX9RO/xzg
 Xxp5f6KbMM5MiNF/phJFo39t+MMTdMZ5ChlLgBld1ut9812bIdz0HnwLQ A==;
X-CSE-ConnectionGUID: lMa9aE0eTAiR/N8KxtHJiw==
X-CSE-MsgGUID: Ujd1tG7QRVakdmBvqweZcA==
X-IronPort-AV: E=McAfee;i="6800,10657,11456"; a="51525634"
X-IronPort-AV: E=Sophos;i="6.16,215,1744095600"; d="scan'208";a="51525634"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2025 08:59:04 -0700
X-CSE-ConnectionGUID: oZVF5Z4hQXmdJLGOaHW+Wg==
X-CSE-MsgGUID: AjXvMA79Q3u8y2LSr675og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,215,1744095600"; d="scan'208";a="151020215"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by fmviesa004.fm.intel.com with ESMTP; 06 Jun 2025 08:59:01 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uNZT9-00055V-0u;
 Fri, 06 Jun 2025 15:58:59 +0000
Date: Fri, 6 Jun 2025 23:58:50 +0800
From: kernel test robot <lkp@intel.com>
To: Mark Pearson <mpearson-lenovo@squebb.ca>
Message-ID: <202506062319.F0IpDxF6-lkp@intel.com>
References: <20250604173702.3025074-1-mpearson-lenovo@squebb.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250604173702.3025074-1-mpearson-lenovo@squebb.ca>
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Mark,
 kernel test robot noticed the following build warnings:
 [auto build test WARNING on linus/master] [also build test WARNING on
 next-20250606]
 [cannot apply to v6.15] [If your patch is applied to the wrong git tree,
 kindly drop us a note. And when submitting [...] 
 Content analysis details:   (-0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uNZTP-00024o-Eh
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
 oe-kbuild-all@lists.linux.dev, ilpo.jarvinen@linux.intel.com,
 andriy.shevchenko@linux.intel.com, ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Mark,

kernel test robot noticed the following build warnings:

[auto build test WARNING on linus/master]
[also build test WARNING on next-20250606]
[cannot apply to v6.15]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Mark-Pearson/platform-x86-Move-Lenovo-files-into-lenovo-subdir/20250605-013934
base:   linus/master
patch link:    https://lore.kernel.org/r/20250604173702.3025074-1-mpearson-lenovo%40squebb.ca
patch subject: [PATCH v2] platform/x86: Move Lenovo files into lenovo subdir
config: x86_64-randconfig-078-20250606 (https://download.01.org/0day-ci/archive/20250606/202506062319.F0IpDxF6-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250606/202506062319.F0IpDxF6-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202506062319.F0IpDxF6-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/platform/x86/lenovo/think-lmi.c: In function 'certificate_store':
>> drivers/platform/x86/lenovo/think-lmi.c:661:47: warning: '%s' directive argument is null [-Wformat-overflow=]
     661 |                 return kasprintf(GFP_KERNEL, "%s,%s", arg1, arg2);
         |                                               ^~
   drivers/platform/x86/lenovo/think-lmi.c:657:50: warning: '%s' directive argument is null [-Wformat-overflow=]
     657 |                 return kasprintf(GFP_KERNEL, "%s,%s,%s",
         |                                                  ^~


vim +661 drivers/platform/x86/lenovo/think-lmi.c

640a5fa50a42b9 drivers/platform/x86/think-lmi.c Mark Pearson 2021-11-17  652  
5dcb5ef125907d drivers/platform/x86/think-lmi.c Mark Pearson 2024-10-24  653  static char *cert_command(struct tlmi_pwd_setting *setting, const char *arg1, const char *arg2)
5dcb5ef125907d drivers/platform/x86/think-lmi.c Mark Pearson 2024-10-24  654  {
5dcb5ef125907d drivers/platform/x86/think-lmi.c Mark Pearson 2024-10-24  655  	/* Prepend with SVC or SMC if multicert supported */
5dcb5ef125907d drivers/platform/x86/think-lmi.c Mark Pearson 2024-10-24  656  	if (tlmi_priv.pwdcfg.core.password_mode >= TLMI_PWDCFG_MODE_MULTICERT)
5dcb5ef125907d drivers/platform/x86/think-lmi.c Mark Pearson 2024-10-24  657  		return kasprintf(GFP_KERNEL, "%s,%s,%s",
5dcb5ef125907d drivers/platform/x86/think-lmi.c Mark Pearson 2024-10-24  658  				 setting == tlmi_priv.pwd_admin ? "SVC" : "SMC",
5dcb5ef125907d drivers/platform/x86/think-lmi.c Mark Pearson 2024-10-24  659  				 arg1, arg2);
5dcb5ef125907d drivers/platform/x86/think-lmi.c Mark Pearson 2024-10-24  660  	else
5dcb5ef125907d drivers/platform/x86/think-lmi.c Mark Pearson 2024-10-24 @661  		return kasprintf(GFP_KERNEL, "%s,%s", arg1, arg2);
5dcb5ef125907d drivers/platform/x86/think-lmi.c Mark Pearson 2024-10-24  662  }
5dcb5ef125907d drivers/platform/x86/think-lmi.c Mark Pearson 2024-10-24  663  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

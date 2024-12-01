Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D909DF477
	for <lists+ibm-acpi-devel@lfdr.de>; Sun,  1 Dec 2024 03:56:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1tHa8C-00085n-Ae;
	Sun, 01 Dec 2024 02:56:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1tHa8B-00085d-4t
 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 01 Dec 2024 02:56:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XF6ngkZz6sAd7VAKaHjebQE5jS8pAI06Z3CfbCNnobw=; b=NY4M3nt6EqzApEbHBg9oypk+qJ
 S3/hs6jWUtHVL6mg+UMb4SoFuydAaztzjY8dF3zK4RjUHCaZ26ibSSNi/byJn9jjJz7saEwRdUm4W
 35Dz+P7hudlEUmuYm0P49PRjIhQeAx8RL9iTGcmJWFRHcHO7fApNymQyzzhLSqhxOeaI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XF6ngkZz6sAd7VAKaHjebQE5jS8pAI06Z3CfbCNnobw=; b=nJ4gEgOplbsySX24FfnHzMr/KS
 BPiOV7z+FmKc3E6UiYxw387w06qiqEtuBP84IQu8+Ky2MxbnotvGKgHVKgZH7OTucqVPFVGzqKVfN
 vOFxld8eq9ym+DxxlWkhwmN5Lyj6BYjpkTa4L6cJ3BLwbO4KWYXBiO/SsKY+C+Hwu85Y=;
Received: from mgamail.intel.com ([198.175.65.13])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tHa87-0008OY-T7 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 01 Dec 2024 02:56:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733021776; x=1764557776;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=2MDLGdtixIr+eogn07QqelKmKPJW7oyKKYZK2ByJj5Y=;
 b=YX0cVn2VAxr6dmhh3qxEctqFjtuaJgvGLfeR/DuF5Ea9G+qNUZ3PksJ7
 IHZ6+uwEO8GcVazMyIHreOwAYnw/UValR0QNCqK5X5Ecnig8KiLNfJsTp
 dSxbnTq+aJbqxF+PaxovguBZe+lTahQ4kw+oz4E0d2mJOg0N0ZD8aRwls
 DHtbUWox9vxaKgHefaRIdVYSFREyAjVNMitE5g29pjZ5+bGE2qKzg9Y39
 0/da9Eh3gSIUlfUnhh9WnSWlde9FQKAJjnbK93WT9tVyskjRqQI29UADA
 9iIJIfAjXiMMjrPw9lceo5spftjzdh14ke4m0BLf/VwgrnXbY90Gtpvrb Q==;
X-CSE-ConnectionGUID: /lUVDUphTkq94F4r0nIXuQ==
X-CSE-MsgGUID: tqGM5vhFQ2KEIet8DL4T8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11272"; a="44248028"
X-IronPort-AV: E=Sophos;i="6.12,199,1728975600"; d="scan'208";a="44248028"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2024 18:56:04 -0800
X-CSE-ConnectionGUID: awvlkQ0XQouCl51C2mZQ+w==
X-CSE-MsgGUID: NoGx+l5vQ26mWR/7dI8L2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,199,1728975600"; d="scan'208";a="97890037"
Received: from lkp-server02.sh.intel.com (HELO 36a1563c48ff) ([10.239.97.151])
 by orviesa004.jf.intel.com with ESMTP; 30 Nov 2024 18:55:59 -0800
Received: from kbuild by 36a1563c48ff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tHa7o-0001An-2a;
 Sun, 01 Dec 2024 02:55:56 +0000
Date: Sun, 1 Dec 2024 10:55:19 +0800
From: kernel test robot <lkp@intel.com>
To: Mario Limonciello <mario.limonciello@amd.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Ilpo =?unknown-8bit?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>
Message-ID: <202412011002.Hb0aRIsM-lkp@intel.com>
References: <20241130140454.455-3-mario.limonciello@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241130140454.455-3-mario.limonciello@amd.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Mario,
 kernel test robot noticed the following build warnings:
 [auto build test WARNING on 2ba9f676d0a2e408aef14d679984c26373bf37b7] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [198.175.65.13 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [198.175.65.13 listed in bl.score.senderscore.com]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.175.65.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tHa87-0008OY-T7
Subject: Re: [ibm-acpi-devel] [PATCH v8 02/22] platform/x86/dell: dell-pc:
 Create platform device
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
Cc: Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 "open list:MICROSOFT SURFACE PLATFORM PROFILE DRIVER"
 <platform-driver-x86@vger.kernel.org>,
 "open list:THINKPAD ACPI EXTRAS DRIVER" <ibm-acpi-devel@lists.sourceforge.net>,
 Mario Limonciello <mario.limonciello@amd.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Mark Pearson <mpearson-lenovo@squebb.ca>, Ike Panhc <ike.pan@canonical.com>,
 Alexis Belmonte <alexbelm48@gmail.com>, "Luke D . Jones" <luke@ljones.dev>,
 Ai Chao <aichao@kylinos.cn>, "open list:ACPI" <linux-acpi@vger.kernel.org>,
 Uwe =?unknown-8bit?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Gergo Koteles <soyer@irl.hu>, Len Brown <lenb@kernel.org>,
 Lee Chun-Yi <jlee@suse.com>, oe-kbuild-all@lists.linux.dev,
 Armin Wolf <W_Armin@gmx.de>, open list <linux-kernel@vger.kernel.org>,
 Matthew Schwartz <matthew.schwartz@linux.dev>,
 Corentin Chary <corentin.chary@gmail.com>,
 Maximilian Luz <luzmaximilian@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Mario,

kernel test robot noticed the following build warnings:

[auto build test WARNING on 2ba9f676d0a2e408aef14d679984c26373bf37b7]

url:    https://github.com/intel-lab-lkp/linux/commits/Mario-Limonciello/ACPI-platform-profile-Add-a-name-member-to-handlers/20241130-221102
base:   2ba9f676d0a2e408aef14d679984c26373bf37b7
patch link:    https://lore.kernel.org/r/20241130140454.455-3-mario.limonciello%40amd.com
patch subject: [PATCH v8 02/22] platform/x86/dell: dell-pc: Create platform device
config: x86_64-randconfig-121-20241201 (https://download.01.org/0day-ci/archive/20241201/202412011002.Hb0aRIsM-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241201/202412011002.Hb0aRIsM-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202412011002.Hb0aRIsM-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/platform/x86/dell/dell-pc.c:252:32: sparse: sparse: incorrect type in argument 1 (different base types) @@     expected long error @@     got struct platform_device *static [assigned] [toplevel] platform_device @@
   drivers/platform/x86/dell/dell-pc.c:252:32: sparse:     expected long error
   drivers/platform/x86/dell/dell-pc.c:252:32: sparse:     got struct platform_device *static [assigned] [toplevel] platform_device
>> drivers/platform/x86/dell/dell-pc.c:252:31: sparse: sparse: incorrect type in return expression (different base types) @@     expected int @@     got void * @@
   drivers/platform/x86/dell/dell-pc.c:252:31: sparse:     expected int
   drivers/platform/x86/dell/dell-pc.c:252:31: sparse:     got void *

vim +252 drivers/platform/x86/dell/dell-pc.c

   233	
   234	static int thermal_init(void)
   235	{
   236		int ret;
   237		int supported_modes;
   238	
   239		/* If thermal commands are not supported, exit without error */
   240		if (!dell_smbios_class_is_supported(CLASS_INFO))
   241			return 0;
   242	
   243		/* If thermal modes are not supported, exit without error */
   244		ret = thermal_get_supported_modes(&supported_modes);
   245		if (ret < 0)
   246			return ret;
   247		if (!supported_modes)
   248			return 0;
   249	
   250		platform_device = platform_device_register_simple("dell-pc", PLATFORM_DEVID_NONE, NULL, 0);
   251		if (IS_ERR(platform_device))
 > 252			return ERR_PTR(platform_device);
   253	
   254		thermal_handler = devm_kzalloc(&platform_device->dev, sizeof(*thermal_handler), GFP_KERNEL);
   255		if (!thermal_handler) {
   256			ret = -ENOMEM;
   257			goto cleanup_platform_device;
   258		}
   259		thermal_handler->name = "dell-pc";
   260		thermal_handler->profile_get = thermal_platform_profile_get;
   261		thermal_handler->profile_set = thermal_platform_profile_set;
   262	
   263		if (supported_modes & DELL_QUIET)
   264			set_bit(PLATFORM_PROFILE_QUIET, thermal_handler->choices);
   265		if (supported_modes & DELL_COOL_BOTTOM)
   266			set_bit(PLATFORM_PROFILE_COOL, thermal_handler->choices);
   267		if (supported_modes & DELL_BALANCED)
   268			set_bit(PLATFORM_PROFILE_BALANCED, thermal_handler->choices);
   269		if (supported_modes & DELL_PERFORMANCE)
   270			set_bit(PLATFORM_PROFILE_PERFORMANCE, thermal_handler->choices);
   271	
   272		/* Clean up if failed */
   273		ret = platform_profile_register(thermal_handler);
   274		if (ret)
   275			goto cleanup_thermal_handler;
   276	
   277		return 0;
   278	
   279	cleanup_thermal_handler:
   280		thermal_handler = NULL;
   281	
   282	cleanup_platform_device:
   283		platform_device_unregister(platform_device);
   284	
   285		return ret;
   286	}
   287	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

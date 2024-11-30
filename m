Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB9CC9DF25D
	for <lists+ibm-acpi-devel@lfdr.de>; Sat, 30 Nov 2024 18:44:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1tHRVA-0001Tc-F3;
	Sat, 30 Nov 2024 17:43:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1tHRV9-0001TV-8S
 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 30 Nov 2024 17:43:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fg0B4vbR/1M1Gn2UpjtBNPaamQkZ6zChQFgCQOZJ2M0=; b=IRiUIPGcPwzymBJSc9FGi0W+iR
 wwW69chhhSvK1NUXUZuWcWmH3OmxJytqXYrobq13INjbAYX2gZASGTeJkypO9JDSs79vpc1psorNp
 lvxKyFOUA5SRhOw/8890p7e+dNCUAz836h9YlKF7IBI/uQFXzN+bsbBXPxfdYEhdeMVY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fg0B4vbR/1M1Gn2UpjtBNPaamQkZ6zChQFgCQOZJ2M0=; b=HaTM3tx8M6ZMJW5eduE5APvn0g
 XLvwu0EnHsEJgHLFVm+6qdX2DZyyrjp+14NdcY968bUvpNcDlwPkx8hpkOJwUeIAYV0+HCEF0QsPO
 GUsAja3EDv01D9UEql5b+RZ0Lnlg4qzGG9fMmB0F6JfwTMug1aBhFppeTqv2Qd+39ZwQ=;
Received: from mgamail.intel.com ([192.198.163.15])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tHRV5-0002jt-Ve for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 30 Nov 2024 17:43:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732988604; x=1764524604;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=hp79E4kQ26QL67QnIKLFTCKPhH95s/jPskxdhk6jR3A=;
 b=mjTBT4RYBFdegNHm+5RPHqnm8PQBjoiDyxp+oZnB6QryVvl4MKUhWwk2
 +UyrerOq2jmiuH8VNWSa0PXQqQalUypgbbtf555axQRn1iQNkUszv/6nm
 AjzYnnmkG51n9fBqwVe7VwpCUTXLJ6hNo1bmN26W6JS740IDPh3ofRl2x
 vq2RwuJHaUWD2Lbxy+YD/+3W52O11GWgC4+U67f1+UcFurw9Es/r0K8Zd
 J/xxrvh9OXwIs/hyIdUVlTzsLU1x/a+gukIqesnOfpTAg5/ImxL0QC+zJ
 HW3KBYGY2JvQOGIZLj68Iya2F3wg8RUwbG+X1Tx1ch2vGtUogP0astBVj A==;
X-CSE-ConnectionGUID: 7Gmx0i8jRsa3fX4XLQjcBw==
X-CSE-MsgGUID: jQWRO2TPTyi+4KHC/fvVEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11272"; a="33319828"
X-IronPort-AV: E=Sophos;i="6.12,198,1728975600"; d="scan'208";a="33319828"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2024 09:43:18 -0800
X-CSE-ConnectionGUID: STfJSgtMSQuLn6aITruuUg==
X-CSE-MsgGUID: 9i8jZTqRS2GKg5alYFu95w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,198,1728975600"; d="scan'208";a="93546463"
Received: from lkp-server02.sh.intel.com (HELO 36a1563c48ff) ([10.239.97.151])
 by orviesa008.jf.intel.com with ESMTP; 30 Nov 2024 09:43:12 -0800
Received: from kbuild by 36a1563c48ff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tHRUs-0000s3-29;
 Sat, 30 Nov 2024 17:43:10 +0000
Date: Sun, 1 Dec 2024 01:42:47 +0800
From: kernel test robot <lkp@intel.com>
To: Mario Limonciello <mario.limonciello@amd.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Ilpo =?unknown-8bit?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>
Message-ID: <202412010129.zSeGQmOm-lkp@intel.com>
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
 [192.198.163.15 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [192.198.163.15 listed in bl.score.senderscore.com]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.198.163.15 listed in list.dnswl.org]
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
X-Headers-End: 1tHRV5-0002jt-Ve
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
config: i386-buildonly-randconfig-003-20241130 (https://download.01.org/0day-ci/archive/20241201/202412010129.zSeGQmOm-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241201/202412010129.zSeGQmOm-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202412010129.zSeGQmOm-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/platform/x86/dell/dell-pc.c: In function 'thermal_init':
>> drivers/platform/x86/dell/dell-pc.c:252:32: warning: passing argument 1 of 'ERR_PTR' makes integer from pointer without a cast [-Wint-conversion]
     252 |                 return ERR_PTR(platform_device);
         |                                ^~~~~~~~~~~~~~~
         |                                |
         |                                struct platform_device *
   In file included from include/linux/kernfs.h:9,
                    from include/linux/sysfs.h:16,
                    from include/linux/kobject.h:20,
                    from include/linux/dmi.h:6,
                    from drivers/platform/x86/dell/dell-pc.c:15:
   include/linux/err.h:39:48: note: expected 'long int' but argument is of type 'struct platform_device *'
      39 | static inline void * __must_check ERR_PTR(long error)
         |                                           ~~~~~^~~~~
>> drivers/platform/x86/dell/dell-pc.c:252:24: warning: returning 'void *' from a function with return type 'int' makes integer from pointer without a cast [-Wint-conversion]
     252 |                 return ERR_PTR(platform_device);
         |                        ^~~~~~~~~~~~~~~~~~~~~~~~


vim +/ERR_PTR +252 drivers/platform/x86/dell/dell-pc.c

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

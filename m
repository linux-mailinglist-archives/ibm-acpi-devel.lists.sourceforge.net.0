Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 389F99B9313
	for <lists+ibm-acpi-devel@lfdr.de>; Fri,  1 Nov 2024 15:24:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1t6sZK-0001PO-QN;
	Fri, 01 Nov 2024 14:24:06 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1t6sZJ-0001PI-Ge
 for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 01 Nov 2024 14:24:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=acMdXA9VcWE2KnK4J8RSPi2/0d/vuWZneSOXsuZciRI=; b=cR56+OBw+YZixKpJF0BO4xpoiq
 FMT3pxrssjRV8vE4bKL9HE5XGypBSDYRo5vKuMOCs6kQRGLATyQIp59zMwNCMtZxu9xsd9F3caA3c
 lFOgyJmfya2cYfDtyUpeuCOAS/6ohHAkwiJQ99d5C0fsrpHmSTyOR7ySQWT5IHBE+HQk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=acMdXA9VcWE2KnK4J8RSPi2/0d/vuWZneSOXsuZciRI=; b=T8qqj+1j6OfBDoX/1VrJS64xJh
 lGEWM5cP/PmOjg7Z3Iy8imZiQrrFuhiw4PkozsKH8nYOvURo5bDSJdVt7VIyr+J1VdlKPjjifa2Ya
 Y//bNRhVI1A4MckRvrNxvj1JfO0zcTGmGkMa5U5rGeqFwNrQ1plgyxHlzMRWHTuskFKg=;
Received: from mgamail.intel.com ([198.175.65.13])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t6sZF-0006rv-4r for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 01 Nov 2024 14:24:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730471041; x=1762007041;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=OXDMAqh2nLfuHgCU8Sscde62QdU4PrQcAwb72r1rD80=;
 b=aetUC6JEWzLqIOPWENfnhq7YvMSJXzpNYx+F8VxRCXpKsdth6OMHfyQW
 V6FZHx0x0lf3ZWYllg8u5iD+tkDMnMgONMtjUCq8eoNSb2y68DizNE5Lq
 +4D3VBeX/ntRR0SGSu8vqNuAcbgWscXSW295VsqVUoBrwFnyLcvRPJr4z
 SkXBrxjmZQAp2wa2GDE1C7HxXEQdomVU0akueVuT7xxA2MAilwYI2Xn9C
 1i5QDQhrBAd7dhlu8CvywAkPHFWL28xMfIu60GZ0swBxOjEldqIbrVOCj
 8joVd4I9OPF9Jn6dm6f8AvK3u1ID0cUGL0Q5poflq9s8wmMiM9jtB1Qw6 w==;
X-CSE-ConnectionGUID: 5c5z35CKQ9CxYoP+eGK0Rg==
X-CSE-MsgGUID: gom8WDxZRMeSeJJaz/B3XQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="41337045"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="41337045"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2024 07:23:50 -0700
X-CSE-ConnectionGUID: imwns5Y0QGea1ZlKb1YZtA==
X-CSE-MsgGUID: WV7WXGAMRJiX01/aCBZLeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,250,1725346800"; d="scan'208";a="87516207"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 01 Nov 2024 07:23:42 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t6sYt-000hdV-1s;
 Fri, 01 Nov 2024 14:23:39 +0000
Date: Fri, 1 Nov 2024 22:22:47 +0800
From: kernel test robot <lkp@intel.com>
To: Mario Limonciello <mario.limonciello@amd.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>
Message-ID: <202411012227.46a4WcxB-lkp@intel.com>
References: <20241031040952.109057-21-mario.limonciello@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241031040952.109057-21-mario.limonciello@amd.com>
X-Spam-Score: -2.8 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Mario,
 kernel test robot noticed the following build errors:
 [auto build test ERROR on rafael-pm/linux-next] [also build test ERROR on
 rafael-pm/bleeding-edge linus/master v6.12-rc5 next-20241101] [If your patch
 is applied to the wrong git tree, kindly drop us [...] 
 Content analysis details:   (-2.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [198.175.65.13 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.175.65.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1t6sZF-0006rv-4r
Subject: Re: [ibm-acpi-devel] [PATCH v3 20/22] ACPI: platform_profile:
 Register class device for platform profile handlers
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
 "Rafael J . Wysocki" <rafael@kernel.org>, llvm@lists.linux.dev,
 "open list:MICROSOFT SURFACE PLATFORM PROFILE DRIVER"
 <platform-driver-x86@vger.kernel.org>,
 "open list:THINKPAD ACPI EXTRAS DRIVER" <ibm-acpi-devel@lists.sourceforge.net>,
 Mario Limonciello <mario.limonciello@amd.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Mark Pearson <mpearson-lenovo@squebb.ca>, Ike Panhc <ike.pan@canonical.com>,
 Alexis Belmonte <alexbelm48@gmail.com>, "Luke D . Jones" <luke@ljones.dev>,
 Ai Chao <aichao@kylinos.cn>, "open list:ACPI" <linux-acpi@vger.kernel.org>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Gergo Koteles <soyer@irl.hu>, Len Brown <lenb@kernel.org>,
 Lee Chun-Yi <jlee@suse.com>, oe-kbuild-all@lists.linux.dev,
 open list <linux-kernel@vger.kernel.org>,
 Matthew Schwartz <matthew.schwartz@linux.dev>,
 Corentin Chary <corentin.chary@gmail.com>,
 Maximilian Luz <luzmaximilian@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Mario,

kernel test robot noticed the following build errors:

[auto build test ERROR on rafael-pm/linux-next]
[also build test ERROR on rafael-pm/bleeding-edge linus/master v6.12-rc5 next-20241101]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Mario-Limonciello/ACPI-platform-profile-Add-a-name-member-to-handlers/20241031-121650
base:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git linux-next
patch link:    https://lore.kernel.org/r/20241031040952.109057-21-mario.limonciello%40amd.com
patch subject: [PATCH v3 20/22] ACPI: platform_profile: Register class device for platform profile handlers
config: i386-buildonly-randconfig-005-20241101 (https://download.01.org/0day-ci/archive/20241101/202411012227.46a4WcxB-lkp@intel.com/config)
compiler: clang version 19.1.3 (https://github.com/llvm/llvm-project ab51eccf88f5321e7c60591c5546b254b6afab99)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241101/202411012227.46a4WcxB-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202411012227.46a4WcxB-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/acpi/platform_profile.c:303:7: error: call to undeclared function 'MKDEV'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     303 |                                          MKDEV(0, pprof->minor), NULL, "platform-profile-%s",
         |                                          ^
   drivers/acpi/platform_profile.c:344:42: error: call to undeclared function 'MKDEV'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     344 |         device_destroy(&platform_profile_class, MKDEV(0, pprof->minor));
         |                                                 ^
   2 errors generated.


vim +/MKDEV +303 drivers/acpi/platform_profile.c

   261	
   262	int platform_profile_register(struct platform_profile_handler *pprof)
   263	{
   264		bool registered;
   265		int err;
   266	
   267		/* Sanity check the profile handler */
   268		if (!pprof || bitmap_empty(pprof->choices, PLATFORM_PROFILE_LAST) ||
   269		    !pprof->profile_set || !pprof->profile_get) {
   270			pr_err("platform_profile: handler is invalid\n");
   271			return -EINVAL;
   272		}
   273		if (!test_bit(PLATFORM_PROFILE_BALANCED, pprof->choices)) {
   274			pr_err("platform_profile: handler does not support balanced profile\n");
   275			return -EINVAL;
   276		}
   277		if (!pprof->dev) {
   278			pr_err("platform_profile: handler device is not set\n");
   279			return -EINVAL;
   280		}
   281	
   282		guard(mutex)(&profile_lock);
   283		/* We can only have one active profile */
   284		if (cur_profile)
   285			return -EEXIST;
   286	
   287		registered = platform_profile_is_registered();
   288		if (!registered) {
   289			/* class for individual handlers */
   290			err = class_register(&platform_profile_class);
   291			if (err)
   292				return err;
   293			/* legacy sysfs files */
   294			err = sysfs_create_group(acpi_kobj, &platform_profile_group);
   295			if (err)
   296				goto cleanup_class;
   297	
   298		}
   299	
   300		/* create class interface for individual handler */
   301		pprof->minor = idr_alloc(&platform_profile_minor_idr, pprof, 0, 0, GFP_KERNEL);
   302		pprof->class_dev = device_create(&platform_profile_class, pprof->dev,
 > 303						 MKDEV(0, pprof->minor), NULL, "platform-profile-%s",
   304						 pprof->name);
   305		if (IS_ERR(pprof->class_dev)) {
   306			err = PTR_ERR(pprof->class_dev);
   307			goto cleanup_legacy;
   308		}
   309		err = sysfs_create_group(&pprof->class_dev->kobj, &platform_profile_group);
   310		if (err)
   311			goto cleanup_device;
   312	
   313		list_add_tail(&pprof->list, &platform_profile_handler_list);
   314		sysfs_notify(acpi_kobj, NULL, "platform_profile");
   315	
   316		cur_profile = pprof;
   317		return 0;
   318	
   319	cleanup_device:
   320		device_destroy(&platform_profile_class, MKDEV(0, pprof->minor));
   321	
   322	cleanup_legacy:
   323		if (!registered)
   324			sysfs_remove_group(acpi_kobj, &platform_profile_group);
   325	cleanup_class:
   326		if (!registered)
   327			class_unregister(&platform_profile_class);
   328	
   329		return err;
   330	}
   331	EXPORT_SYMBOL_GPL(platform_profile_register);
   332	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

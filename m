Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0FC9BDAF6
	for <lists+ibm-acpi-devel@lfdr.de>; Wed,  6 Nov 2024 02:10:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1t8UYv-0007eZ-D3;
	Wed, 06 Nov 2024 01:10:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1t8UYp-0007dw-At
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 06 Nov 2024 01:10:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=grFBD2PZmn36LNfL/C4nJaglAs/MHfW4kUVNnHKibwg=; b=PKIcrgVeBUjJlhokdtmMqD0Xul
 Eb7TsVnHgCByXBVyxGDAywD1+ZwwEv5j+ceYVimansJtIgBSo5EHHfvw2EusPVOvXLxJu3ok7MP0V
 2BJY9cOS8tLRyOc9zyXvY6haHE2YNza+vaTmfWtXtHnon/orqPOzHvyLSOgXzyBl1Ybs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=grFBD2PZmn36LNfL/C4nJaglAs/MHfW4kUVNnHKibwg=; b=L2m7bp39hW6MF4MbAoCbqlCTNa
 gwgCcYw2KqJRQ28wr8xa8RrfBkuCDyobVO7GuwXcIfmjpi06Pp4T7EAYfAyXAmx3Y9dReweRqDXeX
 Yu3KXjKT+IDt3ZHJYbanYWNhmpHspslL8tARHGHuxV+sW0ecdK7PPNOU9x5puKOMs7c8=;
Received: from mgamail.intel.com ([192.198.163.15])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t8UYl-0006kq-93 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 06 Nov 2024 01:10:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730855411; x=1762391411;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=8wkwyTaOOs9Q5NnvxbQhqZPtZs3GJ1PNsILlDFMD+Ic=;
 b=K9U+ZfCLIbd+80EI5P7EXUcu6o6RFWHKrS6hLbVGPpOYQJaYLgP+vj+0
 EuASn0YPlEY4CeD4u5UEoMW1JP1wg9rnFwPFBsskBAn8TmUt3yF8i17pm
 9MIQLsjqZj2KqJA9fI8h2XNAuBaUMy6qPTM5kovMq25UYQgQ0/Hmxusgo
 Z2lKieHtzCLcw5aAPPDg/PFxujQoyiWgrrOFAJSOsrIv9SQCUs84699As
 GUlebHTZWqaNG/9GKrHKyubHH949dunaAyV4+D4YXQZ5JeVLnPELRyrKJ
 uDak7K/wVyNULXzWXUGq8WjNdGojTO0Vr+pJMovB7+fsDYiRgxO27xVvn Q==;
X-CSE-ConnectionGUID: jeB3+iVuRZS+pB2N7UeshA==
X-CSE-MsgGUID: h06FJU3jTN2wbvnvRqPKSA==
X-IronPort-AV: E=McAfee;i="6700,10204,11247"; a="30740740"
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="30740740"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 17:10:00 -0800
X-CSE-ConnectionGUID: 8QkttW8lSlGJTh+nJBv2Tw==
X-CSE-MsgGUID: nvQubyb8SZOi3RncHdWtHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="89395669"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by orviesa004.jf.intel.com with ESMTP; 05 Nov 2024 17:09:56 -0800
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t8UYS-000mgP-3B;
 Wed, 06 Nov 2024 01:09:52 +0000
Date: Wed, 6 Nov 2024 09:09:38 +0800
From: kernel test robot <lkp@intel.com>
To: Mario Limonciello <mario.limonciello@amd.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>
Message-ID: <202411060835.GlMKVSsy-lkp@intel.com>
References: <20241105153316.378-12-mario.limonciello@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241105153316.378-12-mario.limonciello@amd.com>
X-Spam-Score: -2.8 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Mario,
 kernel test robot noticed the following build warnings:
 [auto build test WARNING on d68cb6023356af3bd3193983ad4ec03954a0b3e2] 
 Content analysis details:   (-2.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.198.163.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1t8UYl-0006kq-93
Subject: Re: [ibm-acpi-devel] [PATCH v4 11/20] ACPI: platform_profile: Add
 choices attribute for class interface
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
Cc: Alexis Belmonte <alexbelm48@gmail.com>,
 Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 "Rafael J . Wysocki" <rafael@kernel.org>, Gergo Koteles <soyer@irl.hu>,
 "Luke D . Jones" <luke@ljones.dev>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Ai Chao <aichao@kylinos.cn>, open list <linux-kernel@vger.kernel.org>,
 "open list:MICROSOFT SURFACE PLATFORM PROFILE DRIVER"
 <platform-driver-x86@vger.kernel.org>, Lee Chun-Yi <jlee@suse.com>,
 "open list:ACPI" <linux-acpi@vger.kernel.org>,
 Mario Limonciello <mario.limonciello@amd.com>,
 Corentin Chary <corentin.chary@gmail.com>, oe-kbuild-all@lists.linux.dev,
 Mark Pearson <mpearson-lenovo@squebb.ca>, Ike Panhc <ike.pan@canonical.com>,
 Matthew Schwartz <matthew.schwartz@linux.dev>,
 Maximilian Luz <luzmaximilian@gmail.com>,
 "open list:THINKPAD ACPI EXTRAS DRIVER" <ibm-acpi-devel@lists.sourceforge.net>,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Mario,

kernel test robot noticed the following build warnings:

[auto build test WARNING on d68cb6023356af3bd3193983ad4ec03954a0b3e2]

url:    https://github.com/intel-lab-lkp/linux/commits/Mario-Limonciello/ACPI-platform-profile-Add-a-name-member-to-handlers/20241105-233922
base:   d68cb6023356af3bd3193983ad4ec03954a0b3e2
patch link:    https://lore.kernel.org/r/20241105153316.378-12-mario.limonciello%40amd.com
patch subject: [PATCH v4 11/20] ACPI: platform_profile: Add choices attribute for class interface
config: x86_64-rhel-8.3 (https://download.01.org/0day-ci/archive/20241106/202411060835.GlMKVSsy-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241106/202411060835.GlMKVSsy-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202411060835.GlMKVSsy-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/acpi/platform_profile.c:55: warning: Function parameter or struct member 'choices' not described in '_get_class_choices'


vim +55 drivers/acpi/platform_profile.c

    48	
    49	/**
    50	 * _get_class_choices - Get the available profile choices for a class device
    51	 * @dev: The class device
    52	 * Return: The available profile choices
    53	 */
    54	static int _get_class_choices(struct device *dev, unsigned long *choices)
  > 55	{
    56		struct platform_profile_handler *handler;
    57		int i;
    58	
    59		scoped_cond_guard(mutex_intr, return -ERESTARTSYS, &profile_lock) {
    60			handler = dev_get_drvdata(dev);
    61			for_each_set_bit(i, handler->choices, PLATFORM_PROFILE_LAST)
    62				*choices |= BIT(i);
    63		}
    64	
    65		return 0;
    66	}
    67	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

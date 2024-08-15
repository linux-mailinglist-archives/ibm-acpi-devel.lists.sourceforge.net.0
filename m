Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F0185953A8F
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 15 Aug 2024 21:07:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1sefnx-0007JB-8c;
	Thu, 15 Aug 2024 19:06:37 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1sefnv-0007It-3s
 for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 15 Aug 2024 19:06:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Gha5bTHgumi9GwA01rvoUya/R77Yz7JUIi2ijOHU8eg=; b=jnMLn/yKSfyvLueMzzOIFd9BM3
 uQaBFKtq7v65g5NlO0SkiXYUk/NBvc00RQDD3TafH20FiBLTf4GE2KGiOxpcnKyclYXT/lj+jUlxh
 OHrZWqmwP2CUWvtK3t79rT7xyB8JE8nHcqmU1KAA7co+3xBZxXM+k8354Z/QGp2b4SCo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Gha5bTHgumi9GwA01rvoUya/R77Yz7JUIi2ijOHU8eg=; b=mvW4wHoqRUXwDCxZDXwbB9mRn1
 XHy7pTZyHewwtD+CV60v/MfFhJtAQTkMZOFzSAAQZjW8qvargb5MTM2Yy2YcMyBgukq/l2Ff5GHp2
 KQWVX2i12vc5hSEINzpSpxRIMBiA82ApzrlXg6QGaUn8UqvZ+hHaTXlvXzBmtflm4ztk=;
Received: from mgamail.intel.com ([192.198.163.8])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sefnt-0002mK-QN for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 15 Aug 2024 19:06:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723748794; x=1755284794;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=9J6GsM+bd14SqXRQggU0SepylaEYm30khxqYde2Bceg=;
 b=ABJKofLpR0MwQxBAlzTRGC4PIxxRT/cv414CYXOgRbgkXz7OmoKLbJ5+
 zyNrWgoqpPTFCUZtCxtfLv3ClxldWe0PFfGSqkvz2CJROOy8ZEkN4JiV0
 Oe5z+pYFIeMAR+zSABedJ70BVM56oYBqPZo0hbAJgN9m1zKFViSoHNY2n
 nHKayUGH2uuksnoG4h7U9U6MidtY7zLUeH2z3VxOUn/iWz/LCemCeMFta
 9N3w9hiIm5fOu+OJELcRH5K22Nc/wGaTRO8DmJuwRabCc1gW/otdO4gP9
 rnuVXMGk/L/LcdO0zELSCELA3zRbVbw0cu9i96x184ywHbCqo0UCk7LPZ A==;
X-CSE-ConnectionGUID: eq55Du+HStK4x0GkJwsd0Q==
X-CSE-MsgGUID: x5QuDHvhQi2zR/HLsZIY8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11165"; a="39542139"
X-IronPort-AV: E=Sophos;i="6.10,149,1719903600"; d="scan'208";a="39542139"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2024 12:00:22 -0700
X-CSE-ConnectionGUID: MIJxZBuHSWyh9SWPkkq8Pg==
X-CSE-MsgGUID: sLSgU85mQiyac1A5VKWpqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,149,1719903600"; d="scan'208";a="60009556"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
 by orviesa007.jf.intel.com with ESMTP; 15 Aug 2024 12:00:20 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sefhp-0005VM-14;
 Thu, 15 Aug 2024 19:00:17 +0000
Date: Fri, 16 Aug 2024 03:00:01 +0800
From: kernel test robot <lkp@intel.com>
To: Matthias Fetzer <kontakt@matthias-fetzer.de>, hmh@hmh.eng.br,
 hdegoede@redhat.com, ilpo.jarvinen@linux.intel.com,
 ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <202408160253.fMJW95oi-lkp@intel.com>
References: <20240814213927.49075-1-kontakt@matthias-fetzer.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240814213927.49075-1-kontakt@matthias-fetzer.de>
X-Spam-Score: -5.3 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Matthias, kernel test robot noticed the following build
 warnings: [auto build test WARNING on linus/master] [also build test WARNING
 on v6.11-rc3 next-20240815] [If your patch is applied to the wrong git tree,
 kindly drop us a note. And when submitting patch, we sug [...] 
 Content analysis details:   (-5.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.198.163.8 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: git-scm.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [192.198.163.8 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [192.198.163.8 listed in bl.score.senderscore.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1sefnt-0002mK-QN
Subject: Re: [ibm-acpi-devel] [PATCH v3] platform/x86: thinkpad_acpi: Add
 Thinkpad Edge E531 fan support
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
Cc: Matthias Fetzer <kontakt@matthias-fetzer.de>, oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Matthias,

kernel test robot noticed the following build warnings:

[auto build test WARNING on linus/master]
[also build test WARNING on v6.11-rc3 next-20240815]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Matthias-Fetzer/platform-x86-thinkpad_acpi-Add-Thinkpad-Edge-E531-fan-support/20240815-054239
base:   linus/master
patch link:    https://lore.kernel.org/r/20240814213927.49075-1-kontakt%40matthias-fetzer.de
patch subject: [PATCH v3] platform/x86: thinkpad_acpi: Add Thinkpad Edge E531 fan support
config: i386-randconfig-001-20240815 (https://download.01.org/0day-ci/archive/20240816/202408160253.fMJW95oi-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240816/202408160253.fMJW95oi-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202408160253.fMJW95oi-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/platform/x86/thinkpad_acpi.c: In function 'fan_set_level':
>> drivers/platform/x86/thinkpad_acpi.c:8214:13: warning: variable 'rc' set but not used [-Wunused-but-set-variable]
    8214 |         int rc;
         |             ^~


vim +/rc +8214 drivers/platform/x86/thinkpad_acpi.c

  8211	
  8212	static int fan_set_level(int level)
  8213	{
> 8214		int rc;
  8215	
  8216		if (!fan_control_allowed)
  8217			return -EPERM;
  8218	
  8219		switch (fan_control_access_mode) {
  8220		case TPACPI_FAN_WR_ACPI_SFAN:
  8221			if ((level < 0) || (level > 7))
  8222				return -EINVAL;
  8223	
  8224			if (tp_features.second_fan_ctl) {
  8225				if (!fan_select_fan2() ||
  8226				    !acpi_evalf(sfan_handle, NULL, NULL, "vd", level)) {
  8227					pr_warn("Couldn't set 2nd fan level, disabling support\n");
  8228					tp_features.second_fan_ctl = 0;
  8229				}
  8230				fan_select_fan1();
  8231			}
  8232			if (!acpi_evalf(sfan_handle, NULL, NULL, "vd", level))
  8233				return -EIO;
  8234			break;
  8235	
  8236		case TPACPI_FAN_WR_ACPI_FANS:
  8237		case TPACPI_FAN_WR_TPEC:
  8238			if (!(level & TP_EC_FAN_AUTO) &&
  8239			    !(level & TP_EC_FAN_FULLSPEED) &&
  8240			    ((level < 0) || (level > 7)))
  8241				return -EINVAL;
  8242	
  8243			/* safety net should the EC not support AUTO
  8244			 * or FULLSPEED mode bits and just ignore them */
  8245			if (level & TP_EC_FAN_FULLSPEED)
  8246				level |= 7;	/* safety min speed 7 */
  8247			else if (level & TP_EC_FAN_AUTO)
  8248				level |= 4;	/* safety min speed 4 */
  8249	
  8250			if (tp_features.second_fan_ctl) {
  8251				if (!fan_select_fan2() ||
  8252				    !acpi_ec_write(fan_status_offset, level)) {
  8253					pr_warn("Couldn't set 2nd fan level, disabling support\n");
  8254					tp_features.second_fan_ctl = 0;
  8255				}
  8256				fan_select_fan1();
  8257	
  8258			}
  8259			if (!acpi_ec_write(fan_status_offset, level))
  8260				return -EIO;
  8261			else
  8262				tp_features.fan_ctrl_status_undef = 0;
  8263			break;
  8264	
  8265		case TPACPI_FAN_WR_ACPI_FANW:
  8266			if (!(level & TP_EC_FAN_AUTO) && (level < 0 || level > 7))
  8267				return -EINVAL;
  8268			if (level & TP_EC_FAN_FULLSPEED)
  8269				return -EINVAL;
  8270	
  8271			if (level & TP_EC_FAN_AUTO) {
  8272				if (!acpi_evalf(fanw_handle, NULL, NULL, "vdd", 0x8106, 0x05)) {
  8273					rc = -EIO;
  8274					break;
  8275				}
  8276				if (!acpi_evalf(fanw_handle, NULL, NULL, "vdd", 0x8100, 0x00)) {
  8277					rc = -EIO;
  8278					break;
  8279				}
  8280			} else {
  8281				if (!acpi_evalf(fanw_handle, NULL, NULL, "vdd", 0x8106, 0x45)) {
  8282					rc = -EIO;
  8283					break;
  8284				}
  8285				if (!acpi_evalf(fanw_handle, NULL, NULL, "vdd", 0x8100, 0xff)) {
  8286					rc = -EIO;
  8287					break;
  8288				}
  8289				if (!acpi_evalf(fanw_handle, NULL, NULL, "vdd", 0x8102, level * 100 / 7)) {
  8290					rc = -EIO;
  8291					break;
  8292				}
  8293			}
  8294			break;
  8295	
  8296		default:
  8297			return -ENXIO;
  8298		}
  8299	
  8300		vdbg_printk(TPACPI_DBG_FAN,
  8301			"fan control: set fan control register to 0x%02x\n", level);
  8302		return 0;
  8303	}
  8304	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB4354518C
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  9 Jun 2022 18:07:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1nzKfs-0003jb-CA; Thu, 09 Jun 2022 16:06:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1nzKfo-0003jR-3r
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 09 Jun 2022 16:06:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jx/TwefoXQ/P2czfik3anoWZuldTa67uM6sNoDUC1eo=; b=BuCoDCUY2hB4fLnAv9rWwGbBU3
 dyn2upYEUXNT5ebidyc9sPPJQSih1ICVJ8YY9qvHYOo4c5kly3AQTlfwFmt4w2cnWvU5XWTbJuvtd
 8fNNTK+PuNt2ga8fiOzKUXfkgE22iu9/cX6y6zniOm0rNKGjyc8B7Qgj5rpycu6f0las=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jx/TwefoXQ/P2czfik3anoWZuldTa67uM6sNoDUC1eo=; b=lFuxJ1mWAHIj6/LIfzK5gxMT2R
 MaKsNqF+t8OlXlnrA+o0Ujj5EMo735+boGDS1xSwtv7/8PBpYWKxoW9jVtA7djCEl1fdEiFH85fxS
 irLM9xxjdxdTkQXzgCcN4WSQOd9nIbm60lFa2gCPnxHmNOgYVXi+cdWjs+kLVmXqRs68=;
Received: from mga17.intel.com ([192.55.52.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nzKfe-0000jf-Jh
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 09 Jun 2022 16:06:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654790767; x=1686326767;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=zVJ9nUrab+QmY+GSG1HNCt4wr+crK76F+ZOhFnD2E0w=;
 b=IX3YRdk6jOn9e0K3USvf4CSZKQD+i+EuTjn0ykArnMuLPTsUn24KwWdY
 P1Kw1/4tyJT1mEuQ0/vj4sSQ2L/7a3MUIGUjJrQi5C5y+voLafI+qCI3p
 QXE9Kd2tKhMtNpYf4exdwWxSAPMx8VguR8kgkpJslpCBXBczzm0YmIOpu
 P3eSGHZ7yJP1IWRI7INIIi7ZkJhkEVEMlcJzTWPTb6O7FcQ2RuI+4uJau
 PLeihwjkZAcGO8Ojzna6RcuITGR1mrEylFHL2q7qXXROseSIeDJlhqIT8
 4PTv/069s15Lpvi3tba6LGqjkJVUXKZqeIehP2Owho8O3t/HUgeNwrRu5 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="257756166"
X-IronPort-AV: E=Sophos;i="5.91,287,1647327600"; d="scan'208";a="257756166"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2022 08:48:28 -0700
X-IronPort-AV: E=Sophos;i="5.91,287,1647327600"; d="scan'208";a="724492128"
Received: from smile.fi.intel.com ([10.237.72.54])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2022 08:48:25 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1nzKOU-000Y0J-OW; Thu, 09 Jun 2022 18:48:22 +0300
Date: Thu, 9 Jun 2022 18:48:22 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <YqIWRnwyqXZppuxN@smile.fi.intel.com>
References: <1843211.tdWV9SEqCh@kreacher>
 <44750652.fMDQidcC6G@kreacher>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <44750652.fMDQidcC6G@kreacher>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -3.6 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jun 09, 2022 at 04:09:45PM +0200, Rafael J. Wysocki
 wrote: > From: Rafael J. Wysocki <rafael.j.wysocki@intel.com> > > Instead
 of walking the list of children of an ACPI device directly, > use [...] 
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nzKfe-0000jf-Jh
Subject: Re: [ibm-acpi-devel] [PATCH v1 12/16] platform/x86/thinkpad_acpi:
 Use acpi_dev_for_each_child()
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
Cc: Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Hans de Goede <hdegoede@redhat.com>, Linux PM <linux-pm@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, platform-driver-x86@vger.kernel.org,
 Mark Gross <markgross@kernel.org>, Linux ACPI <linux-acpi@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 ibm-acpi-devel@lists.sourceforge.net,
 Mika Westerberg <mika.westerberg@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Thu, Jun 09, 2022 at 04:09:45PM +0200, Rafael J. Wysocki wrote:
> From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> 
> Instead of walking the list of children of an ACPI device directly,
> use acpi_dev_for_each_child() to carry out an action for all of
> the given ACPI device's children.

...

> +	rc = acpi_dev_for_each_child(device, tpacpi_evaluate_bcl, NULL);
> +	if (rc > 0)
> +		return rc;
>  
> +	return 0;

It can be simply 'return acpi_dev_for_each_child();', no?

AFAICS the caller is prepared for negative returns.

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B580E562B09
	for <lists+ibm-acpi-devel@lfdr.de>; Fri,  1 Jul 2022 07:48:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1o79VK-0003HU-4W; Fri, 01 Jul 2022 05:47:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <mika.westerberg@linux.intel.com>) id 1o79VI-0003HO-11
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 01 Jul 2022 05:47:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XdXN4UYHFUTXoPkYgMEqOj9yyrC9wg1vZvNZV7mEUxY=; b=XmKFu6vCYyPrZw0HHjOpQSjPg9
 xQs8VPg/+VvF+n1c2t1b6+oM+ISB32lgG/pnp6SYVu4kd/NFF5p9/Ca05SdabDKGJ0kMMe6O69U1J
 6OL0+Hi66l67a7ZDShnbsRlhDk5hvAJ2S8KKSR5MR/6QxCsxK7tmvi0UFA30Gc1Tnp0U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XdXN4UYHFUTXoPkYgMEqOj9yyrC9wg1vZvNZV7mEUxY=; b=fILe26XXc4z1I/piMFexC2A4OV
 b1CNrPaQvWGFIBHUCREKIWXCnPbrN+5E1NR/49QO362jTPhQuRB9ghva3xsUupx0pzPBirhgGUOxb
 0uj3e39yFGJE3lgZs0bIq/BNkG6xt+trQkTpmESnik+a078zNJO4kbkBclc/NS2r+dw0=;
Received: from mga04.intel.com ([192.55.52.120])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o79VF-00337x-Ll
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 01 Jul 2022 05:47:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656654461; x=1688190461;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Isy2vf1MMMuyEw6FjN6hYjOB38jJmfhpCIoqFRQ0Z2M=;
 b=JLB8+YEPUrM5SHJwacFavhymhFajNEByQF+1srlkPZgi/NeOjqY9dTik
 Rn4YKBb7TEG5HueBE0ZvHgVInAW5WU2rhqy2hQM2sl3JP36ZVOivLbFbl
 ns8O3Hp9h8c0bmPHBbqOgluoZyb9N+ygRaC8gmMAElpSmV9by7ZBtZFNB
 hvDdiEl2X8z4KKhvbfF65TXB2moOSXLUwKSAwOiPUlx6jI07VcB5dIWt8
 x0+ESy4EbNNwTXNV+GEA6xIa4wXqtWOmT6ro/k7vp5H+rZ1LY/CkATleE
 8y+oiRx+jqnfTS9aZa4eYRj9GDHe24cNVjfGO9geupU0C5gbBMt5cYXDC Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="281322764"
X-IronPort-AV: E=Sophos;i="5.92,236,1650956400"; d="scan'208";a="281322764"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 22:47:36 -0700
X-IronPort-AV: E=Sophos;i="5.92,236,1650956400"; d="scan'208";a="566121503"
Received: from lahna.fi.intel.com (HELO lahna) ([10.237.72.162])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 22:47:31 -0700
Received: by lahna (sSMTP sendmail emulation); Fri, 01 Jul 2022 08:47:28 +0300
Date: Fri, 1 Jul 2022 08:47:28 +0300
From: Mika Westerberg <mika.westerberg@linux.intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <Yr6KcPlC/3rYAtKE@lahna>
References: <20220630212819.42958-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220630212819.42958-1-andriy.shevchenko@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -2.8 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Andy, On Fri, Jul 01, 2022 at 12:28:15AM +0300,
 Andy Shevchenko
 wrote: > extern long acpi_is_video_device(acpi_handle handle); > +extern
 bool acpi_match_video_device_handle(acpi_handle handle); I think we can do
 slightly better here. The only caller of acpi_is_video_device() is in
 drivers/acpi/video_detect.c
 so we can move it there and make it static (is_video_device()). 
 Content analysis details:   (-2.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o79VF-00337x-Ll
Subject: Re: [ibm-acpi-devel] [PATCH v1 1/5] ACPI: utils: Introduce
 acpi_match_video_device_handle() helper
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
Cc: Mark Gross <markgross@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-acpi@vger.kernel.org, linux-pci@vger.kernel.org,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, Wolfram Sang <wsa@kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, linux-i2c@vger.kernel.org,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 "Rafael J. Wysocki" <rafael@kernel.org>, ibm-acpi-devel@lists.sourceforge.net,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Andy,

On Fri, Jul 01, 2022 at 12:28:15AM +0300, Andy Shevchenko wrote:
>  extern long acpi_is_video_device(acpi_handle handle);
> +extern bool acpi_match_video_device_handle(acpi_handle handle);

I think we can do slightly better here. The only caller of
acpi_is_video_device() is in drivers/acpi/video_detect.c so we can move
it there and make it static (is_video_device()).

Then we can name this one acpi_is_video_device() instead and in addition
make it take struct acpi_device as parameter instead of acpi_handle (I
think we should not use acpi_handles in drivers if possible).


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

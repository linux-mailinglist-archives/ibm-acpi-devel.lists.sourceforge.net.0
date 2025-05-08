Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BB298AAFD1F
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  8 May 2025 16:32:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7i2oaRB/w2J3e028ymQgyBAtW2BE4rajqLBAPBfEOIA=; b=aIF8+UiFP9t7T2uxNylw2rLOri
	/k5r0SerEFD9iMAJLv6vOF/CxYMh5UjKdNdr+/MMJBfjRmUSYTTq5OaC6buknbbDlcNg1KGacY6d6
	+WhMvApQNcePS+n3GdmmU3ZsqIiu2OXHr9TWgEE2N5rYnC3ik9xMCP7BE7TJgmjZvh4o=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uD2IE-00017H-0R;
	Thu, 08 May 2025 14:32:10 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1uD2IC-00017A-DR for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 08 May 2025 14:32:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vI6H/EWzDBeju4espDu9Q+X5HcrBVUAfURmR6Ml1thc=; b=gqvvfgeBTOTU4TgIlVfHnGNGiO
 q+sUaDy99I42UVbDpsiUAyWk/YGzlOCa3rg4S9CwpPA1B1Kqc72uWm7v4Mf/q+oOLuw4Ic+2wq508
 5oUv+U7Fvz5gfyJ9Xei5BtjgnNjsH9hxXjt1be7TEyc4CZh2adlY7wphREuEJBYaIoG0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vI6H/EWzDBeju4espDu9Q+X5HcrBVUAfURmR6Ml1thc=; b=aex82rez2lRNlRa6BTJDNiAuUm
 R/LKTfc/UkPbjq2KicetkreWOUY5mbFyLBq3pCFnDgqUO5xtQvv6+CxHJWYEnjU1oVdUSliCibDAR
 pYjmTUcos7Ems9qHCb4bO3ZJUTRgX7d487WSBXFMGsiGF7hya8/VlAqhMUYhSTbGU1po=;
Received: from mgamail.intel.com ([192.198.163.18])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uD2IB-0005a1-0y for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 08 May 2025 14:32:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746714727; x=1778250727;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=uVh0/3Gi74lEwZOQuHQj7aeM5bZU7QEGlE1JVLL5DOA=;
 b=AmA2Sb4hnc/5lzI2dbsKa1AyY9Ag5y2B65LLnB/gdlQMRkYuv3sk3tM3
 JjvmOe3/lGZ56CCO5fNqqMwprkcE5j0gkiv4ryKf5VfwZVzvwebCmq4/S
 GNdtyMnwhiQH7mRHuZYNzUq/qSWt2+qWb5UpUIRcO5i40Tims6I8WK1G9
 wxkxLjj59tr2WAlofCJOhb7DT/+RJlvDjrbH1IYjgm+/XWdfEtkDF+25a
 33F4vquNhrxL/kWes/zgzYbdatInJrc76+IH5BxwyTPLVPURXnY+qr+4Q
 DapJX0s/Sq3DaCTZ/+4IsKqYm0eRcWeRP/+WPYEvywlgk0ivGAiV2nmx2 w==;
X-CSE-ConnectionGUID: Ru1lL7RiT8mzOis9olvZzw==
X-CSE-MsgGUID: 6kGRudeNQOWGu81Muaex1g==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="47759514"
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="47759514"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 07:32:01 -0700
X-CSE-ConnectionGUID: RXl21VRQTXCPesTxaQlhwg==
X-CSE-MsgGUID: vLwtqeSWQuC75hJojVJD8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="136194494"
Received: from smile.fi.intel.com ([10.237.72.55])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 07:31:58 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1uD2Hy-000000048S7-1sFr; Thu, 08 May 2025 17:31:54 +0300
Date: Thu, 8 May 2025 17:31:54 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Mark Pearson <mpearson-lenovo@squebb.ca>
Message-ID: <aBzAWrgEgmnAnum-@smile.fi.intel.com>
References: <mpearson-lenovo@squebb.ca>
 <20250507190456.3004367-1-mpearson-lenovo@squebb.ca>
 <20250507190456.3004367-2-mpearson-lenovo@squebb.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250507190456.3004367-2-mpearson-lenovo@squebb.ca>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -3.7 (---)
X-Spam-Report: Spam detection software, running on the system "6901ab67b84d", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, May 07, 2025 at 03:04:35PM -0400, Mark Pearson wrote:
 > Add API to be able to get the thinkpad_acpi various handles. > > Will use
 this to start pulling some of the thinkpad_acpi functionality [...] 
 Content analysis details:   (-3.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -1.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.198.163.18 listed in list.dnswl.org]
X-Headers-End: 1uD2IB-0005a1-0y
Subject: Re: [ibm-acpi-devel] [PATCH 2/2] platform/x86: export thinkpad_acpi
 handles
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

On Wed, May 07, 2025 at 03:04:35PM -0400, Mark Pearson wrote:
> Add API to be able to get the thinkpad_acpi various handles.
> 
> Will use this to start pulling some of the thinkpad_acpi functionality
> into separate modules in the future.

...

> +#ifndef _TP_ACPI_H_
> +#define _TP_ACPI_H_

+ include for  acpi_handle typedef.
Or it the forward declaration works

acpi_handle;

but I haven't checked and my gut feelings that it's not correct syntax as
compiler doesn't know what the heck this word means.

> +enum tp_acpi_handle_id {
> +	TP_ROOT_HANDLE,
> +	TP_EC_HANDLE,
> +	TP_HKEY_HANDLE,
> +};
> +
> +int tp_acpi_get_handle(enum tp_acpi_handle_id handle_id, acpi_handle *handle);
> +
> +#endif /* _TP_ACPI_H */

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

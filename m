Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 49491549C44
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 13 Jun 2022 20:55:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1o0pDL-0004JB-3D; Mon, 13 Jun 2022 18:55:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1o0pDC-0004Ik-JD
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 13 Jun 2022 18:54:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W8flbSXaUZjsRMPA8okirjGr4Rh28cjxj1EpLdcWyGQ=; b=P1i+ADZZRDVBNCm7jg91pe7B78
 uAjvN+Pu/+mq0IdTGfH3Te1iphPk7evae4VJwDJ2cimwsROlUbCou5MW5UGTpEdKRDAeD00lcrbbb
 YvLl7o1u3ZxIini0hTsU8ITClAEcctj918OG5vnxfNk3n47ULbehPmWwHldgox0zkHO8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=W8flbSXaUZjsRMPA8okirjGr4Rh28cjxj1EpLdcWyGQ=; b=ELIy+CVRgI4N0dxDr4QprD6clH
 TPSkwmPFkXTJ6fKZWEBT+uNrnfMmaO0CFN0pl17nceeHm/JWvubgzR38ZK01NqnfVF/I9i23dpoZE
 nutS0iKdkR4obLrKqmDusuWOOPAWRaYSoU/si7QCBW3nYozMxhLML0UUPVt5kCjhpl1E=;
Received: from mga03.intel.com ([134.134.136.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o0pD7-000T6m-9m
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 13 Jun 2022 18:54:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655146489; x=1686682489;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=rrteT8J06qadrldMcQRzRLZphFKmersKJgLFFUeBMAw=;
 b=MVSm1IEd9BfHALPbtN5kO2Os2dPBFsLbldHL3ErPF2cpdPUKQ5z/M5fi
 raVi1oj4mA2XVfX9+o8mriFmAiruHceAwvDMLaKwG9kRLi7bCLndw/0Y8
 iH9She2QctIlOXohnR1tDpHUlFpQ0uB5rWq5CDlWC4j48zhgahvuEpbOJ
 aSZjepJyj0SCUyXzPFcgH28FphefehbRhtAY5Z0CNBYdleeKHRrgPrJ0p
 XeNo2oan0iMdlz3m6cr0QlUJiF6FYU2/jElq+GYe7LT5u5c1XqjnNhzYU
 yGpNXqIjzm6H4uiTY1Q8GwpTF5erGFDgfYVhg8MRY5efyxSaP8J/3SM13 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10377"; a="279425669"
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; d="scan'208";a="279425669"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2022 11:54:42 -0700
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; d="scan'208";a="686212131"
Received: from smile.fi.intel.com ([10.237.72.54])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2022 11:54:39 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1o0pCu-000bIa-OV; Mon, 13 Jun 2022 21:54:36 +0300
Date: Mon, 13 Jun 2022 21:54:36 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <YqeH7G8pJMelXYaJ@smile.fi.intel.com>
References: <1843211.tdWV9SEqCh@kreacher> <2653857.mvXUDI8C0e@kreacher>
 <2091400.OBFZWjSADL@kreacher>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2091400.OBFZWjSADL@kreacher>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -3.1 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jun 13, 2022 at 08:30:19PM +0200, Rafael J. Wysocki
 wrote: > From: Rafael J. Wysocki <rafael.j.wysocki@intel.com> > > Instead
 of walking the list of children of an ACPI device directly, > use [...] 
 Content analysis details:   (-3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o0pD7-000T6m-9m
Subject: Re: [ibm-acpi-devel] [PATCH v2 12/16] platform/x86/thinkpad_acpi:
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

On Mon, Jun 13, 2022 at 08:30:19PM +0200, Rafael J. Wysocki wrote:
> From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> 
> Instead of walking the list of children of an ACPI device directly,
> use acpi_dev_for_each_child() to carry out an action for all of
> the given ACPI device's children.
> 
> This will help to eliminate the children list head from struct
> acpi_device as it is redundant and it is used in questionable ways
> in some places (in particular, locking is needed for walking the
> list pointed to it safely, but it is often missing).

Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

> Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> ---
> 
> v1 -> v2:
>    * Eliminate unnecessary branch (Andy).
> 
> ---
>  drivers/platform/x86/thinkpad_acpi.c |   53 +++++++++++++++++------------------
>  1 file changed, 27 insertions(+), 26 deletions(-)
> 
> Index: linux-pm/drivers/platform/x86/thinkpad_acpi.c
> ===================================================================
> --- linux-pm.orig/drivers/platform/x86/thinkpad_acpi.c
> +++ linux-pm/drivers/platform/x86/thinkpad_acpi.c
> @@ -6841,6 +6841,31 @@ static const struct backlight_ops ibm_ba
>  
>  /* --------------------------------------------------------------------- */
>  
> +static int __init tpacpi_evaluate_bcl(struct acpi_device *adev, void *not_used)
> +{
> +	struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, NULL };
> +	union acpi_object *obj;
> +	acpi_status status;
> +	int rc;
> +
> +	status = acpi_evaluate_object(adev->handle, "_BCL", NULL, &buffer);
> +	if (ACPI_FAILURE(status))
> +		return 0;
> +
> +	obj = buffer.pointer;
> +	if (!obj || obj->type != ACPI_TYPE_PACKAGE) {
> +		acpi_handle_info(adev->handle,
> +				 "Unknown _BCL data, please report this to %s\n",
> +				 TPACPI_MAIL);
> +		rc = 0;
> +	} else {
> +		rc = obj->package.count;
> +	}
> +	kfree(obj);
> +
> +	return rc;
> +}
> +
>  /*
>   * Call _BCL method of video device.  On some ThinkPads this will
>   * switch the firmware to the ACPI brightness control mode.
> @@ -6848,37 +6873,13 @@ static const struct backlight_ops ibm_ba
>  
>  static int __init tpacpi_query_bcl_levels(acpi_handle handle)
>  {
> -	struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, NULL };
> -	union acpi_object *obj;
> -	struct acpi_device *device, *child;
> -	int rc;
> +	struct acpi_device *device;
>  
>  	device = acpi_fetch_acpi_dev(handle);
>  	if (!device)
>  		return 0;
>  
> -	rc = 0;
> -	list_for_each_entry(child, &device->children, node) {
> -		acpi_status status = acpi_evaluate_object(child->handle, "_BCL",
> -							  NULL, &buffer);
> -		if (ACPI_FAILURE(status)) {
> -			buffer.length = ACPI_ALLOCATE_BUFFER;
> -			continue;
> -		}
> -
> -		obj = (union acpi_object *)buffer.pointer;
> -		if (!obj || (obj->type != ACPI_TYPE_PACKAGE)) {
> -			pr_err("Unknown _BCL data, please report this to %s\n",
> -				TPACPI_MAIL);
> -			rc = 0;
> -		} else {
> -			rc = obj->package.count;
> -		}
> -		break;
> -	}
> -
> -	kfree(buffer.pointer);
> -	return rc;
> +	return acpi_dev_for_each_child(device, tpacpi_evaluate_bcl, NULL);
>  }
>  
>  
> 
> 
> 

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

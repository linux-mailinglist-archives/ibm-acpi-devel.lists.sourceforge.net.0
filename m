Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6F841885A
	for <lists+ibm-acpi-devel@lfdr.de>; Sun, 26 Sep 2021 13:33:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mUSOe-0006rW-Ag; Sun, 26 Sep 2021 11:32:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <gregkh@linuxfoundation.org>) id 1mUSOd-0006rG-Ds
 for ibm-acpi-devel@lists.sourceforge.net; Sun, 26 Sep 2021 11:32:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pQym6UbBJVqBZ2gUFi7zuU5jmwYC33oF/xQxKVxCcSo=; b=I1fwwzwM61+KpjX40E+PVlhUrp
 09YEQs4fdEskapROVZxaSg2572eSeGNVjUaRGix1vY5ZtjJQFH7HSrQTFjgnLk6u9MWg3han8w2d8
 6eD9za3rs+jfEIkrM4nAEFWP8Y1MqHvha3n+9vC8Lowleod/zguT0NF2F6xlbwS/peqU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pQym6UbBJVqBZ2gUFi7zuU5jmwYC33oF/xQxKVxCcSo=; b=hJfLx6MIQ69y6iSDn0nH7vxkKM
 uzg0tQnNlEa7XypoC+sgPEz4A+8EDPsKESDB2dC+A+///ITLwMfpn48XUUWYWi/WQ9VMPJpIMUiUb
 kaUdTPUgXH/4DjWLH+q7IjK/0/QwoqGTnwB5YboRobVTNK+H6r66HzFaUEtHvKWP/Zks=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mUSOZ-00683R-Cx
 for ibm-acpi-devel@lists.sourceforge.net; Sun, 26 Sep 2021 11:32:39 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id A646860FED;
 Sun, 26 Sep 2021 11:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1632655944;
 bh=Nyf6ewIDShuX8FXOPmkb/30L2yrtLO3R5Tz0tD+fZW4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FYJieOOfSJ0j6fXY+Tm2kme99uWr0T1KCEBG03yeZsxY6/+fmh4DVAY0c0UWb6zFP
 s2vgwmsqP7UGd5ZrG5UWPsMCB4CSb3t5MrzzFekNjQr6E65eUL2/LVV2Ic9O84N0eN
 QzMXS10VIDczAfrE/NukFiqd7Qg1OopENQWR5z1Q=
Date: Sun, 26 Sep 2021 13:32:16 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Len Baker <len.baker@gmx.com>
Message-ID: <YVBaQAFVX1CeQUPE@kroah.com>
References: <20210926111908.6950-1-len.baker@gmx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210926111908.6950-1-len.baker@gmx.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Sep 26, 2021 at 01:19:08PM +0200, Len Baker wrote:
 > As noted in the "Deprecated Interfaces, Language Features, Attributes,
 > and Conventions" documentation [1], size calculations (especially [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mUSOZ-00683R-Cx
Subject: Re: [ibm-acpi-devel] [PATCH v2] platform/x86: thinkpad_acpi: Switch
 to common use of attributes
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
Cc: Mark Gross <mgross@linux.intel.com>, Kees Cook <keescook@chromium.org>,
 Hans de Goede <hdegoede@redhat.com>, linux-kernel@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 platform-driver-x86@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net,
 linux-hardening@vger.kernel.org, Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Sun, Sep 26, 2021 at 01:19:08PM +0200, Len Baker wrote:
> As noted in the "Deprecated Interfaces, Language Features, Attributes,
> and Conventions" documentation [1], size calculations (especially
> multiplication) should not be performed in memory allocator (or similar)
> function arguments due to the risk of them overflowing. This could lead
> to values wrapping around and a smaller allocation being made than the
> caller was expecting. Using those allocations could lead to linear
> overflows of heap memory and other misbehaviors.
> 
> So, to avoid open-coded arithmetic in the kzalloc() call inside the
> create_attr_set() function the code must be refactored. Using the
> struct_size() helper is the fast solution but it is better to switch
> this code to common use of attributes.
> 
> Then, remove all the custom code to manage hotkey attributes and use the
> attribute_group structure instead, refactoring the code accordingly.
> Also, to manage the optional hotkey attributes (hotkey_tablet_mode and
> hotkey_radio_sw) use the is_visible callback from the same structure.
> 
> Moreover, now the hotkey_init_tablet_mode() function never returns a
> negative number. So, the check after the call can be safely removed.
> 
> [1] https://www.kernel.org/doc/html/latest/process/deprecated.html#open-coded-arithmetic-in-allocator-arguments
> 
> Suggested-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Len Baker <len.baker@gmx.com>
> ---
> Hi,
> 
> Following the suggestions made by Greg I have switch the code to common
> use of attributes. However this code is untested. If someone could test
> it would be great.

Much better, thanks.

But, I have a few questions here:

> @@ -3161,9 +3106,7 @@ static void hotkey_exit(void)
>  	hotkey_poll_stop_sync();
>  	mutex_unlock(&hotkey_mutex);
>  #endif
> -
> -	if (hotkey_dev_attributes)
> -		delete_attr_set(hotkey_dev_attributes, &tpacpi_pdev->dev.kobj);
> +	sysfs_remove_group(&tpacpi_pdev->dev.kobj, &hotkey_attr_group);

Why do you have to manually add/remove these groups still?

A huge hint that something is going wrong is when you have to call a
sysfs_*() call from within a driver.  There should be proper driver_*()
calls for you instead to get the job done.

As this is a platform device, why not set the dev_groups variable in the
platform_driver field so that these attribute groups get added and
removed automatically?

An example commit to look at that shows how this was converted for one
driver is 5bd08a4ae3d0 ("platform: x86: hp-wmi: convert platform driver
to use dev_groups").  See if that helps here as well.

thanks,

greg k-h


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

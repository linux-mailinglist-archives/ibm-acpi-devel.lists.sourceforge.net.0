Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CCF41B387
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 28 Sep 2021 18:05:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mVFaq-0006gq-EF; Tue, 28 Sep 2021 16:04:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <gregkh@linuxfoundation.org>) id 1mVFao-0006gd-Un
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 28 Sep 2021 16:04:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z3F8yBdb9HUCxGovYrOTFbVeA9EP9gAMLdlrGGhTUQs=; b=EdCzai10TxqymXR+GFapfRpNVn
 GPBxuPK+gIyrCLxcKfkMCOxDbKtaw2edwkkuEvulOYa1c3t0yCuFuVE/Tb4AQnPrzl6R7YTZW8IRO
 AXpacOpbzpow4MyAy0bUwRj8Yjw9wL0KVO/8d8oYKRGwog1RTnGMOSi2Uj+ww6FBU1K4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=z3F8yBdb9HUCxGovYrOTFbVeA9EP9gAMLdlrGGhTUQs=; b=LQVE6DsfI3nvDUGle267A2Ubrj
 ZOk7e0WfS/yB5mfPk3FoZNdCNN1oIQahm3ooM5wYoEf9CsWenRhzAFhUrB632A8d5oTo30xKYd4G7
 EKNgRsgQAQYYHeKkX7JIz81XYt6uLvSRiG0DJItKsE79DobvtYhlxWppxlAimlVMe098=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mVFao-009kUe-0V
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 28 Sep 2021 16:04:30 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2824661213;
 Tue, 28 Sep 2021 16:04:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1632845064;
 bh=J8bFtSzTPHaRP/w8oi0vQlkr/QaRHZmeo8GXZahHSbk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=He9qUGzYllosNeEAs8t1CTwdoeA7T1MSIsNyRYUserRpGTvnpD4VZs9kHNVWnERDm
 pv8rHG8VE2FxQfD6OVwlb6m1fy7ohQoOZsvoo/AZlYvMiaAOpl2d7cCEeGEnp+QJOp
 JQqIqZXNWZ8UJnXgX9i/1ps47uvxa8fUHptJog9E=
Date: Tue, 28 Sep 2021 18:04:22 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <YVM9BhHcMRVnEder@kroah.com>
References: <20210926111908.6950-1-len.baker@gmx.com>
 <YVBaQAFVX1CeQUPE@kroah.com>
 <50135c0e-e291-509f-2286-a1e443fdf4f3@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <50135c0e-e291-509f-2286-a1e443fdf4f3@redhat.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Sep 28, 2021 at 04:55:25PM +0200,
 Hans de Goede wrote:
 > Hi All, > > On 9/26/21 1:32 PM, Greg Kroah-Hartman wrote: > > On Sun, Sep
 26, 2021 at 01:19:08PM +0200, Len Baker wrote: > >> As noted [...] 
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
X-Headers-End: 1mVFao-009kUe-0V
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
 linux-kernel@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 platform-driver-x86@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net,
 Len Baker <len.baker@gmx.com>, linux-hardening@vger.kernel.org,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Tue, Sep 28, 2021 at 04:55:25PM +0200, Hans de Goede wrote:
> Hi All,
> 
> On 9/26/21 1:32 PM, Greg Kroah-Hartman wrote:
> > On Sun, Sep 26, 2021 at 01:19:08PM +0200, Len Baker wrote:
> >> As noted in the "Deprecated Interfaces, Language Features, Attributes,
> >> and Conventions" documentation [1], size calculations (especially
> >> multiplication) should not be performed in memory allocator (or similar)
> >> function arguments due to the risk of them overflowing. This could lead
> >> to values wrapping around and a smaller allocation being made than the
> >> caller was expecting. Using those allocations could lead to linear
> >> overflows of heap memory and other misbehaviors.
> >>
> >> So, to avoid open-coded arithmetic in the kzalloc() call inside the
> >> create_attr_set() function the code must be refactored. Using the
> >> struct_size() helper is the fast solution but it is better to switch
> >> this code to common use of attributes.
> >>
> >> Then, remove all the custom code to manage hotkey attributes and use the
> >> attribute_group structure instead, refactoring the code accordingly.
> >> Also, to manage the optional hotkey attributes (hotkey_tablet_mode and
> >> hotkey_radio_sw) use the is_visible callback from the same structure.
> >>
> >> Moreover, now the hotkey_init_tablet_mode() function never returns a
> >> negative number. So, the check after the call can be safely removed.
> >>
> >> [1] https://www.kernel.org/doc/html/latest/process/deprecated.html#open-coded-arithmetic-in-allocator-arguments
> >>
> >> Suggested-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> >> Signed-off-by: Len Baker <len.baker@gmx.com>
> >> ---
> >> Hi,
> >>
> >> Following the suggestions made by Greg I have switch the code to common
> >> use of attributes. However this code is untested. If someone could test
> >> it would be great.
> > 
> > Much better, thanks.
> 
> This indeed is much better and a great cleanup, thanks.
> 
> > 
> > But, I have a few questions here:
> > 
> >> @@ -3161,9 +3106,7 @@ static void hotkey_exit(void)
> >>  	hotkey_poll_stop_sync();
> >>  	mutex_unlock(&hotkey_mutex);
> >>  #endif
> >> -
> >> -	if (hotkey_dev_attributes)
> >> -		delete_attr_set(hotkey_dev_attributes, &tpacpi_pdev->dev.kobj);
> >> +	sysfs_remove_group(&tpacpi_pdev->dev.kobj, &hotkey_attr_group);
> > 
> > Why do you have to manually add/remove these groups still?
> > 
> > A huge hint that something is going wrong is when you have to call a
> > sysfs_*() call from within a driver.  There should be proper driver_*()
> > calls for you instead to get the job done.
> > 
> > As this is a platform device, why not set the dev_groups variable in the
> > platform_driver field so that these attribute groups get added and
> > removed automatically?
> 
> The thinkpad_acpi code talks to the ACPI object representing the
> ThinkPad embedded-controller and that has a lot of different sub-functionalities
> which may or may not be present depending on the model laptop as well
> as on the hw-configuration of the model.
> 
> The code is organized around all the different sub-functions with there
> being a separate init + exit function for each sub-function, including
> with first detecting in the init function if the functionality is present
> (e.g. don't register SW_TABLETMODE_SW evdev reporting when the device
> is not convertible / don register a WWAN rfkill if there is no WWAN modem).
> 
> Many (but not all) of the sub-functions come with a few sysfs-attributes
> under /sys/bus/platform/devices/thinkpad_acpi/ many of the separate
> function_init functions therefor call sysfs_create_group() for their own
> set of sysfs-attributes, if the function is present on the machine.
> 
> > An example commit to look at that shows how this was converted for one
> > driver is 5bd08a4ae3d0 ("platform: x86: hp-wmi: convert platform driver
> > to use dev_groups").  See if that helps here as well.
> 
> Right, that results in a very nice cleanup. But there all the attributes
> were always registered before the patch so throwing them together in a
> ATTRIBUTE_GROUPS(hp_wmi) makes a ton of sense.
> 
> Here however we have all the separate function_init() blocks each
> conditionally adding their own attributes if the function is present,
> so that is different.
> 
> Currently there already are 8 separate sysfs_create_group() calls in
> the thinkpad_acpi code, so even if we want to refactor this (I'm not
> sure that we do) then doing so would fall outside of the scope of this
> patch.
> 
> Greg, since this resolves / defers your remark and since this otherwise
> is a nice cleanup I'm going to merge this version of this patch now.

Ok, but having this all in one big list of attributes does work.  You
can have multiple attribute groups listed together (that's why it's a
list of attribute groups, not just one attribute group that the driver
core is expecting.)

You just put the logic of "is this group needed or not?" in the
is_visible() callback for that group.  You then don't need the
function_init() blocks to do anything with sysfs except maybe set a
device variable of "I have type foo" for the is_visible() callback to
check.

Yes, it's not obvious, but should clean up a lot of code in the end.

thanks,

greg k-h


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

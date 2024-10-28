Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BFCA09B2DD9
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 28 Oct 2024 12:02:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1t5NVw-0002V3-4Z;
	Mon, 28 Oct 2024 11:02:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1t5NVu-0002Uv-Ad
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 28 Oct 2024 11:02:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O/D+6f3GkJ3PO4skFYQQ3StKkecOTla7RKcV9O6QbpY=; b=dc1lD9zG2wcwkuZ9/aJGiN30Ey
 u5ccCpqsJwjiiM8cLg56p+FpAJPe7o9+b6wxhFGxzfzJY1F6+i8zieOusvgSo8jKh/x6aCfZL9w/q
 RTz9CvsJMxFw5mDnisLiBjozw1/YKydmDEhWI76ksYHPZnbN3DbkLDgqBZMLhslM4Fys=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=O/D+6f3GkJ3PO4skFYQQ3StKkecOTla7RKcV9O6QbpY=; b=GUbw3Lcb4UtDmQWtGEhCKDyWEa
 O9xbqonwk3yL87LznFZhANtdD6hymHOyzxIvi7v9Wpma2KfMjhvTqxieG2gx4FHAoPpKFOI7vkAxu
 GDXeBqhYW4YOCdACOFnfBCb3Kuj1efq3sD5dJA6m4lr4Gp1SU0CsWI35CqnrRszSRoR0=;
Received: from fhigh-b2-smtp.messagingengine.com ([202.12.124.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t5NVs-0005U7-Cx for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 28 Oct 2024 11:02:21 +0000
Received: from phl-compute-02.internal (phl-compute-02.phl.internal
 [10.202.2.42])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 451D32540090;
 Mon, 28 Oct 2024 07:02:14 -0400 (EDT)
Received: from phl-imap-10 ([10.202.2.85])
 by phl-compute-02.internal (MEProxy); Mon, 28 Oct 2024 07:02:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1730113334;
 x=1730199734; bh=O/D+6f3GkJ3PO4skFYQQ3StKkecOTla7RKcV9O6QbpY=; b=
 gl1TAKl3HJOeCJNLbO4XW8ZsOExI+KS2HxxPOPqyxV0I9f80w5fc/8Yqb9CJYSp4
 57PFlNFc7oWZrs1Xp+ScU1+KfTh1gLa2+zvX3hUO7IQ//DvWvEYN88RYwimLYl4Q
 rTibjkYUG6CEtDqCN/AzqEJVpgGZZX227hk56ek48yf2tAVIefuhjqg/T3aSFv4X
 o1/C7GtQwEvni98jv3VMIkrY4AWp1l352W0VCJzBTe6+45EfCgpIxHzLoZSUId7g
 COgmUFLyEU8jZexJ4142BJa6eijOGGnk3wFaXrG1dY1pw+xncvkZgIFtgQ2SZBHm
 yfUJ5PbVmcGWe9oy926row==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1730113334; x=
 1730199734; bh=O/D+6f3GkJ3PO4skFYQQ3StKkecOTla7RKcV9O6QbpY=; b=k
 myNWHmAirwhhnkHaf9XO5UYOM4dLW+10QVsQCQ14YXyhXIAgukXsLqVfc/bhM6WD
 YcANeVOLxUZwbFFWccao9e1/MYqRIoQh54PBTmzJfxBaz/iJObKJL6haYTMdl53v
 U3oLAahr/ZG2hT4AnhkXIuLOwufUD+VltgjmsEcCzeLGR9fDIH1FdXWcBuuE7u4h
 QSvX6T9qYbcdu3noQHCqcDHgzYgSnPRODPbrNKbZLcJP1kZ2T/ttodllLfRU/EfW
 sh69DahD0buwHDPrsobfUX3fMzL9QuII6UxNpAIRTNb/UdxJankAYtMvao87N72O
 49kp90orZCaRMNRdreEAw==
X-ME-Sender: <xms:NW8fZ34pneBAaMV_PK7IQkBmPpOKYZiV2g07SEZQ-Tjm_sNPaEPTVg>
 <xme:NW8fZ876T6IMUEKepPazEORH6TLzyI6HIc3PW0JI6uw89FZ5fK8o3EQoObtt1VYO3
 qty7HOq9Uejhg1l4qA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrvdejkedgvdduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepofggfffhvfevkfgjfhfutgfgsehtjeertdertddt
 necuhfhrohhmpedfofgrrhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnh
 hovhhosehsqhhuvggssgdrtggrqeenucggtffrrghtthgvrhhnpefhuedvheetgeehtdeh
 tdevheduvdejjefggfeijedvgeekhfefleehkeehvdffheenucevlhhushhtvghrufhiii
 gvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhho
 sehsqhhuvggssgdrtggrpdhnsggprhgtphhtthhopedvuddpmhhouggvpehsmhhtphhouh
 htpdhrtghpthhtohepshhhhigrmhdqshhunhgurghrrdhsqdhksegrmhgurdgtohhmpdhr
 tghpthhtohepmhgrrhhiohdrlhhimhhonhgtihgvlhhlohesrghmugdrtghomhdprhgtph
 htthhopehikhgvrdhprghnsegtrghnohhnihgtrghlrdgtohhmpdhrtghpthhtoheprghl
 vgigsggvlhhmgeeksehgmhgrihhlrdgtohhmpdhrtghpthhtoheptghorhgvnhhtihhnrd
 gthhgrrhihsehgmhgrihhlrdgtohhmpdhrtghpthhtoheplhhuiihmrgigihhmihhlihgr
 nhesghhmrghilhdrtghomhdprhgtphhtthhopehhmhhhsehhmhhhrdgvnhhgrdgsrhdprh
 gtphhtthhopehsohihvghrsehirhhlrdhhuhdprhgtphhtthhopehlvghnsgeskhgvrhhn
 vghlrdhorhhg
X-ME-Proxy: <xmx:NW8fZ-c1q8gRXTDsQYxqGyMatxZMnhyu1xid5NkPZrrRq9i6aRW4Sw>
 <xmx:NW8fZ4LpKovAmhJsNxsv4BTTMDl7SMicWBWd_4X9T2w5hWzrxVdmPQ>
 <xmx:NW8fZ7L8KwtmFi6MCm6wa2l87AYr25Wj8_kFxC7kuEAlKSQVVOfkWQ>
 <xmx:NW8fZxwgwRebr1bcMvzRMQUgRBdENoQN3diT0Y-kWM5x51bbb5kzww>
 <xmx:Nm8fZzKzQtVABJIEyV6Y9LhORHRZ0MCBAauwfRWGo-XLIukJA-fr-2TB>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 4D4033C0066; Mon, 28 Oct 2024 07:02:13 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Mon, 28 Oct 2024 07:01:53 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Limonciello, Mario" <mario.limonciello@amd.com>,
 "Hans de Goede" <hdegoede@redhat.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Message-Id: <bfafd7c5-6757-42e5-a3cf-d4695b6723cd@app.fastmail.com>
In-Reply-To: <20241025193055.2235-8-mario.limonciello@amd.com>
References: <20241025193055.2235-1-mario.limonciello@amd.com>
 <20241025193055.2235-8-mario.limonciello@amd.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Mario, On Fri, Oct 25, 2024, at 3:30 PM, Mario Limonciello
 wrote: > Multiple drivers may attempt to register platform profile handlers,
 > but only one may be registered and the behavior is non-deterministic [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [202.12.124.153 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1t5NVs-0005U7-Cx
Subject: Re: [ibm-acpi-devel] [PATCH 7/8] ACPI: platform_profile: Add
 support for multiple handlers
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
 "Rafael J. Wysocki" <rafael@kernel.org>, Gergo Koteles <soyer@irl.hu>,
 "Luke D . Jones" <luke@ljones.dev>, Ai Chao <aichao@kylinos.cn>,
 open list <linux-kernel@vger.kernel.org>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 Lee Chun-Yi <jlee@suse.com>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 Corentin Chary <corentin.chary@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Ike Panhc <ike.pan@canonical.com>,
 Matthew Schwartz <matthew.schwartz@linux.dev>,
 Maximilian Luz <luzmaximilian@gmail.com>,
 "open list:THINKPAD ACPI EXTRAS DRIVER" <ibm-acpi-devel@lists.sourceforge.net>,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Mario,

On Fri, Oct 25, 2024, at 3:30 PM, Mario Limonciello wrote:
> Multiple drivers may attempt to register platform profile handlers,
> but only one may be registered and the behavior is non-deterministic
> for which one wins.  It's mostly controlled by probing order.
>
> This can be problematic if one driver changes CPU settings and another
> driver notifies the EC for changing fan curves.
>
> Modify the ACPI platform profile handler to let multiple drivers
> register platform profile handlers and abstract this detail from userspace.
>
> From userspace perspective the user will see profiles available across
> both drivers.  However to avoid chaos only allow changing to profiles
> that are common in both drivers.
>
> If any problems occur when changing profiles for any driver, then revert
> back to the previous profile.
>
> Tested-by: Matthew Schwartz <matthew.schwartz@linux.dev>
> Signed-off-by: Mario Limonciello <mario.limonciello@amd.com>
> ---
>  drivers/acpi/platform_profile.c | 203 ++++++++++++++++++--------------
>  1 file changed, 117 insertions(+), 86 deletions(-)
>
> diff --git a/drivers/acpi/platform_profile.c b/drivers/acpi/platform_profile.c
> index 091ca6941a925..915e3c49f0b5f 100644
> --- a/drivers/acpi/platform_profile.c
> +++ b/drivers/acpi/platform_profile.c
> @@ -9,7 +9,6 @@
>  #include <linux/platform_profile.h>
>  #include <linux/sysfs.h>
> 
> -static struct platform_profile_handler *cur_profile;
>  static LIST_HEAD(platform_profile_handler_list);
>  static DEFINE_MUTEX(profile_lock);
> 
> @@ -36,26 +35,26 @@ static ssize_t platform_profile_choices_show(struct 
> device *dev,
>  					struct device_attribute *attr,
>  					char *buf)
>  {
> +	struct platform_profile_handler *handler;
> +	unsigned long seen = 0;
>  	int len = 0;
> -	int err, i;
> -
> -	err = mutex_lock_interruptible(&profile_lock);
> -	if (err)
> -		return err;
> -
> -	if (!cur_profile) {
> -		mutex_unlock(&profile_lock);
> -		return -ENODEV;
> +	int i;
> +
> +	scoped_cond_guard(mutex_intr, return -ERESTARTSYS, &profile_lock) {
> +		list_for_each_entry(handler, &platform_profile_handler_list, list) {
> +			for_each_set_bit(i, handler->choices, PLATFORM_PROFILE_LAST) {
> +				if (seen & BIT(i))
> +					continue;
> +				if (len == 0)
> +					len += sysfs_emit_at(buf, len, "%s", profile_names[i]);
> +				else
> +					len += sysfs_emit_at(buf, len, " %s", profile_names[i]);
> +				seen |= BIT(i);
> +			}
> +		}
>  	}
> 
> -	for_each_set_bit(i, cur_profile->choices, PLATFORM_PROFILE_LAST) {
> -		if (len == 0)
> -			len += sysfs_emit_at(buf, len, "%s", profile_names[i]);
> -		else
> -			len += sysfs_emit_at(buf, len, " %s", profile_names[i]);
> -	}
>  	len += sysfs_emit_at(buf, len, "\n");
> -	mutex_unlock(&profile_lock);
>  	return len;
>  }
> 
> @@ -64,22 +63,20 @@ static ssize_t platform_profile_show(struct device *dev,
>  					char *buf)
>  {
>  	enum platform_profile_option profile = PLATFORM_PROFILE_BALANCED;
> +	struct platform_profile_handler *handler;
>  	int err;
> 
> -	err = mutex_lock_interruptible(&profile_lock);
> -	if (err)
> -		return err;
> 
> -	if (!cur_profile) {
> -		mutex_unlock(&profile_lock);
> -		return -ENODEV;
> +	scoped_cond_guard(mutex_intr, return -ERESTARTSYS, &profile_lock) {
> +		if (!platform_profile_is_registered())
> +			return -ENODEV;
> +		list_for_each_entry(handler, &platform_profile_handler_list, list) {
> +			err = handler->profile_get(handler, &profile);
> +			if (err)
> +				return err;
> +		}
>  	}
> 
> -	err = cur_profile->profile_get(cur_profile, &profile);
> -	mutex_unlock(&profile_lock);
> -	if (err)
> -		return err;
> -
>  	/* Check that profile is valid index */
>  	if (WARN_ON((profile < 0) || (profile >= ARRAY_SIZE(profile_names))))
>  		return -EIO;
> @@ -91,37 +88,48 @@ static ssize_t platform_profile_store(struct device *dev,
>  			    struct device_attribute *attr,
>  			    const char *buf, size_t count)
>  {
> +	struct platform_profile_handler *handler;
> +	enum platform_profile_option profile;
>  	int err, i;
> 
> -	err = mutex_lock_interruptible(&profile_lock);
> -	if (err)
> -		return err;
> -
> -	if (!cur_profile) {
> -		mutex_unlock(&profile_lock);
> -		return -ENODEV;
> -	}
> -
>  	/* Scan for a matching profile */
>  	i = sysfs_match_string(profile_names, buf);
>  	if (i < 0) {
> -		mutex_unlock(&profile_lock);
>  		return -EINVAL;
>  	}
> 
> -	/* Check that platform supports this profile choice */
> -	if (!test_bit(i, cur_profile->choices)) {
> -		mutex_unlock(&profile_lock);
> -		return -EOPNOTSUPP;
> +	scoped_cond_guard(mutex_intr, return -ERESTARTSYS, &profile_lock) {
> +		if (!platform_profile_is_registered())
> +			return -ENODEV;
> +
> +		/* Check that all handlers support this profile choice */
> +		list_for_each_entry(handler, &platform_profile_handler_list, list) {
> +			if (!test_bit(i, handler->choices))
> +				return -EOPNOTSUPP;
> +
> +			/* save the profile so that it can be reverted if necessary */
> +			err = handler->profile_get(handler, &profile);
> +			if (err)
> +				return err;
> +		}
> +
> +		list_for_each_entry(handler, &platform_profile_handler_list, list) {
> +			err = handler->profile_set(handler, i);
> +			if (err) {
> +				pr_err("Failed to set profile for handler %s\n", handler->name);
> +				break;
> +			}
> +		}
> +		if (err) {
> +			list_for_each_entry_continue_reverse(handler, 
> &platform_profile_handler_list, list) {
> +				if (handler->profile_set(handler, profile))
> +					pr_err("Failed to revert profile for handler %s\n", 
> handler->name);
> +			}
> +			return err;
> +		}
>  	}
> 
> -	err = cur_profile->profile_set(cur_profile, i);
> -	if (!err)
> -		sysfs_notify(acpi_kobj, NULL, "platform_profile");
> -
> -	mutex_unlock(&profile_lock);
> -	if (err)
> -		return err;
> +	sysfs_notify(acpi_kobj, NULL, "platform_profile");
>  	return count;
>  }
> 
> @@ -140,7 +148,8 @@ static const struct attribute_group 
> platform_profile_group = {
> 
>  void platform_profile_notify(void)
>  {
> -	if (!cur_profile)
> +	guard(mutex)(&profile_lock);
> +	if (!platform_profile_is_registered())
>  		return;
>  	sysfs_notify(acpi_kobj, NULL, "platform_profile");
>  }
> @@ -148,40 +157,65 @@ EXPORT_SYMBOL_GPL(platform_profile_notify);
> 
>  int platform_profile_cycle(void)
>  {
> +	struct platform_profile_handler *handler;
>  	enum platform_profile_option profile;
> -	enum platform_profile_option next;
> +	enum platform_profile_option next = PLATFORM_PROFILE_LAST;
> +	enum platform_profile_option next2 = PLATFORM_PROFILE_LAST;
>  	int err;
> 
> -	err = mutex_lock_interruptible(&profile_lock);
> -	if (err)
> -		return err;
> -
> -	if (!cur_profile) {
> -		mutex_unlock(&profile_lock);
> -		return -ENODEV;
> -	}
> -
> -	err = cur_profile->profile_get(cur_profile, &profile);
> -	if (err) {
> -		mutex_unlock(&profile_lock);
> -		return err;
> -	}
> -
> -	next = find_next_bit_wrap(cur_profile->choices, PLATFORM_PROFILE_LAST,
> -				  profile + 1);
> -
> -	if (WARN_ON(next == PLATFORM_PROFILE_LAST)) {
> -		mutex_unlock(&profile_lock);
> -		return -EINVAL;
> +	scoped_cond_guard(mutex_intr, return -ERESTARTSYS, &profile_lock) {
> +		/* first pass, make sure all handlers agree on the definition of 
> "next" profile */
> +		list_for_each_entry(handler, &platform_profile_handler_list, list) {
> +
> +			err = handler->profile_get(handler, &profile);
> +			if (err)
> +				return err;
> +
> +			if (next == PLATFORM_PROFILE_LAST)
> +				next = find_next_bit_wrap(handler->choices,
> +							  PLATFORM_PROFILE_LAST,
> +							  profile + 1);
> +			else
> +				next2 = find_next_bit_wrap(handler->choices,
> +							   PLATFORM_PROFILE_LAST,
> +							   profile + 1);
> +
> +			if (WARN_ON(next == PLATFORM_PROFILE_LAST))
> +				return -EINVAL;
> +
> +			if (next2 == PLATFORM_PROFILE_LAST)
> +				continue;
> +
> +			if (next != next2) {
> +				pr_warn("Next profile to cycle to is ambiguous between 
> platform_profile handlers\n");
> +				return -EINVAL;
> +			}
> +			next = next2;
> +		}
> +
> +		/*
> +		 * Second pass: apply "next" to each handler
> +		 * If any failures occur unwind and revert all back to the original 
> profile
> +		 */
> +		list_for_each_entry(handler, &platform_profile_handler_list, list) {
> +			err = handler->profile_set(handler, next);
> +			if (err) {
> +				pr_err("Failed to set profile for handler %s\n", handler->name);
> +				break;
> +			}
> +		}
> +		if (err) {
> +			list_for_each_entry_continue_reverse(handler, 
> &platform_profile_handler_list, list) {
> +				err = handler->profile_set(handler, profile);
> +				if (err)
> +					pr_err("Failed to revert profile for handler %s\n", 
> handler->name);
> +			}
> +		}
>  	}
> 
> -	err = cur_profile->profile_set(cur_profile, next);
> -	mutex_unlock(&profile_lock);
> -
> -	if (!err)
> -		sysfs_notify(acpi_kobj, NULL, "platform_profile");
> +	sysfs_notify(acpi_kobj, NULL, "platform_profile");
> 
> -	return err;
> +	return 0;
>  }
>  EXPORT_SYMBOL_GPL(platform_profile_cycle);
> 
> @@ -190,21 +224,19 @@ int platform_profile_register(struct 
> platform_profile_handler *pprof)
>  	int err;
> 
>  	guard(mutex)(&profile_lock);
> -	/* We can only have one active profile */
> -	if (cur_profile)
> -		return -EEXIST;
> 
>  	/* Sanity check the profile handler field are set */
>  	if (!pprof || bitmap_empty(pprof->choices, PLATFORM_PROFILE_LAST) ||
>  		!pprof->profile_set || !pprof->profile_get)
>  		return -EINVAL;
> 
> -	err = sysfs_create_group(acpi_kobj, &platform_profile_group);
> -	if (err)
> -		return err;
> +	if (!platform_profile_is_registered()) {
> +		err = sysfs_create_group(acpi_kobj, &platform_profile_group);
> +		if (err)
> +			return err;
> +	}
>  	list_add_tail(&pprof->list, &platform_profile_handler_list);
> 
> -	cur_profile = pprof;
>  	return 0;
>  }
>  EXPORT_SYMBOL_GPL(platform_profile_register);
> @@ -215,7 +247,6 @@ int platform_profile_remove(struct 
> platform_profile_handler *pprof)
> 
>  	list_del(&pprof->list);
> 
> -	cur_profile = NULL;
>  	if (!platform_profile_is_registered())
>  		sysfs_remove_group(acpi_kobj, &platform_profile_group);
> 
> -- 
> 2.43.0

I'm still going thru the code changes - but I'm a bit unsure on the implementation itself.

I'd expect that one of the advantages of having different profile handlers register is that you could support extra & new profiles that might be wanted. For example the recent discussion of the AMD handler providing better tools to tweak advanced system settings for gaming etc. Won't this approach limit that? You'll only be able to have common settings.

I find having a common profile and two different handlers a bit tricky on how to handle. My concern is it can easily lead to conflict in settings. 
If two handlers are doing different operations to provide the same effect - then neither handler is (probably) providing what they think is required. With your CPU vs EC example, the EC will often set CPU clock thresholds and the CPU profile handler will be changing that. If this is done I think it should be explicit to the user (admittedly I'm doing this with my Lenovo hat on - but we certify our platforms with our EC profile handler)

I could see providing two separate handlers. e.g. balanced-A and balanced-B (for driver-A and driver-B) and the user maybe choosing which one they want (or both - though the user interface for that is definitely tricky) 
But choosing one option for two different drivers seems confusing and with unknown side-effects. I appreciate it's complicated by your example wanting to add CPU and EC - I know how much work you've been doing on the AMD CPU front which benefits all systems.

Another concern - would this mean that another driver could limit the options available? For instance if someone wrote a new 'mega-turbo' only profile driver and it loaded - it would then mean no profiles were available for anything as no profiles matched?

Let me know if I've misunderstood the architecture. I didn't fully get how the ASUS and Framework platforms were impacted in the intro I'm afraid.

Thanks!
Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

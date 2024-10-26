Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DB13D9B1711
	for <lists+ibm-acpi-devel@lfdr.de>; Sat, 26 Oct 2024 12:30:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1t4e3m-0003jt-QR;
	Sat, 26 Oct 2024 10:30:18 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1t4e3l-0003jm-EW
 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 26 Oct 2024 10:30:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eAcll/GbuhmxSQ0AC5//ynEg6Ydw9YGmEuIHqlE+MUI=; b=cv8R0JCZMNwKon5WjQRb1IiNor
 mjOVxBwyL2oAYIsavzRBfcwqyzihnGZiYKoisoiBr2ItxdFFL+SbJkt0l8T+ULmESZPVacyizdbVz
 tV4hPVpLPVZHOKjr1puSauGo5aJ30GT4cPX6p09NxHMhft59TFKTNjJT1yNfb0+mTXJo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eAcll/GbuhmxSQ0AC5//ynEg6Ydw9YGmEuIHqlE+MUI=; b=Hezw3youIuI3Q/q/YVd5pyEW3k
 ttv//ymGmOFCojdoE/4CYubmL7thFGS9CrquYYnqM1Y/+pobw42r0QnheQOv1SFTi3D6i4OUACrOf
 t6kCqxram0DqxBOKOoGtHbXqYbG/mKO9tbtFpsUH+odzGYR1IkaLQyvEq1AZMWP5Da60=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t4e3k-0002S2-30 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 26 Oct 2024 10:30:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1729938610;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=eAcll/GbuhmxSQ0AC5//ynEg6Ydw9YGmEuIHqlE+MUI=;
 b=ceJVFjt5o7RsajeDu75sRWCVvRHwbWaZx/JTTXcPauX7SFly2ELap7iGPCA5X0fjBZpVMi
 1ZyQrsO1yMdyr9rr0TJuueNSPjko023+tKD0PnThwR5Yitem+q4U3Ixmh+4zY+5BcLcAJC
 6Eg9w8kJ8ME/StqVKmBQnVS+J0DV7qw=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-461-i7eusqyoNweW-hg-Ihi64w-1; Sat, 26 Oct 2024 06:30:06 -0400
X-MC-Unique: i7eusqyoNweW-hg-Ihi64w-1
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-a99cb787d2cso210818766b.2
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sat, 26 Oct 2024 03:30:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729938605; x=1730543405;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=eAcll/GbuhmxSQ0AC5//ynEg6Ydw9YGmEuIHqlE+MUI=;
 b=jRAltooXAnVJW+Web9hyJCQDpUrx6MRBwBRgKzj+aub3LCFF+V6KMsuwqQNf9gwmW+
 uhQ/l3/NHV9rv1C6i0Fc7exabNqjuYot0+Jrvyd4r02xnkApGd9Btwl2nGikAx2d/PPZ
 4tMVw/PkVM4AW6GyTZddiQ250ZRiJNKjz4mVmUln+mSzLwcsSXO1NFpaVmS/ZARXggxd
 Q+niwkHXWHiEk7KMJb97QH0RSX162byatVaS+04j79D7crmMm5UoGxCK4rWiWHj7YzpG
 +B3EkXaAR9UkSI1qJgqoRf8gJtFcHq+874Jqo7VbIIEuGG2ptdbqVx71lcfvd8cagbak
 6Pqw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVsDZO2thNael+q7NT6N8IaAKYRohBJ0XTyX8GpQ9JSol8K4yiV24YJ9gHTMOYmGzWnXP046YI8R6hcO+8OVg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyIM/gY4IiHgzgGtsgxfEa+xKsF9VgdcmUJ4y/hQF6eFlnNXJBL
 Uk/B0oezOMxcSUwcHGo6NmOy4YsBPG9VTwpKrzI1Ad09kqfh1T6vpEoC3GydX0EinW4F4i/8sH8
 o8G5x6zpnMwCqN2gEo7tUzBX4onR0dnBvCAc3+fDuLFQDY8/GBmOiMcntifiDtsjY9skHQoGU
X-Received: by 2002:a17:906:f5a3:b0:a9a:61d:7084 with SMTP id
 a640c23a62f3a-a9de615f82amr149980566b.50.1729938605393; 
 Sat, 26 Oct 2024 03:30:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFaiatCGjTBn7qZNMoQTinlg9kse4Dblmgk8YaMr/rZi1epzMBQ+2rYzED2AzoeAKDif3BHAg==
X-Received: by 2002:a17:906:f5a3:b0:a9a:61d:7084 with SMTP id
 a640c23a62f3a-a9de615f82amr149974966b.50.1729938604903; 
 Sat, 26 Oct 2024 03:30:04 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a9b1f0277b7sm161957966b.50.2024.10.26.03.30.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 26 Oct 2024 03:30:03 -0700 (PDT)
Message-ID: <bcf83d6a-2e8d-4829-9c38-17459a2687ed@redhat.com>
Date: Sat, 26 Oct 2024 12:30:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mario Limonciello <mario.limonciello@amd.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
References: <20241025193055.2235-1-mario.limonciello@amd.com>
 <20241025193055.2235-8-mario.limonciello@amd.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20241025193055.2235-8-mario.limonciello@amd.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Mario, On 25-Oct-24 9:30 PM, Mario Limonciello wrote: >
 Multiple drivers may attempt to register platform profile handlers, > but
 only one may be registered and the behavior is non-deterministic > for which
 [...] Content analysis details:   (-2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -1.7 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1t4e3k-0002S2-30
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
 "Rafael J . Wysocki" <rafael@kernel.org>, Gergo Koteles <soyer@irl.hu>,
 "Luke D . Jones" <luke@ljones.dev>, Ai Chao <aichao@kylinos.cn>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:MICROSOFT SURFACE PLATFORM PROFILE DRIVER"
 <platform-driver-x86@vger.kernel.org>, Lee Chun-Yi <jlee@suse.com>,
 "open list:ACPI" <linux-acpi@vger.kernel.org>,
 Corentin Chary <corentin.chary@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Mark Pearson <mpearson-lenovo@squebb.ca>, Ike Panhc <ike.pan@canonical.com>,
 Matthew Schwartz <matthew.schwartz@linux.dev>,
 Maximilian Luz <luzmaximilian@gmail.com>,
 "open list:THINKPAD ACPI EXTRAS DRIVER" <ibm-acpi-devel@lists.sourceforge.net>,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Mario,

On 25-Oct-24 9:30 PM, Mario Limonciello wrote:
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
> @@ -36,26 +35,26 @@ static ssize_t platform_profile_choices_show(struct device *dev,
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

Since only choices that are available in all registered handlers will be accepted,
should the output not be limited to only those choices ?

E.g.:

	unsigned long choices = 0;
	bool first = true;

	scoped_cond_guard(mutex_intr, return -ERESTARTSYS, &profile_lock) {
		list_for_each_entry(handler, &platform_profile_handler_list, list) {
			if (first) {
				choices = handler->choices;
				first = false;
			} else {
				choices &= handler->choices;
			}
		}
	}

	for_each_set_bit(i, choices, PLATFORM_PROFILE_LAST) {
		if (len == 0)
			len += sysfs_emit_at(buf, len, "%s", profile_names[i]);
		else
			len += sysfs_emit_at(buf, len, " %s", profile_names[i]);
	}
  	len += sysfs_emit_at(buf, len, "\n");
  	return len;
}

?

Also this means that choices can change now as drivers get loaded /
removed. I believe that power-profiles-daemon matches has some hotplug
handling for the sysfs files showing up? How would that work with choices
changing ?

Or am I misremembering and does p-p-d simply assume all drivers are loaded
when it starts ?

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

Hmm this just goes with the platform returned by the last handler
called ?

Maybe compare results and log some warning if there are different
results between handlers ?

And maybe also:

1. New patch enforcing that all handlers must support plain balanced
at registration time.

2. Check that all handlers agree when a new handler gets registered
and if not then force all handlers to balanced, together with
a sysfs_notify() ?


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

Same issue as before, you are only saving the profile of the last handler called here,
which might even be a profile not supported by all handlers...

Might be easiest to just enforce all handlers support plain balanced
as I suggested above and then on errors revert all handlers to balanced.

This may seem like it is not nice to do, but errors should not happen
so I think this is ok. And if errors do happen then we need to fix
the errors :)

> +
> +		list_for_each_entry(handler, &platform_profile_handler_list, list) {
> +			err = handler->profile_set(handler, i);
> +			if (err) {
> +				pr_err("Failed to set profile for handler %s\n", handler->name);
> +				break;
> +			}
> +		}
> +		if (err) {
> +			list_for_each_entry_continue_reverse(handler, &platform_profile_handler_list, list) {
> +				if (handler->profile_set(handler, profile))
> +					pr_err("Failed to revert profile for handler %s\n", handler->name);
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
> @@ -140,7 +148,8 @@ static const struct attribute_group platform_profile_group = {
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
> +		/* first pass, make sure all handlers agree on the definition of "next" profile */
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
> +				pr_warn("Next profile to cycle to is ambiguous between platform_profile handlers\n");
> +				return -EINVAL;
> +			}
> +			next = next2;
> +		}

Hmm, this seems complicated, I would suggest to factor out the code
to "and" together all the handler's choices which I suggested above
for platform_profile_choices_show() into a helper (with the locking
to be done by the caller) and then call that helper here to get
a choices which is the result if all the choices and-ed together and
simply call find_next_bit_wrap() on the resulting and-ed value ?

Ah I guess another issue is that the handlers may also differ on
which profile they return from handler->profile_get(), so same
issue as in platform_profile_show(). I think this requires
another factored out helper to get a single consistent profile
value for all handlers. Then this helper can be used both in
platform_profile_show() and here to get a "truth" value for the
current active profile and show that / use that as base to pick
the next value.

Note the above approach definitely is going to have issues
if handlers mismatch on which profiles are supported since
you do not skip choices which are only available in one of
the handlers.

> +
> +		/*
> +		 * Second pass: apply "next" to each handler
> +		 * If any failures occur unwind and revert all back to the original profile
> +		 */
> +		list_for_each_entry(handler, &platform_profile_handler_list, list) {
> +			err = handler->profile_set(handler, next);
> +			if (err) {
> +				pr_err("Failed to set profile for handler %s\n", handler->name);
> +				break;
> +			}
> +		}
> +		if (err) {
> +			list_for_each_entry_continue_reverse(handler, &platform_profile_handler_list, list) {
> +				err = handler->profile_set(handler, profile);

Same issue as before, profile contains the profile of the last handler
in the list only.


> +				if (err)
> +					pr_err("Failed to revert profile for handler %s\n", handler->name);
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
> @@ -190,21 +224,19 @@ int platform_profile_register(struct platform_profile_handler *pprof)
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
> @@ -215,7 +247,6 @@ int platform_profile_remove(struct platform_profile_handler *pprof)
>  
>  	list_del(&pprof->list);
>  
> -	cur_profile = NULL;
>  	if (!platform_profile_is_registered())
>  		sysfs_remove_group(acpi_kobj, &platform_profile_group);
>  


Regards,

Hans




_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7717C89C9F2
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  8 Apr 2024 18:42:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rts4C-0007QB-56;
	Mon, 08 Apr 2024 16:41:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rts4A-0007Q4-UO
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 08 Apr 2024 16:41:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WYFhy7LtlEFaejmOfEUdc9o2AS0SlykqOVzLzKcDbrs=; b=OzBa2wPkSAySrhYVImMPNExZGI
 HiDYP1eH8uckjMsIyRFLd0u7bqPVUUUuU6l5ms1H2HkL8cMerxEQeFVkttUnZhI48X3Q2wHKp1uEV
 y9Di82aaFUYP4rAHqQ7r7k/JmGMJcCi9ZqIozd+wjrH+08Sawx13u3iVZBKuYXBo2fqs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WYFhy7LtlEFaejmOfEUdc9o2AS0SlykqOVzLzKcDbrs=; b=XAfXaU2eyXTjha1oeyH6kV6qf5
 iB0VwcYof62NapmA52g4TAwbCHve8Tdb5H9V+CY2XfB335tEoD1h4VuKGCzlfBbz4NZN5LubqQi0z
 Lb160R3A94cm+pHHhTDuQwd6GWWkPGEaAJkGEu3wmBMv+93EKo10UpWgnjHTik2nyK1A=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rts46-00066u-Hq for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 08 Apr 2024 16:41:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1712594504;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WYFhy7LtlEFaejmOfEUdc9o2AS0SlykqOVzLzKcDbrs=;
 b=YWLyveJaFee/bLH03DIT5DRgO1Bdn3YcC459sUCq9df7xgfe9fYCYF8gN89hNLyuOnbP4K
 SuWSQgl5aK9LOHtpvbkrjiGjO1CqioM4jwonF42ONygtQgzHH7SLgPFyMbNOnbM8M9Bxxh
 2JUq7k5PeCXWyZTWWZXnAhBe+1+B5O4=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-413-sKZQ5uvoNIalC_VMbIgzyA-1; Mon, 08 Apr 2024 12:41:42 -0400
X-MC-Unique: sKZQ5uvoNIalC_VMbIgzyA-1
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-a51abd0d7c6so216556866b.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 08 Apr 2024 09:41:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712594501; x=1713199301;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=WYFhy7LtlEFaejmOfEUdc9o2AS0SlykqOVzLzKcDbrs=;
 b=ZOdxUZULuGdNIE8KB5F6xn1LqZnCT/JC4l+haUZNJxR0fgX7F+SFeN9afLK2c8nw8+
 Eapej7zv8gg5wdBnFXLOxtISj6V07rUIT/F869bL95jhZyvmTuynrjF+zjgkDa2nWmGg
 CHxofcmNAvLvs929RWiwdVBTkEJ9nFMBkG42qCfzQ5fv3+Dbbxk3US2EN5VSMHF8gZ8r
 Kre3EVCisTZhfMri4kx8oEpFb1gjOad7Ijlp+QVmCIu43QQkt3bheJhwxtYSLNq/3LxY
 pIbB9Jve+PZ5eVJ54f9WrSviqU+ApPNedhzyHgZtiTsFl1+HEKWz7UqdsCzmfoXB9s3K
 mMdw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVM7CQx2hD3Tql8rlDCPL9EwHBmLBytngyOIaTHD3VJ4DDd2VpqPp97/ZsJQd5vp1fYXChKE2QYKcSevJdGJGnOJRvU8ZHo6DnXMmYMYN66fYcMIoc=
X-Gm-Message-State: AOJu0Ywa3FyFwf8iMUJv+Pt62p5smy+AMM5XGRcg8jVkfIfwli+X3mZh
 xC5jb9JRVE7anG9MLubEHaJFj+0Fv5qIRjRUcaTB8eR+VIxeHyxcV73uodHpqCIorPh4p8tj2Ge
 OquxFcx0ZUiv4ISCBk8UtyJOhNpXsuCp6tGEo+8yTRTlQWSra9YC05sT7zHo+uGXn832FDK/B
X-Received: by 2002:a17:907:9810:b0:a46:f69b:49b1 with SMTP id
 ji16-20020a170907981000b00a46f69b49b1mr8095371ejc.46.1712594501558; 
 Mon, 08 Apr 2024 09:41:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGFGkr7moajAvwmFAdF7FwE057LZo7dEfP2XQoNu+wIaT/whevnNtaEz20216zr4FK5onjG1Q==
X-Received: by 2002:a17:907:9810:b0:a46:f69b:49b1 with SMTP id
 ji16-20020a170907981000b00a46f69b49b1mr8095351ejc.46.1712594501251; 
 Mon, 08 Apr 2024 09:41:41 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 j20-20020a170906255400b00a51cd604c4bsm2270224ejb.149.2024.04.08.09.41.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Apr 2024 09:41:40 -0700 (PDT)
Message-ID: <4e37511c-7570-4ea5-bdf9-6bdd62c63575@redhat.com>
Date: Mon, 8 Apr 2024 18:41:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Gergo Koteles <soyer@irl.hu>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Len Brown <lenb@kernel.org>, Ike Panhc <ike.pan@canonical.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 =?UTF-8?Q?Barnab=C3=A1s_P=C5=91cze?= <pobrn@protonmail.com>
References: <cover.1712360639.git.soyer@irl.hu>
 <afd975d98708921f67a269aaf031a1dd1be1220d.1712360639.git.soyer@irl.hu>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <afd975d98708921f67a269aaf031a1dd1be1220d.1712360639.git.soyer@irl.hu>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -1.7 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Gergo, On 4/6/24 2:01 AM,
 Gergo Koteles wrote: > Some laptops
 have a key to switch platform profiles. > > Add a platform_profile_cycle()
 function to cycle between the enabled > profiles. > > Signed-off-by: G [...]
 Content analysis details:   (-1.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rts46-00066u-Hq
Subject: Re: [ibm-acpi-devel] [PATCH v5 1/3] ACPI: platform-profile: add
 platform_profile_cycle()
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
Cc: linux-acpi@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 linux-kernel@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Gergo,

On 4/6/24 2:01 AM, Gergo Koteles wrote:
> Some laptops have a key to switch platform profiles.
> 
> Add a platform_profile_cycle() function to cycle between the enabled
> profiles.
> 
> Signed-off-by: Gergo Koteles <soyer@irl.hu>

Thank you for your patch, 1 small remark below,
otherwise this looks good to me.

Rafael, may I have your Ack for merging this through the pdx86 tree
together with the rest of the series once my remark has been addressed ?


> ---
>  drivers/acpi/platform_profile.c  | 39 ++++++++++++++++++++++++++++++++
>  include/linux/platform_profile.h |  1 +
>  2 files changed, 40 insertions(+)
> 
> diff --git a/drivers/acpi/platform_profile.c b/drivers/acpi/platform_profile.c
> index d418462ab791..acc606af812a 100644
> --- a/drivers/acpi/platform_profile.c
> +++ b/drivers/acpi/platform_profile.c
> @@ -136,6 +136,45 @@ void platform_profile_notify(void)
>  }
>  EXPORT_SYMBOL_GPL(platform_profile_notify);
>  
> +int platform_profile_cycle(void)
> +{
> +	enum platform_profile_option profile;
> +	enum platform_profile_option next;
> +	int err;
> +
> +	err = mutex_lock_interruptible(&profile_lock);
> +	if (err)
> +		return err;
> +
> +	if (!cur_profile) {
> +		mutex_unlock(&profile_lock);
> +		return -ENODEV;
> +	}
> +
> +	err = cur_profile->profile_get(cur_profile, &profile);
> +	if (err) {
> +		mutex_unlock(&profile_lock);
> +		return err;
> +	}
> +
> +	next = find_next_bit_wrap(cur_profile->choices,
> +				  ARRAY_SIZE(profile_names), profile + 1);
> +
> +	if (WARN_ON(next == ARRAY_SIZE(profile_names))) {

Other code in drivers/acpi/platform_profile.c uses PLATFORM_PROFILE_LAST
instead of ARRAY_SIZE(profile_names) (these are guaranteed to be equal)
please switch to using PLATFORM_PROFILE_LAST for consistency.

Regards,

Hans





> +		mutex_unlock(&profile_lock);
> +		return -EINVAL;
> +	}
> +
> +	err = cur_profile->profile_set(cur_profile, next);
> +	mutex_unlock(&profile_lock);
> +
> +	if (!err)
> +		sysfs_notify(acpi_kobj, NULL, "platform_profile");
> +
> +	return err;
> +}
> +EXPORT_SYMBOL_GPL(platform_profile_cycle);
> +
>  int platform_profile_register(struct platform_profile_handler *pprof)
>  {
>  	int err;
> diff --git a/include/linux/platform_profile.h b/include/linux/platform_profile.h
> index e5cbb6841f3a..f5492ed413f3 100644
> --- a/include/linux/platform_profile.h
> +++ b/include/linux/platform_profile.h
> @@ -36,6 +36,7 @@ struct platform_profile_handler {
>  
>  int platform_profile_register(struct platform_profile_handler *pprof);
>  int platform_profile_remove(void);
> +int platform_profile_cycle(void);
>  void platform_profile_notify(void);
>  
>  #endif  /*_PLATFORM_PROFILE_H_*/



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

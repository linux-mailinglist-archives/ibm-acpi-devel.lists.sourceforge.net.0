Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A1730F780
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  4 Feb 2021 17:20:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1l7hMi-0004aD-Sl; Thu, 04 Feb 2021 16:20:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1l7hMh-0004a5-Kn
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 04 Feb 2021 16:20:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oniC19vIHs0GOyeonXQqZoxxZ4D9xyTI9e3aNUHMkGA=; b=Or4lTJoGcMsUNDnpEwKHD44TGk
 3lD2FJXJfqpZO/atXJ3XyWXeSfzQgK5lk4iZJATITyKp+M2hmzax2qevgK2gMoFM/VkccIsKD8Tpb
 VaNyEHRWzawfzYxia8Hiuis97uUuXXCjbjbBZCcKmygqpqBayQDC+iMWAXrhE3+w43/4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oniC19vIHs0GOyeonXQqZoxxZ4D9xyTI9e3aNUHMkGA=; b=QdFBzXoi2ax/On4af+BMN2FMzw
 FUguahKQkSygjb26SknSvYxjzgbHckZZsNHT27s3a1ULirIpjuBBuwjDbdQZZ4APl7pPHRssNbJjG
 exntoyO7V2Dc5lsfuv1zjsVUrKI8Dl27pKv+MM9v5SaE2xIxb6ltRjQWd3QHoML/8oNc=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.3)
 id 1l7hMF-0005di-NX
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 04 Feb 2021 16:20:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1612455585;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oniC19vIHs0GOyeonXQqZoxxZ4D9xyTI9e3aNUHMkGA=;
 b=R5sqHcpoZXqq6Minry8Gq9oCmyjiKgnP5frMdGuXL2cIxtzfEaL8Z0d7GrHI3vL08TYG6d
 6vMQQiOqL6JNnFzMV7ZWomJ41x20ZLU/jzPr87BsWBq066qTnBD/QsOrgzeBqzqgy7IhR4
 xWrt3PYXwNaEEsf8OWRVAUZsvudk4Kc=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-66-R79ytNi8NHCtW99IC2EpMA-1; Thu, 04 Feb 2021 11:19:44 -0500
X-MC-Unique: R79ytNi8NHCtW99IC2EpMA-1
Received: by mail-ed1-f69.google.com with SMTP id u26so3214172edv.18
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 04 Feb 2021 08:19:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=oniC19vIHs0GOyeonXQqZoxxZ4D9xyTI9e3aNUHMkGA=;
 b=seJumKdWdpfFmlcx8cGv+1ZIHfpVj0hynW0Syo1FChgVArgo3S3pxJqTTtGbfKTVAd
 A2qUjLnaMPwFM7bK6a1Obv+EDDDsehOkhEAhxqETrkng4nr+RwyQPFnWsQbx0I8BNbeG
 mhCNZpuHnLLioXy1m1Ay93ZhT4CB/7GPvwtgKyUQs2Pw/a8IjWYOIMjNFbaeOZtg1seO
 y+hktJSH8PE/G4zQi7L/J+b6LWRNLOGQPOl5R08FkQipPm2QxXAPZsM2ZdiG1xzDTn3C
 i6Ta+aYGlqANducaabT88PrQALKWkFcYzUKcwrhGIXGrIrCKhIyaZzW5dukAPI5tAyWM
 NQ3Q==
X-Gm-Message-State: AOAM530kXty4pb4sv9MXdQqnODpEix+XpF7h9PEXp62yurlG1ctionr1
 /wjLisGsarreWABGJqODz0vKjG2yo9+UcNBVKZ5XwrZyAD+wmXg9EoPcY2xPzEtT2s0uVCyIJHa
 xuky4HQoWM5IsbSLxZyU34QcJopxIjNQd1s4vgvU7JgOXtGRQZbrCrvaV9QWJeF5DIBYrbUs2YF
 hmcOAIccDNuJE=
X-Received: by 2002:aa7:cd61:: with SMTP id ca1mr3134614edb.76.1612455582677; 
 Thu, 04 Feb 2021 08:19:42 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwAArxXtNfuS5wkH6IxZvH0OCR4b34syfGKiK4rM9d9z+bZoBZJMjdTHD93a8h+1YeN761Ljw==
X-Received: by 2002:aa7:cd61:: with SMTP id ca1mr3134572edb.76.1612455582282; 
 Thu, 04 Feb 2021 08:19:42 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-37a3-353b-be90-1238.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:37a3:353b:be90:1238])
 by smtp.gmail.com with ESMTPSA id t3sm2709511eds.89.2021.02.04.08.19.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 04 Feb 2021 08:19:41 -0800 (PST)
To: Arnd Bergmann <arnd@kernel.org>, Ike Panhc <ike.pan@canonical.com>,
 Mark Gross <mgross@linux.intel.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Jiaxun Yang <jiaxun.yang@flygoat.com>, Mark Pearson <markpearson@lenovo.com>
References: <20210204153924.1534813-1-arnd@kernel.org>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <2c686820-817a-8728-66e0-cbf1b3e64e2d@redhat.com>
Date: Thu, 4 Feb 2021 17:19:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210204153924.1534813-1-arnd@kernel.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arndb.de]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1l7hMF-0005di-NX
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86:
 ideapad-laptop/thinkpad_acpi: mark conflicting symbols static
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
Cc: Arnd Bergmann <arnd@arndb.de>, Tom Rix <trix@redhat.com>,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, Aaron Ma <aaron.ma@canonical.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Nitin Joshi <njoshi1@lenovo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Arnd,

On 2/4/21 4:38 PM, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> Three of the newly added functions are accidently not marked 'static' which
> causes a warning when building with W=1
> 
> drivers/platform/x86/thinkpad_acpi.c:10081:5: warning: no previous prototype for function 'dytc_profile_get' [-Wmissing-prototypes]
> drivers/platform/x86/thinkpad_acpi.c:10095:5: warning: no previous prototype for function 'dytc_cql_command' [-Wmissing-prototypes]
> drivers/platform/x86/thinkpad_acpi.c:10133:5: warning: no previous prototype for function 'dytc_profile_set' [-Wmissing-prototypes]
> 
> The functions are also present in two files, causing a link error when
> both are built into the kernel:

Thank you for your patch, but the issue has already been fixed in both drivers
in my review-hans branch (which will become for-next soon):

https://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-x86.git/log/?h=review-hans

(note the ideapad fix is part of the big set of ideapad cleanups)

Regards,

Hans




> 
> ld.lld: error: duplicate symbol: dytc_cql_command
>>>> defined at ideapad-laptop.c
>>>>            platform/x86/ideapad-laptop.o:(dytc_cql_command) in archive drivers/built-in.a
>>>> defined at thinkpad_acpi.c
>>>>            platform/x86/thinkpad_acpi.o:(.text+0x20) in archive drivers/built-in.a
> 
> ld.lld: error: duplicate symbol: dytc_profile_get
>>>> defined at ideapad-laptop.c
>>>>            platform/x86/ideapad-laptop.o:(dytc_profile_get) in archive drivers/built-in.a
>>>> defined at thinkpad_acpi.c
>>>>            platform/x86/thinkpad_acpi.o:(.text+0x0) in archive drivers/built-in.a
> 
> ld.lld: error: duplicate symbol: dytc_profile_set
>>>> defined at ideapad-laptop.c
>>>>            platform/x86/ideapad-laptop.o:(dytc_profile_set) in archive drivers/built-in.a
>>>> defined at thinkpad_acpi.c
>>>>            platform/x86/thinkpad_acpi.o:(.text+0x220) in archive drivers/built-in.a
> 
> Mark these all as static to avoid both problems.
> 
> Fixes: eabe533904cb ("platform/x86: ideapad-laptop: DYTC Platform profile support")
> Fixes: c3bfcd4c6762 ("platform/x86: thinkpad_acpi: Add platform profile support")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/platform/x86/ideapad-laptop.c | 11 ++++++-----
>  drivers/platform/x86/thinkpad_acpi.c  | 10 +++++-----
>  2 files changed, 11 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/platform/x86/ideapad-laptop.c b/drivers/platform/x86/ideapad-laptop.c
> index cc42af2a0a98..6095a4d54881 100644
> --- a/drivers/platform/x86/ideapad-laptop.c
> +++ b/drivers/platform/x86/ideapad-laptop.c
> @@ -656,8 +656,8 @@ static int convert_profile_to_dytc(enum platform_profile_option profile, int *pe
>   * dytc_profile_get: Function to register with platform_profile
>   * handler. Returns current platform profile.
>   */
> -int dytc_profile_get(struct platform_profile_handler *pprof,
> -			enum platform_profile_option *profile)
> +static int dytc_profile_get(struct platform_profile_handler *pprof,
> +			    enum platform_profile_option *profile)
>  {
>  	struct ideapad_dytc_priv *dytc;
>  
> @@ -673,7 +673,8 @@ int dytc_profile_get(struct platform_profile_handler *pprof,
>   *  - enable CQL
>   *  If not in CQL mode, just run the command
>   */
> -int dytc_cql_command(struct ideapad_private *priv, int command, int *output)
> +static int dytc_cql_command(struct ideapad_private *priv, int command,
> +			    int *output)
>  {
>  	int err, cmd_err, dummy;
>  	int cur_funcmode;
> @@ -710,8 +711,8 @@ int dytc_cql_command(struct ideapad_private *priv, int command, int *output)
>   * dytc_profile_set: Function to register with platform_profile
>   * handler. Sets current platform profile.
>   */
> -int dytc_profile_set(struct platform_profile_handler *pprof,
> -			enum platform_profile_option profile)
> +static int dytc_profile_set(struct platform_profile_handler *pprof,
> +			    enum platform_profile_option profile)
>  {
>  	struct ideapad_dytc_priv *dytc;
>  	struct ideapad_private *priv;
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 18b390153e7f..42e0a497d69e 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -10078,8 +10078,8 @@ static int convert_profile_to_dytc(enum platform_profile_option profile, int *pe
>   * dytc_profile_get: Function to register with platform_profile
>   * handler. Returns current platform profile.
>   */
> -int dytc_profile_get(struct platform_profile_handler *pprof,
> -			enum platform_profile_option *profile)
> +static int dytc_profile_get(struct platform_profile_handler *pprof,
> +			    enum platform_profile_option *profile)
>  {
>  	*profile = dytc_current_profile;
>  	return 0;
> @@ -10092,7 +10092,7 @@ int dytc_profile_get(struct platform_profile_handler *pprof,
>   *  - enable CQL
>   *  If not in CQL mode, just run the command
>   */
> -int dytc_cql_command(int command, int *output)
> +static int dytc_cql_command(int command, int *output)
>  {
>  	int err, cmd_err, dummy;
>  	int cur_funcmode;
> @@ -10130,8 +10130,8 @@ int dytc_cql_command(int command, int *output)
>   * dytc_profile_set: Function to register with platform_profile
>   * handler. Sets current platform profile.
>   */
> -int dytc_profile_set(struct platform_profile_handler *pprof,
> -			enum platform_profile_option profile)
> +static int dytc_profile_set(struct platform_profile_handler *pprof,
> +			    enum platform_profile_option profile)
>  {
>  	int output;
>  	int err;
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

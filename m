Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB992268757
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 14 Sep 2020 10:40:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kHk1v-0005LS-Me; Mon, 14 Sep 2020 08:40:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1kHk1t-0005LK-NE
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 14 Sep 2020 08:40:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oCnbyPYtJnKEy5YVojzV65Y7fbgg+Mn8uVF7EIN9WS0=; b=bEw/y64zs9bHZjEtIClJmPub8T
 PZBus7OO1RPNLmmabD9VZv4Gn+hboZGst1gNaPX3wHi3He5ldeV1FIg1YuYh67BJDeW4BGZ9dNdss
 inlLBD/gackduB2IKjbM73dlSwINFVLUCGQsACNbxDsrvuUi8TeuqyTExutCJEBWq+2U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oCnbyPYtJnKEy5YVojzV65Y7fbgg+Mn8uVF7EIN9WS0=; b=SDJ2faIXamV8Ct9hV57vldXKNO
 AxHVebgIizhRNoMqufP3LrdmShDj/oFLlAguKM/5nLpho6tLNNN2BSa8D48PJTo+SnDKTYWahLKwk
 ugHzMec6FyMcOFWjq4NQHWfjc7WPKEhwyQ03Rl7/O9RMnEWEaH6nJJmtjXwiPDWCSjMc=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kHk1e-0089zZ-8d
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 14 Sep 2020 08:40:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1600072784;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oCnbyPYtJnKEy5YVojzV65Y7fbgg+Mn8uVF7EIN9WS0=;
 b=dXNxKjjZYWUIr8RDKC0BhXXWqnNNdQ3aRRFrvw1tYj73n/OTXzqfjoiH2wadTS3semc9fk
 Qeul6CaIG5VjoKp3h9MBMJVm30fTyCXpatdjEfju1lQhwFGIoHIHqP4jByeyThCnTCbfC3
 xhW6vgwtV+gapmTxJuLxlxj5axrMiPU=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-250-Iny4g_ERN6St7-pQxnOUEg-1; Mon, 14 Sep 2020 04:39:42 -0400
X-MC-Unique: Iny4g_ERN6St7-pQxnOUEg-1
Received: by mail-ed1-f69.google.com with SMTP id y21so8892380edu.23
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 14 Sep 2020 01:39:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=oCnbyPYtJnKEy5YVojzV65Y7fbgg+Mn8uVF7EIN9WS0=;
 b=q2lrprMw7sNrB4PK44MTX/xff+kQSwpGovsbXKqdJqQbBHZx0dcLdsLNfpHqXBTMQa
 OiYa8l3crLNBVCmlJT/ofmwhj9nOlKn6cLVrqh92TVAl1wIsittsW+knTvNFmAXE/2CV
 VlS6wiNCEXCZXXilQ4MJkT80D7QxnPfVSjDif5w0WrJ+gGrU3mWjdh8dq5GKJNMsz2HU
 PDbTcDdLdv+6ql0qCvMHG6RhHePLoOFtNQ+51UY9ZzHbbIxkJPEajvWZikNKDcTFBU9h
 kR2qnPe4k3JxIpByJd8TTMB6g3cGjAw52JRTQUGvR1rLIckqXUPWIWmLUboWOqWRR9+o
 uojw==
X-Gm-Message-State: AOAM532Cqly5Ami+slbzRhJsF/+GaK0NwW+5Dbk8ZRafeQEvcOvg1O+t
 d9rWhlnSbsO9Jm/0Fjg0SwR0Ecnd9rHp7VwEPhXVnAZsyBb40CL3lOwEpBwJMFqGdD30SF8Rhrt
 2buPTbi1/TkPv1l+dM3ZBA9wakl6As+KCa3I=
X-Received: by 2002:aa7:cc8d:: with SMTP id p13mr16650053edt.136.1600072781163; 
 Mon, 14 Sep 2020 01:39:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzZXdVARzLUw7WAq7wkDHEHhLPkouA7UD6PE5EzIGCpR1WR3HyevCJtD0Jl6rog54V8dyUT9A==
X-Received: by 2002:aa7:cc8d:: with SMTP id p13mr16650038edt.136.1600072781005; 
 Mon, 14 Sep 2020 01:39:41 -0700 (PDT)
Received: from x1.localdomain ([78.108.130.193])
 by smtp.gmail.com with ESMTPSA id jo2sm7137504ejb.101.2020.09.14.01.39.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Sep 2020 01:39:40 -0700 (PDT)
To: trix@redhat.com, ibm-acpi@hmh.eng.br, dvhart@infradead.org,
 andy@infradead.org, natechancellor@gmail.com, ndesaulniers@google.com,
 len.brown@intel.com
References: <20200913190203.22238-1-trix@redhat.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <a20bfbb6-65d4-2aef-1b78-15af329d77b4@redhat.com>
Date: Mon, 14 Sep 2020 10:39:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200913190203.22238-1-trix@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0.003
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.120 listed in list.dnswl.org]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1kHk1e-0089zZ-8d
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi:
 initialize tp_nvram_state variable
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
Cc: ibm-acpi-devel@lists.sourceforge.net, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 9/13/20 9:02 PM, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> clang static analysis flags this represenative problem
> thinkpad_acpi.c:2523:7: warning: Branch condition evaluates
>    to a garbage value
>                  if (!oldn->mute ||
>                      ^~~~~~~~~~~
> 
> In hotkey_kthread() mute is conditionally set by hotkey_read_nvram()
> but unconditionally checked by hotkey_compare_and_issue_event().
> So the tp_nvram_state variable s[2] needs to be initialized.
> 
> Fixes: 01e88f25985d ("ACPI: thinkpad-acpi: add CMOS NVRAM polling for hot keys (v9)")

Looking at the code I do not think this can actually happen,
this can only happen if the poll_mask == 0 the first time
through the loop so s[1] does never gets initialized and then
the second time to the loop poll_mask != 0, but if poll_mask
changes then we hit:

                 mutex_lock(&hotkey_thread_data_mutex);
                 if (was_frozen || hotkey_config_change != change_detector) {
                         /* forget old state on thaw or config change */
                         si = so;
                         t = 0;
                         change_detector = hotkey_config_change;
                 }

Where we set si = so so then this can also not happen.

I can understand the static-analyzer warning about this, and fixing
that warning is good. But I doubt that this warrants a fixes tag.

So with the Fixes tag dropped this is:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>


> Signed-off-by: Tom Rix <trix@redhat.com>
> ---
>   drivers/platform/x86/thinkpad_acpi.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 47925c319d7b..24da8b6872f2 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -2573,7 +2573,7 @@ static void hotkey_compare_and_issue_event(struct tp_nvram_state *oldn,
>    */
>   static int hotkey_kthread(void *data)
>   {
> -	struct tp_nvram_state s[2];
> +	struct tp_nvram_state s[2] = { 0 };
>   	u32 poll_mask, event_mask;
>   	unsigned int si, so;
>   	unsigned long t;
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

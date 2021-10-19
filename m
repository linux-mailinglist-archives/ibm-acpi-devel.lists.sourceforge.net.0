Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E35A7433A27
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 19 Oct 2021 17:21:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mcqvE-0007gq-6Q; Tue, 19 Oct 2021 15:21:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1mcqvD-0007ge-0X
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 19 Oct 2021 15:20:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZWUsS1V9g+wCEnrKEW2P2nBdry4D/ofDOreqnNn0C2s=; b=fRJbkO6jt9SBo7/F1/PlFbIPmI
 owiEYi98/g0XGX0Jfb0N8jCcbatEwhZ65h9rCqrV4iqpopxNfwibiJqfokq57qIjwL3rXbYECb3pK
 YSyu+Q9IegpMWAdi/vsw7X5ry/Ckt8HCTZw5ZMHEHowtYwB2IiWHc6I4irRsvYNKWf0k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZWUsS1V9g+wCEnrKEW2P2nBdry4D/ofDOreqnNn0C2s=; b=KO0MOGryTTgKH5LgdQaMOm/WWX
 pnQ49FocnDmz1nzxcGT3xwGKsNvzgZrHrK/xSa4ho2RrtyMSEoKofbmGWBJZrwog6oZCRt2AzLphV
 oAxkxr6cQDTHHadtVRmZ6BSTz6zT6DI0R2Kez1uCd2bv5pY8mPyXa7tlSdqC+mjGow0s=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcqvC-006CXk-Bd
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 19 Oct 2021 15:20:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634656852;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZWUsS1V9g+wCEnrKEW2P2nBdry4D/ofDOreqnNn0C2s=;
 b=Vk4LN6oRY6ewYewoUZ9rrKH1StT7SYLbQFEU+oqBmbGO2HVBEk7C/jolAs2tu//TcKOGsc
 8MY61QlZ4CISn3Y94Qvu0G9rt8gkIJoypEihCN5ZqMtm9WFaJjjVFnlgRMD9ZU2RuXaZ3W
 tE6y2b8rzinsSSxeSVMQKoFFF6QUzW8=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-563-cAhNUGMDP1Kt_Q8A7Ktr9A-1; Tue, 19 Oct 2021 11:20:50 -0400
X-MC-Unique: cAhNUGMDP1Kt_Q8A7Ktr9A-1
Received: by mail-ed1-f71.google.com with SMTP id
 f4-20020a50e084000000b003db585bc274so17888136edl.17
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 19 Oct 2021 08:20:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=ZWUsS1V9g+wCEnrKEW2P2nBdry4D/ofDOreqnNn0C2s=;
 b=07lpfe2nCnzEhIEwPUnPagTTC+O4oQN6ya23ZO8HstosOdzR4xsf/788kXQd8f3pV4
 YC8VTSieXKiX06TurM1gYMyBBpde7zWlltF1GYwmQ86MKPv+g5BfZkvKJSdoR65nULQc
 SWjBm7MhodosQEBaf/R6qLnggMskS1M0IAYIhV2rUNkv2/uwGbX7PVe1dFZF3g9t2CyF
 aK7HNCh7cGUAvQM73jLjQppWfYHegCM+4ZtWCqjPc7zssJ9y9kXiE62hB6zP7uygB2Hn
 IQkBoBFfYmzgbgilpyrj3WOPgw6+oCqgUqFSv0LDbJQ6vPy7P8f38BJeZ/j6o47NBWPa
 vZ0Q==
X-Gm-Message-State: AOAM531xgCYBwTbfJDPwYTJiAtxCZDnA25H95WELMzsYqsxmnoZixM0t
 IUIf76BeqcLanfmZgGHeCnOrDdoZYwBATT1EQJohg+9pKmV9/iLoLWP15Lexta4Bkfr2LEXlPcP
 7Iv39TPLzF66OQFZnUSS1x+eie62bhZ232so=
X-Received: by 2002:a17:906:6149:: with SMTP id
 p9mr14323015ejl.362.1634656848835; 
 Tue, 19 Oct 2021 08:20:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyW6yXFO906BnyicHeJfsJ3U1p1KKs/jg69z8HMFssRbuPqqO7meXlrWwPYJVckb8fdiwjteg==
X-Received: by 2002:a17:906:6149:: with SMTP id
 p9mr14322995ejl.362.1634656848617; 
 Tue, 19 Oct 2021 08:20:48 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c1e:bf00:1054:9d19:e0f0:8214?
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id s12sm3985147edj.82.2021.10.19.08.20.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 Oct 2021 08:20:48 -0700 (PDT)
Message-ID: <21ebf31f-2f2a-2f5e-e731-a44ea178a6bd@redhat.com>
Date: Tue, 19 Oct 2021 17:20:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.0
To: Nathan Chancellor <nathan@kernel.org>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Mark Gross <markgross@kernel.org>
References: <20211018182537.2316800-1-nathan@kernel.org>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20211018182537.2316800-1-nathan@kernel.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -3.6 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 10/18/21 20:25,
 Nathan Chancellor wrote: > A new warning
 in clang points out a use of bitwise OR with boolean > expressions in this
 driver: > > drivers/platform/x86/thinkpad_acpi.c:9061:11: error: [...] 
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mcqvC-006CXk-Bd
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Fix
 bitwise vs. logical warning
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
Cc: Tor Vic <torvic9@mailbox.org>, llvm@lists.linux.dev,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 10/18/21 20:25, Nathan Chancellor wrote:
> A new warning in clang points out a use of bitwise OR with boolean
> expressions in this driver:
> 
> drivers/platform/x86/thinkpad_acpi.c:9061:11: error: use of bitwise '|' with boolean operands [-Werror,-Wbitwise-instead-of-logical]
>         else if ((strlencmp(cmd, "level disengaged") == 0) |
>                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>                                                            ||
> drivers/platform/x86/thinkpad_acpi.c:9061:11: note: cast one or both operands to int to silence this warning
> 1 error generated.
> 
> This should clearly be a logical OR so change it to fix the warning.
> 
> Fixes: fe98a52ce754 ("ACPI: thinkpad-acpi: add sysfs support to fan subdriver")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1476
> Reported-by: Tor Vic <torvic9@mailbox.org>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Thank you for your patch, I've applied this patch to my review-hans 
branch:
https://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-x86.git/log/?h=review-hans

Note it will show up in my review-hans branch once I've pushed my
local branch there, which might take a while.

Once I've run some tests on this branch the patches there will be
added to the platform-drivers-x86/for-next branch and eventually
will be included in the pdx86 pull-request to Linus for the next
merge-window.

Regards,

Hans


> ---
>  drivers/platform/x86/thinkpad_acpi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 07b9710d500e..7442c3bb446a 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -9058,7 +9058,7 @@ static int fan_write_cmd_level(const char *cmd, int *rc)
>  
>  	if (strlencmp(cmd, "level auto") == 0)
>  		level = TP_EC_FAN_AUTO;
> -	else if ((strlencmp(cmd, "level disengaged") == 0) |
> +	else if ((strlencmp(cmd, "level disengaged") == 0) ||
>  			(strlencmp(cmd, "level full-speed") == 0))
>  		level = TP_EC_FAN_FULLSPEED;
>  	else if (sscanf(cmd, "level %d", &level) != 1)
> 
> base-commit: 85303db36b6e170917a7bc6aae4898c31a5272a0
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

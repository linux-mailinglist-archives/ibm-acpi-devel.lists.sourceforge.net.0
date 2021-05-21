Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F4538C3D2
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 21 May 2021 11:50:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1lk1n7-0007C0-15; Fri, 21 May 2021 09:50:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1lk1n5-0007BD-3v
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 21 May 2021 09:49:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IjVI8NV63LFnPGjIGDVYVcxDE8c9QMm9DxXJ2CvIadY=; b=aI5puwZudKnWgvoMMTMYwFbwEV
 oFMEQjQ6LjWsK7fu5Ta5FJNGEnbb/OZf39m0kzhCyVR4HyF4BSWPCw+skoi2oy48urSYBgnPPts+v
 TgqhYrMBeoGzMayifED1fuvT18JJxG+GA30b3MP+CMzCo6o2J5EcT1MWxYzgrSZlIpJY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IjVI8NV63LFnPGjIGDVYVcxDE8c9QMm9DxXJ2CvIadY=; b=Vz/WZt+rbRN+e0IKFMr1kPFz56
 3WYa1/kIAt3m8piRDuF9UzVanfK5btQmhbVO5Faqi6jeyyxMsGCoVgSBdqelJu/1rJU4+STLPgYfm
 WxF6AKxOjP9oVFyqTZlsHM+n+j84sZYcEROExWEFNUn25bz6Gvtn59XI9fjsjChNLx5c=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lk1mw-0006Qh-SO
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 21 May 2021 09:49:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1621590585;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IjVI8NV63LFnPGjIGDVYVcxDE8c9QMm9DxXJ2CvIadY=;
 b=AVHe7j1yI9ft5TGKocM2gXTZB+uNzl233tyjcQmn/HJevnwzHT78bINGV6L3+nDlKKFpvb
 eQEWanqDVAi6TJiF/jRb5APtw52uank29gyHOOwx6rb56NjRIxxCwtaUQe4SODIGKDpllx
 F68B1ROfFqtaYLKlh5YkeJ/m9KA11qQ=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-280-sJcmiIKRNbeOCuLXcGWtqA-1; Fri, 21 May 2021 05:49:44 -0400
X-MC-Unique: sJcmiIKRNbeOCuLXcGWtqA-1
Received: by mail-ej1-f70.google.com with SMTP id
 n25-20020a170906b319b02903d4dc1bc46cso5985924ejz.2
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 21 May 2021 02:49:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=IjVI8NV63LFnPGjIGDVYVcxDE8c9QMm9DxXJ2CvIadY=;
 b=YpjvxCiFSjKPFN5ANSwLl/uJ9ClwcgwShL9y1k4zOD0I6C6Z+VMWUy0scEJPlXkaz+
 Ns1usOdaT4v/C2h00o8SVzM6WcpU5hBqsRCszFhWOBL/4xT53EFskh4EgmXCtkCxvjBw
 3EFej69T+G62iFUxpuilMgrkwrZvvNQXPJyJK48nC80ol217btCoovC/rXAfpho6l4MC
 kDWzBITyE2L812J/W9xBV4K6HldQOX8rBM3BbiVCa49hovIqIfLJZ7kyZKuT0G3QhKgz
 NSx75Gs3Pn7B2iiIrZ6bq6GClKPVxAaf4Hu52p1dWOAdT0Wz3vEQsa1m0bCfHAsz7Gjf
 eLHg==
X-Gm-Message-State: AOAM530jWJeuRt+sobpawZeGHRXNcyFU9Qc2LnoDBQO1kxzmSksVCSWn
 tt3Z/c1+OpUPfRJph+0BDda5WaZbg5og2xlsE5pUvnd5HzOjzc4QLVj4U7XqCWMUehKeONk32/6
 kpae/9uOgG2Fsn0SMTa6OkMM8KM4JRoU1YV8=
X-Received: by 2002:a50:9549:: with SMTP id v9mr5774802eda.312.1621590583170; 
 Fri, 21 May 2021 02:49:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxGCWJDbkwFAmEbqh+wdMCPdSMdHGIeh58ElK08TuCsv7fsjYCeXL6Z9Y7Ni3bPbEWS1QxI7A==
X-Received: by 2002:a50:9549:: with SMTP id v9mr5774787eda.312.1621590582999; 
 Fri, 21 May 2021 02:49:42 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id by3sm3715628edb.38.2021.05.21.02.49.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 21 May 2021 02:49:42 -0700 (PDT)
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>, hmh@hmh.eng.br
References: <1621589904-64475-1-git-send-email-jiapeng.chong@linux.alibaba.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <00c331bb-17ec-89c0-6dd0-ffe2933df07b@redhat.com>
Date: Fri, 21 May 2021 11:49:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <1621589904-64475-1-git-send-email-jiapeng.chong@linux.alibaba.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lk1mw-0006Qh-SO
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Fix
 inconsistent indenting
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
Cc: linux-hwmon@vger.kernel.org, jdelvare@suse.com, mgross@linux.intel.com,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net, linux@roeck-us.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 5/21/21 11:38 AM, Jiapeng Chong wrote:
> Eliminate the follow smatch warning:
> 
> drivers/platform/x86/thinkpad_acpi.c:7942 volume_write() warn:
> inconsistent indenting.
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
> ---
>  drivers/platform/x86/thinkpad_acpi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index dd60c93..d0aa566 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -7939,7 +7939,7 @@ static int volume_write(char *buf)
>  			} else if (sscanf(cmd, "level %u", &l) == 1 &&
>  				   l >= 0 && l <= TP_EC_VOLUME_MAX) {
>  					new_level = l;
> -				continue;
> +					continue;
>  			}
>  		}
>  		if (strlencmp(cmd, "mute") == 0)

Thank you for your patch, but actually the indentation of the "new_level = l;"
is wrong, it is indented one level too much.

Please send a new version changing (reducing) the indentation of the
"new_level = l;" statement instead.

Regards,

Hans



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

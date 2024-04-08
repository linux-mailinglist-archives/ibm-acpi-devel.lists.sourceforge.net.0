Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8F989BF5A
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  8 Apr 2024 14:46:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rtoO8-0000od-B7;
	Mon, 08 Apr 2024 12:46:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rtoO6-0000oW-Rx
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 08 Apr 2024 12:46:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Oa0dQJ1NfzkDJ58Nm3G99Pr4wnpg2bxLGHQnIfyvxPo=; b=ZZ4CLKYtE2kC/HbN5UeaRkN/GQ
 Lb3QUEmCPaJaK0He239wAYn0XxT/jjOaclK79qq10uwU/3XupljDTowyv4wIsS9Uus8coNUKaDzTT
 mMmEXQS6ypg151jYchDI7DXZp2H5BsuHoMfcNzVqN6unUloqmNXAxbjDq9LBuX9zeO1s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Oa0dQJ1NfzkDJ58Nm3G99Pr4wnpg2bxLGHQnIfyvxPo=; b=RnjzfnauN++HmSVZ6FqCDv+NR9
 vIIWibNNEuLayKDD19zeEkXr+BLHzAON62T6qlQ6uGKzfD5Hhj/O5V9y1YGZKljlnppBK83+A0ESn
 aM5R6rQPqJLmEApEKVQufKyw+FfPADkZmZh/qY1ltlqhDEm7XTg5FStXNNvvWXsS6gVU=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rtoO5-0001iy-0U for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 08 Apr 2024 12:46:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1712580362;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Oa0dQJ1NfzkDJ58Nm3G99Pr4wnpg2bxLGHQnIfyvxPo=;
 b=FIllcz5AT/e+iGrg55MU+t96qWikN8RecNp/r2BRWmbVp2Glw9+W0mqn9uhzBDzhT1FakA
 rlLguk7FQjtTZomKhdC5Kl5kFDta+hcT0l2oZem6l0KRuuqwm3oGvuujy1niKl6gebbHDt
 AOzkDwHfUa63ExJe/UlUUif7ipMxDEc=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-249-yg2Tt6t9NcOFBsnRQYk1FQ-1; Mon, 08 Apr 2024 08:46:00 -0400
X-MC-Unique: yg2Tt6t9NcOFBsnRQYk1FQ-1
Received: by mail-ej1-f70.google.com with SMTP id
 a640c23a62f3a-a51ad5289acso149597066b.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 08 Apr 2024 05:46:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712580359; x=1713185159;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Oa0dQJ1NfzkDJ58Nm3G99Pr4wnpg2bxLGHQnIfyvxPo=;
 b=Cx5U5OqdxDWcw22U/Mkka8VteRsEUOSgYELv1BrtSF3u9vYhy4mZOCmkx5ZRzpJrY0
 OPPF5de5g0r9LfWjfvZYEuVZ67Dq3KA9jzp3oMJQc8eGAo3O3SKeq9/q88fhBVbRbteO
 r7TO9tlC6TD94GDfY0fjcdzOHBI9NjL9fUCND+YZEg/U0Nb9dud5snDBJ5hexn2MeCKF
 de1PkzBPTEr9pCHCvdwKNJmXA6ZdIMybSfZ6khkXEzA9p7q/+uSqj8FeIFb4r2xklbCn
 m+Xjne1OSx/AfHJDTuVpgFEkpUtTMJty6Da6YyhRVQOJYZClqkgsVc+X53SGMxImK+Ki
 i7gQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWGN4WeE5po5xWhkAIao1VoHm1MdufrBNNqVlOesy/lB4P2TKbk6le93xO6baMMC0JTosxToPdCMgKCQsU5CEunMKMh2I3Nf6AFrg+r0tXUhX9sm/c=
X-Gm-Message-State: AOJu0Ywa1xpbZ9rOzBYfuv8Q6ctSNSTXNwjZ/SrkIkc5fjMTpS7ZG9I1
 L3iCzHVnsTmFutWGyHtwNbcdjVGzyykTTaTz1+0I3EqFFAqBQhoZt/QENTL6+Sxz57bUdRKOmMM
 YvuSXinHLgZnqcJgYeUlFUPRFPHDPgiTICAeENFgK35DdKWjlEt9fbFF4y51AYPQcPvKy96ZS
X-Received: by 2002:a17:907:3da8:b0:a51:dc1f:a44b with SMTP id
 he40-20020a1709073da800b00a51dc1fa44bmr1478660ejc.29.1712580359456; 
 Mon, 08 Apr 2024 05:45:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGEkiynBLyuS7R8ea5n9gdwWhf7wBEZd2/uGpnUdhbhQ06ApoM00sS+9w3QyJnVOqX1gm8maA==
X-Received: by 2002:a17:907:3da8:b0:a51:dc1f:a44b with SMTP id
 he40-20020a1709073da800b00a51dc1fa44bmr1478641ejc.29.1712580359092; 
 Mon, 08 Apr 2024 05:45:59 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 ag13-20020a1709069a8d00b00a51ab065bf0sm3955072ejc.202.2024.04.08.05.45.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Apr 2024 05:45:58 -0700 (PDT)
Message-ID: <027b14ff-a6fe-456c-b3b5-187fd435ac3f@redhat.com>
Date: Mon, 8 Apr 2024 14:45:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mark Pearson <mpearson-lenovo@squebb.ca>
References: <mpearson-lenovo@squebb.ca>
 <20240324210817.192033-1-mpearson-lenovo@squebb.ca>
 <20240324210817.192033-2-mpearson-lenovo@squebb.ca>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20240324210817.192033-2-mpearson-lenovo@squebb.ca>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -1.7 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 3/24/24 10:07 PM, Mark Pearson wrote: > Add support
 for new input events on Lenovo laptops that need exporting to > user space.
 > > Lenovo trackpoints are adding the ability to generate a doubletap [...]
 Content analysis details:   (-1.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rtoO5-0001iy-0U
Subject: Re: [ibm-acpi-devel] [PATCH 1/4] Input: Add trackpoint doubletap
 and system debug info keycodes
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
Cc: dmitry.torokhov@gmail.com, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, vsankar@lenovo.com,
 ibm-acpi-devel@lists.sourceforge.net, hmh@hmh.eng.br,
 linux-input@vger.kernel.org, ilpo.jarvinen@linux.intel.com,
 peter.hutterer@redhat.com, njoshi1@lenovo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 3/24/24 10:07 PM, Mark Pearson wrote:
> Add support for new input events on Lenovo laptops that need exporting to
> user space.
> 
> Lenovo trackpoints are adding the ability to generate a doubletap event.
> Add a new keycode to allow this to be used by userspace.
> 
> Lenovo support is using FN+N with Windows to collect needed details for
> support cases. Add a keycode so that we'll be able to provide similar
> support on Linux.
> 
> Suggested-by: Peter Hutterer <peter.hutterer@redhat.com>
> 
> Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
> Signed-off-by: Nitin Joshi <njoshi1@lenovo.com>
> Signed-off-by: Vishnu Sankar <vsankar@lenovo.com>

Thanks, patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Dmitry, can I have your ack for merging this change through the pdx86
tree (since the first driver using these is a pdx86 driver) ?

Regards,

Hans




> ---
>  include/uapi/linux/input-event-codes.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/include/uapi/linux/input-event-codes.h b/include/uapi/linux/input-event-codes.h
> index 03edf2ccdf6c..bd3baca95749 100644
> --- a/include/uapi/linux/input-event-codes.h
> +++ b/include/uapi/linux/input-event-codes.h
> @@ -686,6 +686,8 @@
>  #define KEY_SIDEVU_SONAR               0x287
>  #define KEY_NAV_INFO                   0x288
>  #define KEY_BRIGHTNESS_MENU            0x289
> +#define KEY_DOUBLECLICK                0x28a
> +#define KEY_SYS_DEBUG_INFO             0x28b
>  
>  /*
>   * Some keyboards have keys which do not have a defined meaning, these keys



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F24144D447
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 11 Nov 2021 10:46:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ml6ef-0007rT-UU; Thu, 11 Nov 2021 09:46:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hdegoede@redhat.com>) id 1ml6ee-0007rF-16
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 11 Nov 2021 09:46:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NHZpzPiJjVdQJR747hgvu7Kbq8RX36AdGZlglYBTJok=; b=ctOXNiVYHlzj7WbDybZt9cQHgD
 QwXyBMRblc6InaszrNJxqJfmzgOx76+F60P5q7u0T604uX/SIZ8/XaWbVbxjtKB1pn02uDM8XA8/H
 1oUmkOzUo9SQt5onEm7pS/SCC95cwnGGA8sfTpH3TgfDO43lKnOOg4kEDMJwV6cZVejg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NHZpzPiJjVdQJR747hgvu7Kbq8RX36AdGZlglYBTJok=; b=AbPJ2C4fRvKi9QKwZzg2qAL15b
 g5ittYJzLZoGWA57wNFH94HapxY79E2zNcHsiNKuZfvyamf1Tr7Zz6+HbTpDDhYS0X7RNAgkZgXq+
 YBeXkQf4KSVTKwjbV3bVNiSwYrf/QjajTIlew8OYv97Sneu60EiXMpU8D9rvo+NK4FLs=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1ml6ea-0007N1-IT
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 11 Nov 2021 09:45:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1636623950;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=NHZpzPiJjVdQJR747hgvu7Kbq8RX36AdGZlglYBTJok=;
 b=BTNYQ6bOzQXiABaRAsBh9EY/RAr2in+OszxCoLEMLSvC6NloF64dX1nFnHj/uWX1A1Sg+3
 oS8jwfxducjYGQqQ2i6rTnIbBbFKGUaE740qIA24aaqMKHyc+ehOchRCsll/Zlv3PD4D3n
 DT+H66J1C7fN+ddoap6/N9Iu4NXOJfM=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-462-k1xC4JaYONuZ1tEhfwwqrA-1; Thu, 11 Nov 2021 04:45:44 -0500
X-MC-Unique: k1xC4JaYONuZ1tEhfwwqrA-1
Received: by mail-ed1-f71.google.com with SMTP id
 w13-20020a05640234cd00b003e2fde5ff8aso4916027edc.14
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 11 Nov 2021 01:45:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=NHZpzPiJjVdQJR747hgvu7Kbq8RX36AdGZlglYBTJok=;
 b=3vhRvFvgZqTiDUFYElPQtvj2Orm5/samkxGdTt2LRSlcRdrUiqBDIfcGUpXIprZK4b
 wLDSoEO+PsjCJYJzoxQ7OC2e2s8z0Wb47O2Eieot71danG5DLEcNJNpgUn8uHKy8LxTw
 WTbmord9ABxCGOUysrfzV3wWf2EojIsvOmXXdC90HgsnwcKXy84rjZEuVVMPmJjCyaWy
 Fo5aCGP4zoZc+8GfAfOc0KjlfRnHlE9sXLDfFN5TMKlanv+2DZetAzPEf9jW/NfCoAi6
 p939dmvBzRp+Hr4Zx39o62m+mOacWDEQ7L350/lAD0Zyct8+hbBaLhUVXV6fcGz40mKj
 dbBg==
X-Gm-Message-State: AOAM533Wq9HQIw2qPid5tMbVF1Q16IJzAWRF8y9wFhg4J6hPg/GAwzVU
 IONTJNBOxip1t0WACa4X8oVljCkKq1uW63MISNdLGO4Kt6QUwE9yDwyV2VYC1BE3xHNyurUVdxN
 okOYRCHb77WuubFXWpuyPodaAwHxzlvJr3Ws=
X-Received: by 2002:a17:907:216e:: with SMTP id
 rl14mr7758007ejb.368.1636623943063; 
 Thu, 11 Nov 2021 01:45:43 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz+VyX7ZbK3W3c9WLo5vQL9u3j9cA6xOlIQkmsHYVnZ8N2eTGqGysfnVpZRSlV5X1PUiyWblA==
X-Received: by 2002:a17:907:216e:: with SMTP id
 rl14mr7757948ejb.368.1636623942584; 
 Thu, 11 Nov 2021 01:45:42 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:1054:9d19:e0f0:8214?
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id qk7sm1058625ejc.23.2021.11.11.01.45.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Nov 2021 01:45:42 -0800 (PST)
Message-ID: <b33c60d4-1da3-9e71-66d6-3e4e5c43b6b8@redhat.com>
Date: Thu, 11 Nov 2021 10:45:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
To: Vincent Bernat <vincent@bernat.ch>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org
References: <20211109195209.176905-1-vincent@bernat.ch>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20211109195209.176905-1-vincent@bernat.ch>
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
 Content preview:  Hi, On 11/9/21 20:52, Vincent Bernat wrote: > The different
 values were offset by 1. 0 is for "home mode", 1 for > "web-browser mode",
 etc. Moreover, the URL to the laptop's user guide > did not work anym [...]
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ml6ea-0007N1-IT
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: fix
 documentation for adaptive keyboard
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 11/9/21 20:52, Vincent Bernat wrote:
> The different values were offset by 1. 0 is for "home mode", 1 for
> "web-browser mode", etc. Moreover, the URL to the laptop's user guide
> did not work anymore.
> 
> Signed-off-by: Vincent Bernat <vincent@bernat.ch>

Thank you for this fix.

I will add this fix to my tree once 5.16-rc is out and
I will include this fix in my first pdx86 fixes pull-req
for 5.16.

Regards,

Hans

> ---
>  Documentation/admin-guide/laptops/thinkpad-acpi.rst | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/admin-guide/laptops/thinkpad-acpi.rst b/Documentation/admin-guide/laptops/thinkpad-acpi.rst
> index 6721a80a2d4f..475eb0e81e4a 100644
> --- a/Documentation/admin-guide/laptops/thinkpad-acpi.rst
> +++ b/Documentation/admin-guide/laptops/thinkpad-acpi.rst
> @@ -1520,15 +1520,15 @@ This sysfs attribute controls the keyboard "face" that will be shown on the
>  Lenovo X1 Carbon 2nd gen (2014)'s adaptive keyboard. The value can be read
>  and set.
>  
> -- 1 = Home mode
> -- 2 = Web-browser mode
> -- 3 = Web-conference mode
> -- 4 = Function mode
> -- 5 = Layflat mode
> +- 0 = Home mode
> +- 1 = Web-browser mode
> +- 2 = Web-conference mode
> +- 3 = Function mode
> +- 4 = Layflat mode
>  
>  For more details about which buttons will appear depending on the mode, please
>  review the laptop's user guide:
> -http://www.lenovo.com/shop/americas/content/user_guides/x1carbon_2_ug_en.pdf
> +https://download.lenovo.com/ibmdl/pub/pc/pccbbs/mobiles_pdf/x1carbon_2_ug_en.pdf
>  
>  Battery charge control
>  ----------------------
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

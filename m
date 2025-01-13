Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E1678A0C28E
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 13 Jan 2025 21:25:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1tXQzs-0005wv-Dn;
	Mon, 13 Jan 2025 20:25:16 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1tXQzq-0005wm-0Q
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 13 Jan 2025 20:25:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BGwCOTFKopyF1Twjy34AnWbAxudSAUcqWUBnPveTEco=; b=Ort5HADmm1yg6GBT8cDSs7ihc7
 mPZ0Ge7EdbLb+aElYRnAoNfOIbhRwD6bE8OYkERjlSsFGaDxX8Mcpo8t7TUnRwiYAUuzS0CvEl6As
 JM5zSCWHrSLTf39XODD05w7XM9HOfTV/vAdGFpuOQlebIDhNg6avxjakcvxETijISsFY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BGwCOTFKopyF1Twjy34AnWbAxudSAUcqWUBnPveTEco=; b=kNs+ANWaUJe76Y0SNp/24/VwLq
 4TvCoseo6LWouivKa7SGlsNXeS4Xy2P+Z/FH0yLrMTRSt16yvDJHgxCkHtHdyOvxLZsTCYgVpdz7a
 QNB0DVeKnu0n9+72qPNiwEgreg0CWbDVIvnE4bcMmxpPX7ckmuOpVnf5WtBQsJe6b6Lw=;
Received: from mail-pl1-f169.google.com ([209.85.214.169])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tXQzp-0002OK-D4 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 13 Jan 2025 20:25:13 +0000
Received: by mail-pl1-f169.google.com with SMTP id
 d9443c01a7336-2156e078563so70368275ad.2
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 13 Jan 2025 12:25:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1736799903; x=1737404703; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=BGwCOTFKopyF1Twjy34AnWbAxudSAUcqWUBnPveTEco=;
 b=ZdhTzvstni4rt6GL6epDewT6OvoiAjwr/p6NRkqJUjm/bcicbrdllzfZVLJZCDkSaG
 xOne3VyJcTZoaMAhZZHyRDQKXxAjqyMk6mBvnKndriWGB53rYGgRBnwbA7eEJnNwplTh
 7/VuGzRMyNVgp3o+5DgA7JuoBmGzqKDK3F9grg89jatOakHAvtPr5gC2CsUaA2jr07Js
 e5RJm/vXWLQrHf8X18IQQ1JVRl4RZNz6kfOw6xMPU1yCenesgkkl3/yeH9LSa2o0epI3
 zDnyNNuX75W4Bpk/zRHvUZrZyLubSRP3PzTAitOw2oJqH/y98nhz9mr08ugKNpmABYAX
 SGXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736799903; x=1737404703;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=BGwCOTFKopyF1Twjy34AnWbAxudSAUcqWUBnPveTEco=;
 b=igBJNQojTe9wi9Wh44LaFCAsWHzS0phkJghT4M7Ue36mXV6qWtQ3NX/c17YaV7txdL
 T3O35ChLRKeiGBnlusl3bx/By7vkeou4WEEcFU9tUA0JRCHOzL8ZCtwi8YGGq3ToFKfT
 UmE3T7jzIRaWvZ8hrP7Jzk5cAFtTUcqNEU+hOmat3w9IhoeJiK+0n/1Yd9N1KUQd0+II
 uJnpMi3H+ZmI3762vkJzq0x1wgOv7hmOxJgs90+OrVJBJXC2WioPOrBPjwSHH2yT63V8
 5uBDYd1a+Le9BBTIgeHE2QCEFnrFSTFTsKh064jAhdA+ctQWCGUUfJIC16alH8p6xsQt
 KdIg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVOnR4NvB90O9wUhQn0Y5AU4OtksV3J/qLmxVm4sJYPWbNlRzL0XxeCi1fo3+hoT5+LxIXouFQ9rnOgIcY90w==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwyKpVRCDoxvyXxG4MLJSX5NnxCJfm8mViGerilzf2h5lvnX2kP
 v0dzC+IqNEo4NFTrBdDh0nOepOtNq1YbELznKDnmhcIl42XLbcks
X-Gm-Gg: ASbGncvgZ7Js6fXI95ir1pUKJcZ8JjDQXldKPyuGO5tPkvdqeFceKjSgRV6RTMN89WM
 YfQyPmk56vZmR2J52jHtOyyPvO2p8hb9YrIsI/Q5H3zy+oEOF9B0y6yuI2dyI+UQZOm8+6kVlFx
 BxAxpew7lNVtjxNYKbABIh8aylM+QTSpIzGE0uJnPIrD76Xx4ISqvhmOUbXnX8eexoTAs8HTXc/
 lXA2NMgnHC1f3RrNstaZfizc4XUNniuwT0Oui1oOi7RPHsnMnCtkWErSA==
X-Google-Smtp-Source: AGHT+IHa7tva12SDzJmJ8jNTW7dI9GlDi/mHqt9o3Hq3MYPiugFM4H34JsPIiidkO2N5wy1N9vAg4Q==
X-Received: by 2002:a17:903:124d:b0:216:4cc2:b1e0 with SMTP id
 d9443c01a7336-21a83f4c041mr288607995ad.20.1736799902584; 
 Mon, 13 Jan 2025 12:25:02 -0800 (PST)
Received: from google.com ([2620:15c:9d:2:2345:9641:c9a2:f3ca])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-21a9f22f306sm57364435ad.194.2025.01.13.12.25.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2025 12:25:02 -0800 (PST)
Date: Mon, 13 Jan 2025 12:24:59 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Illia Ostapyshyn <illia@yshyn.com>
Message-ID: <Z4V2m9VWqM0xZS1I@google.com>
References: <20241114173930.44983-1-illia@yshyn.com>
 <20241114173930.44983-2-illia@yshyn.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241114173930.44983-2-illia@yshyn.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Nov 14, 2024 at 06:39:29PM +0100, Illia Ostapyshyn
 wrote: > The F11 key on the new Lenovo Thinkpad T14 Gen 5, T16 Gen 3, and
 P14s > Gen 5 laptops includes a symbol showing a smartphone and a l [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.169 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.169 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.169 listed in bl.score.senderscore.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dmitry.torokhov[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.169 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tXQzp-0002OK-D4
Subject: Re: [ibm-acpi-devel] [PATCH 1/2] Input: allocate keycode for phone
 linking
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
Cc: Hans de Goede <hdegoede@redhat.com>, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>, linux-input@vger.kernel.org,
 Ilpo Jarvinen <ilpo.jarvinen@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Thu, Nov 14, 2024 at 06:39:29PM +0100, Illia Ostapyshyn wrote:
> The F11 key on the new Lenovo Thinkpad T14 Gen 5, T16 Gen 3, and P14s
> Gen 5 laptops includes a symbol showing a smartphone and a laptop
> chained together.  According to the user manual, it starts the Microsoft
> Phone Link software used to connect to Android/iOS devices and relay
> messages/calls or sync data.
> 
> As there are no suitable keycodes for this action, introduce a new one.
> 
> Signed-off-by: Illia Ostapyshyn <illia@yshyn.com>

Acked-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>

Please feel free to merge with the corresponding driver change.

> ---
>  include/uapi/linux/input-event-codes.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/include/uapi/linux/input-event-codes.h b/include/uapi/linux/input-event-codes.h
> index a4206723f503..5a199f3d4a26 100644
> --- a/include/uapi/linux/input-event-codes.h
> +++ b/include/uapi/linux/input-event-codes.h
> @@ -519,6 +519,7 @@
>  #define KEY_NOTIFICATION_CENTER	0x1bc	/* Show/hide the notification center */
>  #define KEY_PICKUP_PHONE	0x1bd	/* Answer incoming call */
>  #define KEY_HANGUP_PHONE	0x1be	/* Decline incoming call */
> +#define KEY_LINK_PHONE		0x1bf   /* AL Phone Syncing */
>  
>  #define KEY_DEL_EOL		0x1c0
>  #define KEY_DEL_EOS		0x1c1
> -- 
> 2.47.0
> 

Thanks.

-- 
Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

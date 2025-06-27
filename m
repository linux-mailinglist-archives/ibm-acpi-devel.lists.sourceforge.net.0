Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 525D1AEAE67
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 27 Jun 2025 07:15:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QoJglcGoAK6FFcmPOoVYozF4UJ2qSPsUCkX9Rsm3zPI=; b=Qwhy/Dkt3E4wbEmTZ6akAnbMHJ
	Lf/ELSNxAdYppIZvQx2oMu4iXyA6G5yznw42lUIgYsyTzIoDq/NpySv4l7AWOvvDd9KbHNFT1D7uq
	+TkA8EN6V2VIQ1vF3IChPh04aEXk9DhPWWe1enS7wdLmoTPxP96P88had6os/aAKUmTA=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uV1Q9-0000ZX-ES;
	Fri, 27 Jun 2025 05:14:41 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1uV1Q8-0000ZR-14
 for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 27 Jun 2025 05:14:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Bhc4F3bUMNlVYBI4FrEiquw9o4SRTI6Gsg6n63VV2NE=; b=RTyduCDlVbZeU3FsDG/fdOei67
 S6f8sYqiiBV/nOscjNcPbPL5HpBBo7yNYPOOW51onkaPE9YFLckmMq/Plm21uCsV1wijdpNYdsE5l
 NnUc1N8mphoIkukl9M1+MMcaVPjUha9KXTqt+V0dwWAXvCN/BMWL/b3d3WdtFbMSzK/o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Bhc4F3bUMNlVYBI4FrEiquw9o4SRTI6Gsg6n63VV2NE=; b=BN+yQTWoMH85lAHqL09ZcrSQjF
 HNwJsMI1zk2O9ObRogib75qNv8/ghlt5nEhG+BigL1yfTC3dXnN3/iKwZUPOwjeDy6kBSbuQImzFo
 XppnInwBF3omMOzzmnP6bIsTnWeg9JvjA1F24oTu3hHws2KVgxO7mVs6+F7m0DeFNgrg=;
Received: from mail-pf1-f181.google.com ([209.85.210.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uV1Q7-00064z-Ld for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 27 Jun 2025 05:14:39 +0000
Received: by mail-pf1-f181.google.com with SMTP id
 d2e1a72fcca58-74264d1832eso2394943b3a.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Thu, 26 Jun 2025 22:14:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1751001269; x=1751606069; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Bhc4F3bUMNlVYBI4FrEiquw9o4SRTI6Gsg6n63VV2NE=;
 b=hlY5+KdUvnZTBhatxTIvE2Yf37UqHsJjUprXm/6pam/bgJjsrmSnoNAOg1u+pA75Ub
 KaiZpZqH+5n0EdjHJuJbDFpGV5HOYhXCOEqkgq2vi7jNTlqtcA/hWgj4km6QDuLLMkCu
 LUAq3T0LZjFaRutLN5F1sJBE0WNoP2Y5ZWvVsCSBvuTlCjb7R9oIfO2Uk8i+1LjSxXOK
 uip5dr6dVZjHGQa0RpMX5e8jBeWmrSDiv1RGMSgyxPdidAibB3AEUnl+Q5wMxbKsyrHV
 NMn13jW1u1Rjfn5dARS0DcvcM5K2y/0BFLm9oKGMasFIIKHMHlFk3vDaW0Yppc6IkuwR
 TQsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751001269; x=1751606069;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Bhc4F3bUMNlVYBI4FrEiquw9o4SRTI6Gsg6n63VV2NE=;
 b=qfjzuq8pX9rYHuBGbu0l4sDWsx2ksVM2iddAFPzwQ3CUdfi/gwzC95E+F/fPWQmwAN
 pCjFXJ2TYNTyvda2mEuG2Zzx9T8dvrZ1PUXc8NXoZbNKtL50+OOQHUKoGlZ0rJo0t/Vb
 iqMzoMyFxa0k+SFdFewN7mn8G3fV8Rk4DQVXcGAMG7NtAeSiY4F/lcE6P9oVguZpuHFe
 hN+9gMJYA9qHm6vnLKf4krgEO0gs0aO0rkWPhNLiDls/jVjZPFZCASiaR+4VqOUIlfBp
 1B6imuchdHPIEJ8WzLJS88pFBRM+tn8J3SCrNf+p7Tr9pKBKHcrg6qaw3H1cZQW8OvlG
 K3Ug==
X-Forwarded-Encrypted: i=1;
 AJvYcCXWB0KNU9ru6yg5LYySE2CRRI+X/rP36LNCgFJsZ8GLJknzyv3hrGZP0XsEyyIh1JHoGxthXkvJsgf1Kwp/zA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyFjuERqZJ9SpFMTZNhBZenRwraXi2qbCWC4u/G8VYsWPeFxvL+
 tmpXqvXoWwMTZw+mto9xlFgQlWSbQwoXNw6UbwCBNjmWLyWSBVDNg8Lua0ltdA==
X-Gm-Gg: ASbGncvOld+7s5yNvX7n4cVx4EVjgc9CNv0LtziR9H4eu40a0ueou0cSAqJp4hxUeYb
 wu2orH87qoGOnkpjnjgwbRkM0OksqtsjyZ+BzO7phhNuL2DXXev0KQH5TrTQ4uRsJfYt3oKuaMf
 +VGnb5T0rPVSo1TkreRhvhXlnNu6kuPKRB27JOrNqKISO3cpwkZQSA4MzSmm6eowiBiKA9ZlrKS
 NiU0IayCH1Bo07qjTP95Aj0k++9/JolxBdqM94VHjSVBwZNz1LKKaCv8Msl+bDQA4j0yYKJ2Fdx
 bmM5+l2MCM2rT4/+Vpb+CFw/rbOiq6RYpsj68O/vUgvaySkgSv4o9tpJOB9c3Q==
X-Google-Smtp-Source: AGHT+IFXEsyBMb/CAdGfjgJitTkGAT8Tvs9bfEcnJN13gSVQY2QQe/8p4thG2wM4PAe2ueMPgyt9Pw==
X-Received: by 2002:a05:6a21:328c:b0:1f5:931d:ca6d with SMTP id
 adf61e73a8af0-220a113ca68mr2413528637.1.1751001268908; 
 Thu, 26 Jun 2025 22:14:28 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:d0c7:d92:6a17:eb62])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-74af557b3adsm1228434b3a.106.2025.06.26.22.14.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Jun 2025 22:14:28 -0700 (PDT)
Date: Thu, 26 Jun 2025 22:14:25 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Vishnu Sankar <vishnuocv@gmail.com>
Message-ID: <5jgix7znkfrkopmwnmwkxx35dj2ovvdpplhadcozbpejm32o2j@yxnbfvmealtl>
References: <20250620004209.28250-1-vishnuocv@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250620004209.28250-1-vishnuocv@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Vishnu, On Fri, Jun 20, 2025 at 09:42:08AM +0900, Vishnu
 Sankar wrote: > Newer ThinkPads have a doubletap feature that needs to be
 turned > ON/OFF via the trackpoint registers. > Systems released from 2023
 ha [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [209.85.210.181 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [dmitry.torokhov(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.181 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uV1Q7-00064z-Ld
Subject: Re: [ibm-acpi-devel] [PATCH] x86/Mouse: thinkpad_acpi/Trackpoint:
 Trackpoint Doubletap handling
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
Cc: zhoubinbin@loongson.cn, jay_lee@pixart.com, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, vsankar@lenovo.com,
 ibm-acpi-devel@lists.sourceforge.net, hmh@hmh.eng.br,
 linux-input@vger.kernel.org, Mark Pearson <mpearson-lenovo@squebb.ca>,
 ilpo.jarvinen@linux.intel.com, tglx@linutronix.de, jon_xie@pixart.com,
 pali@kernel.org, mingo@kernel.org, hansg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Vishnu,

On Fri, Jun 20, 2025 at 09:42:08AM +0900, Vishnu Sankar wrote:
> Newer ThinkPads have a doubletap feature that needs to be turned
> ON/OFF via the trackpoint registers.
> Systems released from 2023 have doubletap disabled by default and
> need the feature enabling to be useful.
> 
> This patch introduces support for exposing and controlling the
> trackpoint doubletap feature via a sysfs attribute.
> /sys/devices/platform/thinkpad_acpi/tp_doubletap
> This can be toggled by an "enable" or a "disable".
> 
> With this implemented we can remove the masking of events, and rely on
> HW control instead, when the feature is disabled.
> 
> Note - Early Thinkpads (pre 2015) used the same register for hysteris
> control, Check the FW IDs to make sure these are not affected.
> 
> trackpoint.h is moved to linux/input/.

No, please keep everything private to trackpoint.c and do not involve
thinkpad_acpi driver. By doing so you are introducing unwanted
dependencies (for both module loading, driver initialization, and
operation) and unsafe use of non-owned pointers/dangling pointers, etc.

Thanks.

-- 
Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

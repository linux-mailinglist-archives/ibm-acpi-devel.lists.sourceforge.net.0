Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6ECCB4ED3
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 11 Dec 2025 07:50:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a0yAsDnH/+MwqRMSukHtX+tsUaxTcaM/jrxaWEiYEVI=; b=g1XKrUMBm7KTnqMkBo+GmOy22I
	4dM/aQ9X8yyj06LbpmSC56ckn0nPJql06SNZX9pAPw00ZL26Yl09+jDkUyDLKUerkhotRzjGx4jIJ
	3CRyd2XxRn1/rcq646huRcVxhXmzja5wzgIACBePxtqEhn4yYA0lXyiA7PQoxovqxeAk=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1vTaUf-0002wp-Ii;
	Thu, 11 Dec 2025 06:49:41 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1vTaUe-0002wj-70
 for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 11 Dec 2025 06:49:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TvqvRKg6Dvm4JYTqbcpJmcxvj5YVSJwC2ID5rS1kYns=; b=Xm+o27GeDYkDXRuB90kVlMpYx3
 o7a7GS4un+cMsS7VLDfQNsfqscPt8PBryGlVP7GLiFeogXgUxSiaG/54Fao50xobfzp9R9wgfNF7M
 OYbzGEwli54YiTbVycz+IHGF7XCQt7jK0Fooxuoon8pVD79fbXJOfR/OpNyZQ1e+o+o8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TvqvRKg6Dvm4JYTqbcpJmcxvj5YVSJwC2ID5rS1kYns=; b=FMgBNwZ+srdPbGwCxg9JTVBh7G
 S7JoTJwt1sCKtLlk+qmXcHsPxtMfE/LsDSayKMeFJS4clWF49o/3LGoUsMpH3MubsLqVhUWHfkA1X
 a47rxkLsmJQUxbAZ6IT8K9DimnM5ePTyqN/PtgLA+GafJbzhZKZK1Tx1E4ABDPYcd9bs=;
Received: from mail-pl1-f176.google.com ([209.85.214.176])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vTaUd-0001wP-OP for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 11 Dec 2025 06:49:40 +0000
Received: by mail-pl1-f176.google.com with SMTP id
 d9443c01a7336-29845b06dd2so8058985ad.2
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 10 Dec 2025 22:49:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1765435769; x=1766040569; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=TvqvRKg6Dvm4JYTqbcpJmcxvj5YVSJwC2ID5rS1kYns=;
 b=eH5OUsEKc4uGgK+iUig8IkpJMpSxEALg2AqZL6cfhW4xjVKIMu9tr60HdbnNehKTIS
 WHlSvKTwntkctFD6ABK1pbQwVkaD0+6ncal5WmkHW4/soUiTQQiKRhrlhXF0PRAFod+9
 eBhMYe15PLI0oqR5qOE/6oaJ82v1eQ3XovZYBcwP5hWkx6FawWQhQDK0FIrPXUQOkKz9
 eOkqOp6R9tpHSLV+xiPO0yrtxGa9grC16poqWtSCH5kia36tMwFeHvWw2BoJQ/grxRFH
 aZVgUfjBRJ+RtZZv/YmpaXDsvZ1X/h5mWjq5vdeap17OgNoEBCc6YqzYH7ygcZVQi+Ry
 rI/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765435769; x=1766040569;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=TvqvRKg6Dvm4JYTqbcpJmcxvj5YVSJwC2ID5rS1kYns=;
 b=hwYvI0Fm6B60hH2PvNVMWoDkBE/tcUPWXQtCCU/c+0vDzP5/ZnEgBKECSgYVimVu6I
 rXCl1o86z/zXkYFbd1Z1JGvdzI+Cqr8JrpWCRAoqeKEueUApAFzWuXN+1LyWhwgrCBfT
 eyOwYBvOg1FGKtVPaAnuHMEUQadoMebad9nQwLuIjfDJvU5KsfwSB3pTkO3wHC48uFlq
 QKKMky00Zyo6KDmaytFQm2TAFKsP0osY3lNHSd95d9QmpEhjavU+kqoimogdPvMe6WeO
 qajiwITTvHjjcVmxjSWcg17M8iHz8CdVcASynafP0jqfjpeBVpPi+RSnsddTDEYMARLC
 ukOA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUYofWSMGpLlQwG6uqinl5iBNTTbEYBbChLLOHBuDCTVRr3WaruoCmTCRWyQh2wHkEFBTK7v84ZI9WZk8W/Ng==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzQLdvDDpoZW6huRvuSIaeC49YiOZNpJpB8dhZo+BGuxCwAAr38
 S23bDiQqjG6KdEyLXv6nJ4sHkUekw4gqeOpChDHIiZ3eJVmgnj0M9+uG
X-Gm-Gg: AY/fxX6klq+eoHAttwH52YVnugNh03y9yuXVvVQ9R6ZVFa9wpIQ5lGhu7w0dAKPYwFf
 BQ9qxUVaBhz0lkb+JEhJbAkHR0gWly5JyN64pHqIUEynDCqYZrEnDazkVjUHbcHsp+gc1JqXdat
 NqY+uJqYxkdfQdqkc+qG9b7zVkQnl3vz4ost+uXGT5q7uLQ35qSHrpIXo879jByk/PNPkztcUdL
 zBREvzicRtEAnjOFKSFADnFxLSaCX8VIY8cJVaM2Dr2n38Nw5xyef/pYbTs7cL3A78I7YBSDFnz
 qRJhCk3tc6iNiZuwbJ/yfj6z8cKMceGiTfVj1UullP2qpCCty0Gbmp42XyiGi06S7FYTUs1RGMT
 1eMwLgPgnPaligZCAau+DTKhWSCPvLDWbfMUDHClYdjPmg7blPI7Cj3Vp0fLW3wQ7nbeW+IeRHJ
 NPtP9IwVOoqWn2M3rLBaoM/3rfJgncp3DlWulRWvl5hau5pWdpyHev
X-Google-Smtp-Source: AGHT+IEyDtd0oe3IAE6MkIRcuPF1XAaex7O+UXkzSJ582FShFldjGqeQBlos3z7LrpPfpvFbd/RWdg==
X-Received: by 2002:a05:7022:985:b0:119:e569:f25f with SMTP id
 a92af1059eb24-11f2966bd00mr4273471c88.8.1765435768924; 
 Wed, 10 Dec 2025 22:49:28 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:8720:58cb:6770:779f])
 by smtp.gmail.com with ESMTPSA id
 a92af1059eb24-11f2e2b4bb8sm4156046c88.7.2025.12.10.22.49.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Dec 2025 22:49:28 -0800 (PST)
Date: Wed, 10 Dec 2025 22:49:25 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Vishnu Sankar <vishnuocv@gmail.com>
Message-ID: <he73fiwxso45ykidteqz2s2gjklezsyd47xwxtwlfes27kxuq3@ucwhmacbtsn4>
References: <20251129002533.9070-1-vishnuocv@gmail.com>
 <20251129002533.9070-2-vishnuocv@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251129002533.9070-2-vishnuocv@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Vishnu, On Sat, Nov 29, 2025 at 09:25:31AM +0900, Vishnu
 Sankar wrote: > Enable doubletap functionality by default on TrackPoint
 devices
 that > support it. The feature is detected using firmware ID pattern ma [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [dmitry.torokhov(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.214.176 listed in wl.mailspike.net]
X-Headers-End: 1vTaUd-0001wP-OP
Subject: Re: [ibm-acpi-devel] [PATCH v4 1/3] input: trackpoint - Enable
 doubletap by default on capable devices
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
Cc: corbet@lwn.net, linux-doc@vger.kernel.org, derekjohn.clark@gmail.com,
 linux-kernel@vger.kernel.org, vsankar@lenovo.com,
 ibm-acpi-devel@lists.sourceforge.net, hmh@hmh.eng.br,
 linux-input@vger.kernel.org, mpearson-lenovo@squebb.ca,
 ilpo.jarvinen@linux.intel.com, platform-driver-x86@vger.kernel.org,
 hansg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Vishnu,

On Sat, Nov 29, 2025 at 09:25:31AM +0900, Vishnu Sankar wrote:
> Enable doubletap functionality by default on TrackPoint devices that
> support it. The feature is detected using firmware ID pattern matching
> (PNP: LEN03xxx) with a deny list of incompatible devices.
> 
> This provides immediate doubletap functionality without requiring
> userspace configuration. The hardware is enabled during device
> detection, while event filtering continues to be handled by the
> thinkpad_acpi driver as before.
> 
> Signed-off-by: Vishnu Sankar <vishnuocv@gmail.com>
> Suggested-by: Mark Pearson <mpearson-lenovo@squebb.ca>
> ---
> Changes in v4:
> - Simplified approach: removed all sysfs attributes and user interface
> - Enable doubletap by default during device detection
> - Removed global variables and complex attribute infrastructure
> - Uses minimal firmware ID detection with deny list
> - Follows KISS principle as suggested by reviewers
> 
> Changes in v3:
> - No changes
> 
> Changes in v2:
> - Improve commit messages
> - Sysfs attributes moved to trackpoint.c
> - Removed unnecessary comments
> - Removed unnecessary debug messages
> - Using strstarts() instead of strcmp()
> - is_trackpoint_dt_capable() modified
> - Removed _BIT suffix and used BIT() define
> - Reverse the trackpoint_doubletap_status() logic to return error first
> - Removed export functions as a result of the design change
> - Changed trackpoint_dev->psmouse to parent_psmouse
> - The path of trackpoint.h is not changed
> ---
>  drivers/input/mouse/trackpoint.c | 51 ++++++++++++++++++++++++++++++++
>  drivers/input/mouse/trackpoint.h |  5 ++++
>  2 files changed, 56 insertions(+)
> 
> diff --git a/drivers/input/mouse/trackpoint.c b/drivers/input/mouse/trackpoint.c
> index 5f6643b69a2c..67144c27bccd 100644
> --- a/drivers/input/mouse/trackpoint.c
> +++ b/drivers/input/mouse/trackpoint.c
> @@ -393,6 +393,48 @@ static int trackpoint_reconnect(struct psmouse *psmouse)
>  	return 0;
>  }
>  
> +/* List of known incapable device PNP IDs */
> +static const char * const dt_incompatible_devices[] = {
> +	"LEN0304",
> +	"LEN0306",
> +	"LEN0317",
> +	"LEN031A",
> +	"LEN031B",
> +	"LEN031C",
> +	"LEN031D",
> +};
> +
> +/*
> + * Checks if it's a doubletap capable device

Please finish the sentence with a period.

> + * The PNP ID format is "PNP: LEN030d PNP0f13".
> + */
> +static bool is_trackpoint_dt_capable(const char *pnp_id)

Let's call it trackpoint_is_dt_capable() to keep with common
"trackpoint_" prefix in the file.

> +{
> +	const char *id_start;
> +	char id[8];
> +	size_t i;
> +
> +	if (!strstarts(pnp_id, "PNP: LEN03"))
> +		return false;
> +
> +	/* Points to "LEN03xxxx" */
> +	id_start = pnp_id + 5;
> +	if (sscanf(id_start, "%7s", id) != 1)
> +		return false;
> +
> +	/* Check if it's in the deny list */
> +	for (i = 0; i < ARRAY_SIZE(dt_incompatible_devices); i++) {
> +		if (strcmp(id, dt_incompatible_devices[i]) == 0)

Why can't we use strncmp(pnp_id + 5, dt_incompatible_devices[i], 7) here
(after ensuring that pnp_id is of sufficient length to begin with) and
avoid sscanf()?

> +			return false;
> +	}
> +	return true;
> +}
> +
> +static int trackpoint_set_doubletap(struct ps2dev *ps2dev, bool enable)
> +{
> +	return trackpoint_write(ps2dev, TP_DOUBLETAP, enable ? TP_DOUBLETAP_ENABLE : TP_DOUBLETAP_DISABLE);
> +}

This wrapper seems an overkill given that it is called only once and
always to enable the doubletap.

Thanks.

-- 
Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

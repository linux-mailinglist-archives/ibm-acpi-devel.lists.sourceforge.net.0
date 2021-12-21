Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 50ADD47C6FE
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 21 Dec 2021 19:51:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mzkEJ-0008W5-BK; Tue, 21 Dec 2021 18:51:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hdegoede@redhat.com>) id 1mzkEH-0008Vz-WF
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 21 Dec 2021 18:51:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7hczl/fhcvDkf/yKuUBJ4xYsAaOY7Hv0t7pVBWGg6a8=; b=W3c6/U1R/ghepI9p4ac0lCxsGb
 XYNoF9o5XSMc/K1acv6qnpJZ4RFVcsNWr2dnz182g+U77/At9gC9biA043l8aPWkeHphVToDMphwk
 07L4MXMmVe2rtSHR8T+wkPCRXBvVY/2OApubDvrYCWFHU87L9VJK5ux6BWtWj1JSnRmE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7hczl/fhcvDkf/yKuUBJ4xYsAaOY7Hv0t7pVBWGg6a8=; b=bqWw/O1ulAfG1EXBN6utMrhmnG
 n94Fq0m8tdou2E68U0Ow1uhcK95co5VPE8OPJBuFZQD+RYGSQ1cymJGmnDgn+XxqMenI0TCVWq6QW
 WT5T65KWqi5EMHBWYXRCLG97ggybN9EZTOizOWfTGCRQk/MnbWNT/TI5nxCGLVIT1GHo=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mzkED-005WVM-8E
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 21 Dec 2021 18:51:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1640112666;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7hczl/fhcvDkf/yKuUBJ4xYsAaOY7Hv0t7pVBWGg6a8=;
 b=FXzE6vgJaj1hIuss3k5bttYKWrI5uMJnsGt1r/rDcZuJkuCpMVA6qwPLJ68FxY/EYA5ngV
 RwQICmCNoQYDp+8g8VbPSKzjJGWyVskjYdCoOyg2XRSLFV6MickjYLzIY4V4nSwgI19hew
 EAEKSePB5Sj9b5lD1hPLV/4bZrEXLuQ=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-259-fY-SIyQDPnu9vR7sFuL33Q-1; Tue, 21 Dec 2021 13:51:04 -0500
X-MC-Unique: fY-SIyQDPnu9vR7sFuL33Q-1
Received: by mail-ed1-f70.google.com with SMTP id
 w17-20020a056402269100b003f7ed57f96bso11113465edd.16
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 21 Dec 2021 10:51:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=7hczl/fhcvDkf/yKuUBJ4xYsAaOY7Hv0t7pVBWGg6a8=;
 b=IjUgW6qozeia/v98lXcmLwDo0b3Y31y84zxULE+4ZkBGgSHKEvTvHqZvxc7OSjdEr2
 fY1yQe5fwuE57Iwf2Cfiok9ALIazE8weY6QyRQG1EYaDRuCSy2pgXCeYGEnh/fcIwRRK
 tBQgFDC4PS65/f7mzphRdDZgIvhqY8COO4o733HeWxky+thiTVvEgU/NGnVMErLg16M+
 le4gn+NJnR2JFxQhFCCLfqb4uqwncmZNcsaQpxeIpsNo9IyPo2QtxErfmbRxDjK9KYAx
 PU2UZwSBDxQI3ExthBeGwiU1NOuhdp/4DhWDS4HbqgmAG+pASXJLrf6fCaQjP2mz/ctF
 fiWQ==
X-Gm-Message-State: AOAM532KUbAaGagpao3fY15bZDUR++8MFysO9G+FhCfrW6s4JyEUIojo
 Fp7b+xhebrqJubI1ctW1HE6413P9cFCknpTXnLOX/7zo930+v7VVsPBpUc592sBThIlMcxuH6Oa
 r5VbVYAa/6Q84ow0ZNxCZgaQdNJbNHupfuWQ=
X-Received: by 2002:a17:906:9b82:: with SMTP id
 dd2mr3766367ejc.406.1640112663658; 
 Tue, 21 Dec 2021 10:51:03 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzKhGJI6p5aykoXdpRRPjv5+TiP/RvCQZELs9dzZejbGpMiW+w3+zd7TBCkvjW+JID/ORuo1A==
X-Received: by 2002:a17:906:9b82:: with SMTP id
 dd2mr3766345ejc.406.1640112663393; 
 Tue, 21 Dec 2021 10:51:03 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1?
 (2001-1c00-0c1e-bf00-1db8-22d3-1bc9-8ca1.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1])
 by smtp.gmail.com with ESMTPSA id w22sm8960767edd.49.2021.12.21.10.51.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Dec 2021 10:51:02 -0800 (PST)
Message-ID: <e98a06d9-f8e0-bfa8-760f-5d3cc793f2b2@redhat.com>
Date: Tue, 21 Dec 2021 19:51:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
To: Rajat Jain <rajatja@google.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Benson Leung <bleung@chromium.org>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Mark Gross <markgross@kernel.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org, gwendal@google.com,
 seanpaul@google.com, marcheu@google.com, dtor@google.com
References: <20211220222828.2625444-1-rajatja@google.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20211220222828.2625444-1-rajatja@google.com>
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
 Content preview:  Hi, On 12/20/21 23:28, Rajat Jain wrote: > Allow a privacy
 screen provider to stash its private data pointer in the > drm_privacy_screen, 
 and update the drm_privacy_screen_register() call to > accept that [...] 
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mzkED-005WVM-8E
Subject: Re: [ibm-acpi-devel] [PATCH v3 1/3] drm/privacy_screen: Add drvdata
 in drm_privacy_screen
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
Cc: rajatxjain@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 12/20/21 23:28, Rajat Jain wrote:
> Allow a privacy screen provider to stash its private data pointer in the
> drm_privacy_screen, and update the drm_privacy_screen_register() call to
> accept that. Also introduce a *_get_drvdata() so that it can retrieved
> back when needed.
> 
> This also touches the IBM Thinkpad platform driver, the only user of
> privacy screen today, to pass NULL for now to the updated API.
> 
> Signed-off-by: Rajat Jain <rajatja@google.com>

Thanks, patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans


> ---
> v3: Initial version. Came up due to review comments on v2 of other patches.
> v2: No v2
> v1: No v1
> 
>  drivers/gpu/drm/drm_privacy_screen.c    |  5 ++++-
>  drivers/platform/x86/thinkpad_acpi.c    |  2 +-
>  include/drm/drm_privacy_screen_driver.h | 13 ++++++++++++-
>  3 files changed, 17 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_privacy_screen.c b/drivers/gpu/drm/drm_privacy_screen.c
> index beaf99e9120a..03b149cc455b 100644
> --- a/drivers/gpu/drm/drm_privacy_screen.c
> +++ b/drivers/gpu/drm/drm_privacy_screen.c
> @@ -387,7 +387,8 @@ static void drm_privacy_screen_device_release(struct device *dev)
>   * * An ERR_PTR(errno) on failure.
>   */
>  struct drm_privacy_screen *drm_privacy_screen_register(
> -	struct device *parent, const struct drm_privacy_screen_ops *ops)
> +	struct device *parent, const struct drm_privacy_screen_ops *ops,
> +	void *data)
>  {
>  	struct drm_privacy_screen *priv;
>  	int ret;
> @@ -404,6 +405,7 @@ struct drm_privacy_screen *drm_privacy_screen_register(
>  	priv->dev.parent = parent;
>  	priv->dev.release = drm_privacy_screen_device_release;
>  	dev_set_name(&priv->dev, "privacy_screen-%s", dev_name(parent));
> +	priv->drvdata = data;
>  	priv->ops = ops;
>  
>  	priv->ops->get_hw_state(priv);
> @@ -439,6 +441,7 @@ void drm_privacy_screen_unregister(struct drm_privacy_screen *priv)
>  	mutex_unlock(&drm_privacy_screen_devs_lock);
>  
>  	mutex_lock(&priv->lock);
> +	priv->drvdata = NULL;
>  	priv->ops = NULL;
>  	mutex_unlock(&priv->lock);
>  
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 341655d711ce..ccbfda2b0095 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -9782,7 +9782,7 @@ static int tpacpi_lcdshadow_init(struct ibm_init_struct *iibm)
>  		return 0;
>  
>  	lcdshadow_dev = drm_privacy_screen_register(&tpacpi_pdev->dev,
> -						    &lcdshadow_ops);
> +						    &lcdshadow_ops, NULL);
>  	if (IS_ERR(lcdshadow_dev))
>  		return PTR_ERR(lcdshadow_dev);
>  
> diff --git a/include/drm/drm_privacy_screen_driver.h b/include/drm/drm_privacy_screen_driver.h
> index 24591b607675..4ef246d5706f 100644
> --- a/include/drm/drm_privacy_screen_driver.h
> +++ b/include/drm/drm_privacy_screen_driver.h
> @@ -73,10 +73,21 @@ struct drm_privacy_screen {
>  	 * for more info.
>  	 */
>  	enum drm_privacy_screen_status hw_state;
> +	/**
> +	 * @drvdata: Private data owned by the privacy screen provider
> +	 */
> +	void *drvdata;
>  };
>  
> +static inline
> +void *drm_privacy_screen_get_drvdata(struct drm_privacy_screen *priv)
> +{
> +	return priv->drvdata;
> +}
> +
>  struct drm_privacy_screen *drm_privacy_screen_register(
> -	struct device *parent, const struct drm_privacy_screen_ops *ops);
> +	struct device *parent, const struct drm_privacy_screen_ops *ops,
> +	void *data);
>  void drm_privacy_screen_unregister(struct drm_privacy_screen *priv);
>  
>  void drm_privacy_screen_call_notifier_chain(struct drm_privacy_screen *priv);
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

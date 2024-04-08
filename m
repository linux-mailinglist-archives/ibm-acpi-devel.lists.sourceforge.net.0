Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F9789C0C9
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  8 Apr 2024 15:12:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rton1-0002Ba-MR;
	Mon, 08 Apr 2024 13:11:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rtomy-0002BP-RX
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 08 Apr 2024 13:11:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2QN/ohcVcXOcV74lBRkbnJ3+BIy7aYkesL60FOW5d0Y=; b=a0MgrE2tMQ3piUIB3fEx+zw1ml
 vZwTafXYmsuN4apOU5ER9AT0Kik/CPhGWR9riqZ/5L7KUZOKWmV6v0bJA7dK0hlh0zNcSsgFcjMM+
 2xNVkO8vIRF8TLSE8M8HW3jGR/GhsYqUN2pDjzDK8h1/aoaJ1L1m/4o3NzFErplvnhCg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2QN/ohcVcXOcV74lBRkbnJ3+BIy7aYkesL60FOW5d0Y=; b=dux/4O/cqqfiHLga+6AE0EaeFT
 CqS45V0zX7EBDzglAKagq1+300ULkweIEFyml1UoV7Wv1XIKfM83OZ9ra7GSwfpT9z39mGz7Z8WPI
 lrwwDUrzPJoj/jMX0N33tj0LtDFm2kLKxAXWxmoBPK4Ft76cZxmrVhx9Yhn4nJHwkBtw=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rtomw-0003Mo-KH for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 08 Apr 2024 13:11:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1712581903;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2QN/ohcVcXOcV74lBRkbnJ3+BIy7aYkesL60FOW5d0Y=;
 b=Q+dzEralDFDkJjpGBDMCy51I64bNo2VVlMHgu4m1kyOGZ2rnhXVKQpXdBCnvIXGrLF1enW
 ZBGLCjaBPzIiamBhNNk488qM+O2y8TrWBRBmtgeaA0bw2h9enxKZs0vb8Kh7xAqG6fum9U
 Y7ifVXztpYbcD2+qMUGt5jqevIU7ENI=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-487-Nx--T2fhP8GGVo38jkpoBQ-1; Mon, 08 Apr 2024 09:11:42 -0400
X-MC-Unique: Nx--T2fhP8GGVo38jkpoBQ-1
Received: by mail-ej1-f71.google.com with SMTP id
 a640c23a62f3a-a51c6085bf0so56794266b.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 08 Apr 2024 06:11:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712581901; x=1713186701;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=2QN/ohcVcXOcV74lBRkbnJ3+BIy7aYkesL60FOW5d0Y=;
 b=hY/mj1Yrnkcwvzblpv444OphTQz5+VySB95OnKX6B+HGdfhSp4Gm+3dVP8JDhMgv7f
 AN50j9ZQOJF6ZMxv9fnYbdDlOXwut86QysK0Hw2AH6qMh9H4KjYnxAbNLqrvv1Zwu7kP
 KEG63HJYo6+EHvBzGo1fIQ4g3DFICykKIqVxgeQFPjVTu1Ge42TiuGB6GPdpV/3CJOkr
 V6oTHgZhbdu2xKdZ+gQVJZfIXqVj42eP4pI0wUd5RtVSBkHwxevFI/EM+n+qO1445gbD
 AO/9MxACfhQb2MwSmBXJ+SAge/jMmbK1MngsSPtqbveTttIl3SB0exg+O285bdWQLMOH
 hgzA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWXSZgdyd/Lu91rYqKRFexHleoZ44ZWs64qU40NrNv6fuc15o1epQbxu/qqIGH8Yp0wrQj/fN4HVoo+7qeQQmlohnGdhkzGjVbdrc8XZ4+pjf1PfUw=
X-Gm-Message-State: AOJu0Yz/YueLl3zqMbnnGAZQMDjl85SaStW1TRwpPjHKZuELlN5gdSfO
 Hi5qVazps4Y00QaX7HqThp+bq6VYg0tDphpLgJS/+JvDShFEly95857yXm01cRnZ6u5x/g2fBCk
 K7WnRmMWhHIZ6z8nyzPiCOitEBe/qBSDc+xBIdk0oqjnqR/04OJJ+ZiiUlqPInUQlvJfk3Gra
X-Received: by 2002:a17:906:cb8c:b0:a51:a2ee:fab8 with SMTP id
 mf12-20020a170906cb8c00b00a51a2eefab8mr5351208ejb.36.1712581901309; 
 Mon, 08 Apr 2024 06:11:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHAbKJqhdIPQIyF0+AzW160f/4+tnJqeUF0J5A/eVZBJC9/Yp9ippvZKKTeSJyd/D6okdouDQ==
X-Received: by 2002:a17:906:cb8c:b0:a51:a2ee:fab8 with SMTP id
 mf12-20020a170906cb8c00b00a51a2eefab8mr5351197ejb.36.1712581900988; 
 Mon, 08 Apr 2024 06:11:40 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 bv4-20020a170907934400b00a51ce4710c5sm2010686ejc.19.2024.04.08.06.11.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Apr 2024 06:11:40 -0700 (PDT)
Message-ID: <a2237f76-dae6-4198-b393-7d0c18224205@redhat.com>
Date: Mon, 8 Apr 2024 15:11:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mark Pearson <mpearson-lenovo@squebb.ca>
References: <mpearson-lenovo@squebb.ca>
 <20240324210817.192033-1-mpearson-lenovo@squebb.ca>
 <20240324210817.192033-4-mpearson-lenovo@squebb.ca>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20240324210817.192033-4-mpearson-lenovo@squebb.ca>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -1.7 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 3/24/24 10:08 PM, Mark Pearson wrote: > New Lenovo
 platforms are adding the FN+N key to generate system debug > details that
 support can use for collecting important details on any > customer cases [...]
 Content analysis details:   (-1.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rtomw-0003Mo-KH
Subject: Re: [ibm-acpi-devel] [PATCH 3/4] platform/x86: thinkpad_acpi:
 Support for system debug info hotkey
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

On 3/24/24 10:08 PM, Mark Pearson wrote:
> New Lenovo platforms are adding the FN+N key to generate system debug
> details that support can use for collecting important details on any
> customer cases for Windows.
> Add the infrastructure so we can do the same on Linux by generating a
> SYS_DEBUG_INFO keycode to userspace.
> 
> Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
> Signed-off-by: Nitin Joshi <njoshi1@lenovo.com>
> ---
>  drivers/platform/x86/thinkpad_acpi.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 2bbb32c898e9..854ce971bde2 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -1787,6 +1787,7 @@ enum {	/* hot key scan codes (derived from ACPI DSDT) */
>  	TP_ACPI_HOTKEYSCAN_NOTIFICATION_CENTER,
>  	TP_ACPI_HOTKEYSCAN_PICKUP_PHONE,
>  	TP_ACPI_HOTKEYSCAN_HANGUP_PHONE,
> +	TP_ACPI_HOTKEYSCAN_SYS_DEBUG_INFO = 81,
>  
>  	/* Hotkey keymap size */
>  	TPACPI_HOTKEY_MAP_LEN
> @@ -3337,6 +3338,9 @@ static int __init hotkey_init(struct ibm_init_struct *iibm)
>  		KEY_NOTIFICATION_CENTER,	/* Notification Center */
>  		KEY_PICKUP_PHONE,		/* Answer incoming call */
>  		KEY_HANGUP_PHONE,		/* Decline incoming call */
> +		KEY_UNKNOWN,			/* AMT Toggle (event), 0x31A */
> +		KEY_UNKNOWN, KEY_UNKNOWN,
> +		KEY_SYS_DEBUG_INFO,             /* System debug info, 0x31D */
>  		},
>  	};
>  

Looking at the next patch 0x131c is TP_HKEY_EV_DOUBLETAP_TOGGLE and 0x131a is
TP_HKEY_EV_AMT_TOGGLE based on this please change this to:

  		KEY_NOTIFICATION_CENTER,	/* Notification Center */
  		KEY_PICKUP_PHONE,		/* Answer incoming call */
  		KEY_HANGUP_PHONE,		/* Decline incoming call */
		KEY_UNKNOWN,			/* TP_HKEY_EV_AMT_TOGGLE handled in driver, 0x31a */
		KEY_UNKNOWN,			/* ?, 0X31b */
		KEY_UNKNOWN,			/* TP_HKEY_EV_DOUBLETAP_TOGGLE handled in driver, 0x31c */
		KEY_SYS_DEBUG_INFO,             /* System debug info, 0x31d */
		},

Regards,

Hans





_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

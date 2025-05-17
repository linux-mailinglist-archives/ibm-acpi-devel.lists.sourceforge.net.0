Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B6BEBABA9F1
	for <lists+ibm-acpi-devel@lfdr.de>; Sat, 17 May 2025 13:54:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=boVAaFRzk+BPSZGWWgLDY+tyl2uGc5YzcxO3n37OEGw=; b=CwjmBQUSxGUa/CI6JJg9i4/Rip
	h/udD7cP8VuNL7mQTP6w65UYZgahEzjksI2nTjmjZ7D5yLjcp63Dfc25BXTOTfzfUyFwGyIde2aA6
	99yJS3ElB4suwbbEJDR+tXtJPrHvT6JyZQS/Ghv1cP0RaUVzR8W9F8c4n8hIeSN5gFZc=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uGG7L-000180-2k;
	Sat, 17 May 2025 11:54:15 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1uGG7J-00017q-Dx
 for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 17 May 2025 11:54:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hh6Lu25XTdmvKagiXZzKLzic81mSh2IPF/qRIoPuAu4=; b=PLzPjvFHhj+CV5ufOxg9DTLvTe
 SjWq9IjnVOsfhn9LNWRVZ5K0UMajHYGM0ALEZqKFzPs+m4pcmm5Oo3XRfMnS4Crihehs5u2rj5FsL
 Cs/CALcgmLBQlAe/PSY7pK7LbFJHpbukQdueSb1ICpe516CojxQXJO4fTVxuvkdL3p8I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hh6Lu25XTdmvKagiXZzKLzic81mSh2IPF/qRIoPuAu4=; b=X7OyHpAP0+KlxyM8SGNGfwk/28
 wA2bZZ3kdz9CvclUC8lK+IUvl50JghsO2FeBy5rJKuatxenvck/R6SSbYHCMOQRjr+eYyGel9cI6v
 QrPnwi/yiNQo9WlChV56hQhjnCpF80oNmX74rp6WekmlEuaeoLdRjW1Ser0RmfZMSZP4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uGG7H-0006vs-KA for ibm-acpi-devel@lists.sourceforge.net;
 Sat, 17 May 2025 11:54:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1747482845;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hh6Lu25XTdmvKagiXZzKLzic81mSh2IPF/qRIoPuAu4=;
 b=gFvj2KexN2xWK04tBFfWYyQ15aYj9OizSc/JpuFqL0Pbs/8IBNiyZZ3Nept4Lu2Bt9NNDY
 SGn3awKGOIKyB6J1oe9pmraq44lgSjFcFALdlspD2pD1G1iAhsafZ2kh7o0/ehV3OZXA2p
 pCjVHsHZCWscf4+bB6jHDWdjFOtpCCY=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-564-Pk0x2O_CMdCDe4aUzyyz7Q-1; Sat, 17 May 2025 07:54:03 -0400
X-MC-Unique: Pk0x2O_CMdCDe4aUzyyz7Q-1
X-Mimecast-MFC-AGG-ID: Pk0x2O_CMdCDe4aUzyyz7Q_1747482843
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-43d5ca7c86aso16536105e9.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sat, 17 May 2025 04:54:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747482842; x=1748087642;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=hh6Lu25XTdmvKagiXZzKLzic81mSh2IPF/qRIoPuAu4=;
 b=VKkGLErXFOQsEYRa4CC4dMoJqJ3ZL5bmhAdZ5LLSsKMuOnGYlB5a2UDRtzh8REKhZY
 si6UDYBwUhD4nAf8DpYcyYvP6CW8teo0rhzDxuXGotnv4ZOttYKbkHnu0zKIpJ78Uc6I
 Cn7heg2BMdIN290WOqb0oDpMi1i2FytHiscvXQvv2z3U6HJOqPHDPzEOaJbzeqNzp8nN
 3JOOB614hDcB7MvwzsR1kVrDkk8kgVs/s30o4ixQ9veryxfGRNYewJYq79fqHWMD70Oz
 T1Ct7BEO11x2FsVH29aj41xbMxyf9XxHkQrfy+DLc5M+q8iKbahRvvKXg0vQ3FNKKCk/
 mYjw==
X-Forwarded-Encrypted: i=1;
 AJvYcCURJIOaFN3JUGoEROuyhqXqHv/amLAAHoYkYV1FFcs8Q9qCYEXomj4JUF2meDna4Z10/KhEK8kdEmgFqc2cpw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxNQ+aVpIWInZPbGuVT5Y+Y4KVz4Tgwv6LnMT6BbUGkgDUhdzvt
 8nVL6P9H5XCIf0IHrhOMq1U5ZdCTU95MRZrnIdlubAfRd40Phezaf1/0YOKXynoWdrak1KjuYOL
 1wzUfPM3Qxzs0IsmlZbwhNdQ1It8HozoL7koEEn6dzq/Rr5zh9pxF+MPwxJV1F1ax9UR33/6ZtJ
 L8
X-Gm-Gg: ASbGncvoh/Th9K6MMFiRMRUM0p+NxlRmuNnJZ0mpAqgj844TmUSaMZP96WxEfEzLAcf
 +WAWRz712/cMpvx+X73+Msn/F/kY4Hms8PHUKHUK8QPmxkoeJ5GzsLprw/vvnn9W5Zh/FqYZ5no
 t9cL0IhqyuH7M02hJTpvHxn7jlxyNpZ/67TETP20HAaB0xxPgErHmBrryj+hJoUY0ThkcHiN5VX
 zBoZlukYshzL47xdTb9929vHKfJA7hSG9Twb64k8FvKntBOPob8orhEob/NA3M5R8lGvui3TL/U
 0oBqTDfj20heuA==
X-Received: by 2002:a05:600c:c0da:b0:43d:ed:ad07 with SMTP id
 5b1f17b1804b1-442fe667ec9mr54443925e9.29.1747482842522; 
 Sat, 17 May 2025 04:54:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGgm8sGwtCHVVoQNRjXJMOaCVwqM6s/IUkO878URW/AoE2AM+RHZfTnFxdEzmwOe/59yA7gpw==
X-Received: by 2002:a05:600c:c0da:b0:43d:ed:ad07 with SMTP id
 5b1f17b1804b1-442fe667ec9mr54443825e9.29.1747482842146; 
 Sat, 17 May 2025 04:54:02 -0700 (PDT)
Received: from [10.124.0.73] ([89.207.171.167])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-442fd59704esm68179285e9.36.2025.05.17.04.53.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 17 May 2025 04:54:01 -0700 (PDT)
Message-ID: <18b8f82f-f5ea-436c-b7c8-d4182435ef05@redhat.com>
Date: Sat, 17 May 2025 13:53:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mark Pearson <mpearson-lenovo@squebb.ca>
References: <mpearson-lenovo@squebb.ca>
 <20250517023348.2962591-1-mpearson-lenovo@squebb.ca>
In-Reply-To: <20250517023348.2962591-1-mpearson-lenovo@squebb.ca>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: vU4hv-xuciFhrNuUm11iMuyvir3d-mkrky3gTfSMcSU_1747482843
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -1.8 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On 17-May-25 04:33,
 Mark Pearson wrote: > If user modifies
 the battery charge threshold an ACPI event is generated. > Confirmed with
 Lenovo FW team this is only generated on user event. As no > action [...]
 Content analysis details:   (-1.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.133.124 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.133.124 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uGG7H-0006vs-KA
Subject: Re: [ibm-acpi-devel] [PATCH] platform/x86: thinkpad_acpi: Ignore
 battery threshold change event notification
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
From: Hans de Goede via ibm-acpi-devel <ibm-acpi-devel@lists.sourceforge.net>
Reply-To: Hans de Goede <hdegoede@redhat.com>
Cc: ilpo.jarvinen@linux.intel.com, platform-driver-x86@vger.kernel.org,
 linux-kernel@vger.kernel.org, Derek Barbosa <debarbos@redhat.com>,
 ibm-acpi-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi,

On 17-May-25 04:33, Mark Pearson wrote:
> If user modifies the battery charge threshold an ACPI event is generated.
> Confirmed with Lenovo FW team this is only generated on user event. As no
> action is needed, ignore the event and prevent spurious kernel logs.
> 
> Reported-by: Derek Barbosa <debarbos@redhat.com>
> Closes: https://lore.kernel.org/platform-driver-x86/7e9a1c47-5d9c-4978-af20-3949d53fb5dc@app.fastmail.com/T/#m5f5b9ae31d3fbf30d7d9a9d76c15fb3502dfd903
> Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>

Thanks, patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans


> ---
>  drivers/platform/x86/thinkpad_acpi.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 92b21e49faf6..657625dd60a0 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -231,6 +231,7 @@ enum tpacpi_hkey_event_t {
>  	/* Thermal events */
>  	TP_HKEY_EV_ALARM_BAT_HOT	= 0x6011, /* battery too hot */
>  	TP_HKEY_EV_ALARM_BAT_XHOT	= 0x6012, /* battery critically hot */
> +	TP_HKEY_EV_ALARM_BAT_LIM_CHANGE	= 0x6013, /* battery charge limit changed*/
>  	TP_HKEY_EV_ALARM_SENSOR_HOT	= 0x6021, /* sensor too hot */
>  	TP_HKEY_EV_ALARM_SENSOR_XHOT	= 0x6022, /* sensor critically hot */
>  	TP_HKEY_EV_THM_TABLE_CHANGED	= 0x6030, /* windows; thermal table changed */
> @@ -3777,6 +3778,10 @@ static bool hotkey_notify_6xxx(const u32 hkey, bool *send_acpi_ev)
>  		pr_alert("THERMAL EMERGENCY: battery is extremely hot!\n");
>  		/* recommended action: immediate sleep/hibernate */
>  		break;
> +	case TP_HKEY_EV_ALARM_BAT_LIM_CHANGE:
> +		pr_debug("Battery Info: battery charge threshold changed\n");
> +		/* User changed charging threshold. No action needed */
> +		return true;
>  	case TP_HKEY_EV_ALARM_SENSOR_HOT:
>  		pr_crit("THERMAL ALARM: a sensor reports something is too hot!\n");
>  		/* recommended action: warn user through gui, that */



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

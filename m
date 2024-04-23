Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B0F8ADFDD
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 23 Apr 2024 10:36:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rzBcb-0004Ax-DP;
	Tue, 23 Apr 2024 08:35:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rzBcZ-0004Ad-37
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 23 Apr 2024 08:35:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fuCZlkhR6CJcvu6bt7VGJhHFidB/RrQLb/ndWNyC344=; b=mMbq0M7nTB0/DhIqOAjJPJOVhh
 HreG4sKck9aBOx/UNIPYJK548EIYh6vp3JK5/0gi61X7pJw0ObQhH7XYave1JaI4g5JsmTHZBHYYQ
 wunvM+qabo6ww0OsvttuZw75/kt4C1gowIR8So7UDrS3YmGGu0PF+GKrcTY++BCrFpGE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fuCZlkhR6CJcvu6bt7VGJhHFidB/RrQLb/ndWNyC344=; b=RRboxUoAaVNkKMw0nNRNe4J9pC
 s5R9JxjrdvDEUkJogr6zyq/eGbfCuirchCkjDSDgNqdjET2vOU1+7bpr4eiWmkGP/OqRPJ06rGPJt
 MbCvu0zJ9VQGvMFgS9kyLcZqJ7eKU8QJD9S90T7tw7tLtUeTDRIEd0CWEnJaTL7VN0BE=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzBcX-0001Kr-RJ for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 23 Apr 2024 08:35:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713861306;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fuCZlkhR6CJcvu6bt7VGJhHFidB/RrQLb/ndWNyC344=;
 b=ghUfMPLyuyqYk+rsSQZxLWyIMZdvkbltuUXxgTS/CCAyLsL/N4BFegZWkEdZdblils662e
 N2HdH8d+hbEYxmFS2W7gJKtc6vIGvheIpG9HJWqRMdDYUO0wQLzm0UInQIg/6/JkPL+k8S
 1AP1Cl0MzqVHHQAkKMKLceuYGiS1iGU=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-99--KB8BXGtNQOIzwLFooza8Q-1; Tue, 23 Apr 2024 04:35:04 -0400
X-MC-Unique: -KB8BXGtNQOIzwLFooza8Q-1
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-a51cb1feb23so205774966b.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 23 Apr 2024 01:35:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713861303; x=1714466103;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=fuCZlkhR6CJcvu6bt7VGJhHFidB/RrQLb/ndWNyC344=;
 b=UMPSnoSD3JVH6uKMh9B7PGcty87mOgZtBCQuEKXkagiC11jGDZUzsSLUQhIWjKzm7p
 fdBcvixoXWAdfKfHxwc4jCeioh6xwMQGiDkrgVJ5f0T7ku01wT8lw3WUOYv/xKYf3hVG
 gRY4m1l/u8/P1mXfVRNr6k1EaaVmR24BP0i6q5Ivq5XCGKvVPHw4d2fgGppnnIqfjZNE
 KxAt6CVL3zAN0k62Z3eCkLpY/uUWBZ5fo1afsftc2AqW8Enj9wM189353MPjKdh5XtuD
 5WHKdZAPSUunOsgbJC8B4bUWv6081jMqrLQnDDmxxnPmNXrmTssR3knb11G3Xly2IJZp
 REww==
X-Forwarded-Encrypted: i=1;
 AJvYcCV5j3G1PfO2bHqPbLgnRwKH+cGDpS0EqqCVUGNk5nzP7WGg0sOTA0iiLKFgCOtB9cb9elmX1SqBRZT00WwFO87sv6ReiKMvZeklzZNOnZKp9PdS2x0=
X-Gm-Message-State: AOJu0YyUhacuWyl2rHIqYjFeu2vlBnifGCaUdUahEIb03yBqVKfNz/1E
 dchlXudlRT4pk5z+QQ1Oriz1EbT7jEyMiD7rPHRqykM+2R+fo56zqQF6985lK8BQZrM3K2P4JGk
 hUFvvf0FtFFsDZbjVHxzvVW8mvqznC6ysGxFBT14jVeCdzurpw3H+5NJl/wsudrMH0XsRJ8VZ
X-Received: by 2002:a17:907:7f2a:b0:a55:bb1c:80fb with SMTP id
 qf42-20020a1709077f2a00b00a55bb1c80fbmr3783763ejc.15.1713861303038; 
 Tue, 23 Apr 2024 01:35:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEGTOHjOh6JE6w6XiCS49xz0gpI+dE9rfbVtJZrbSDPUg11Jh+H6xEAtTvfvnkn2cWRXF8ksA==
X-Received: by 2002:a17:907:7f2a:b0:a55:bb1c:80fb with SMTP id
 qf42-20020a1709077f2a00b00a55bb1c80fbmr3783747ejc.15.1713861302629; 
 Tue, 23 Apr 2024 01:35:02 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 dn22-20020a17090794d600b00a5577f7be5esm6263058ejc.81.2024.04.23.01.35.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 23 Apr 2024 01:35:02 -0700 (PDT)
Message-ID: <48408c1a-1745-46a8-bd33-a13861dc9884@redhat.com>
Date: Tue, 23 Apr 2024 10:35:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mark Pearson <mpearson-lenovo@squebb.ca>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
References: <20240421154520.37089-1-hdegoede@redhat.com>
 <20240421154520.37089-9-hdegoede@redhat.com>
 <3b8a783f-eeaf-4f30-8a12-57c14f51bfc5@app.fastmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <3b8a783f-eeaf-4f30-8a12-57c14f51bfc5@app.fastmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Mark, On 4/22/24 9:27 PM, Mark Pearson wrote: > Hi Hans, 
 > > On Sun, Apr 21, 2024, at 11:45 AM, Hans de Goede wrote: >> Factor out
 the adaptive kbd non hotkey event handling into >> adaptive_keyboard_change
 [...] Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rzBcX-0001Kr-RJ
Subject: Re: [ibm-acpi-devel] [PATCH 08/24] platform/x86: thinkpad_acpi:
 Move adaptive kbd event handling to tpacpi_driver_event()
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
Cc: ibm-acpi-devel@lists.sourceforge.net, "platform-driver-x86@vger.kernel.org"
 <platform-driver-x86@vger.kernel.org>, Nitin Joshi1 <njoshi1@lenovo.com>,
 Vishnu Sankar <vishnuocv@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Mark,

On 4/22/24 9:27 PM, Mark Pearson wrote:
> Hi Hans,
> 
> On Sun, Apr 21, 2024, at 11:45 AM, Hans de Goede wrote:
>> Factor out the adaptive kbd non hotkey event handling into
>> adaptive_keyboard_change_row() and adaptive_keyboard_s_quickview_row()
>> helpers and move the handling of TP_HKEY_EV_DFR_CHANGE_ROW and
>> TP_HKEY_EV_DFR_S_QUICKVIEW_ROW to tpacpi_driver_event().
>>
>> This groups all the handling of hotkey events which do not emit
>> a key press event together in tpacpi_driver_event().
>>
>> This is a preparation patch for moving to sparse-keymaps.
>>
>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
>> ---
>>  drivers/platform/x86/thinkpad_acpi.c | 85 +++++++++++++++-------------
>>  1 file changed, 45 insertions(+), 40 deletions(-)
>>
>> diff --git a/drivers/platform/x86/thinkpad_acpi.c 
>> b/drivers/platform/x86/thinkpad_acpi.c
>> index 0bbc462d604c..e8d30f4af126 100644
>> --- a/drivers/platform/x86/thinkpad_acpi.c
>> +++ b/drivers/platform/x86/thinkpad_acpi.c
>> @@ -3677,51 +3677,50 @@ static int adaptive_keyboard_get_next_mode(int 
>> mode)
>>  	return adaptive_keyboard_modes[i];
>>  }
>>
>> +static void adaptive_keyboard_change_row(void)
>> +{
>> +	int mode;
>> +
>> +	if (adaptive_keyboard_mode_is_saved) {
>> +		mode = adaptive_keyboard_prev_mode;
>> +		adaptive_keyboard_mode_is_saved = false;
>> +	} else {
>> +		mode = adaptive_keyboard_get_mode();
>> +		if (mode < 0)
>> +			return;
>> +		mode = adaptive_keyboard_get_next_mode(mode);
>> +	}
>> +
>> +	adaptive_keyboard_set_mode(mode);
>> +}
>> +
>> +static void adaptive_keyboard_s_quickview_row(void)
>> +{
>> +	int mode = adaptive_keyboard_get_mode();
>> +
>> +	if (mode < 0)
>> +		return;
>> +
>> +	adaptive_keyboard_prev_mode = mode;
>> +	adaptive_keyboard_mode_is_saved = true;
>> +
>> +	adaptive_keyboard_set_mode(FUNCTION_MODE);
>> +}
>> +
>>  static bool adaptive_keyboard_hotkey_notify_hotkey(const u32 hkey)
>>  {
>> -	int current_mode = 0;
>> -	int new_mode = 0;
>> -
>> -	switch (hkey) {
>> -	case TP_HKEY_EV_DFR_CHANGE_ROW:
>> -		if (adaptive_keyboard_mode_is_saved) {
>> -			new_mode = adaptive_keyboard_prev_mode;
>> -			adaptive_keyboard_mode_is_saved = false;
>> -		} else {
>> -			current_mode = adaptive_keyboard_get_mode();
>> -			if (current_mode < 0)
>> -				return false;
>> -			new_mode = adaptive_keyboard_get_next_mode(
>> -					current_mode);
>> -		}
>> -
>> -		if (adaptive_keyboard_set_mode(new_mode) < 0)
>> -			return false;
>> -
>> +	if (tpacpi_driver_event(hkey))
>>  		return true;
>>
>> -	case TP_HKEY_EV_DFR_S_QUICKVIEW_ROW:
>> -		current_mode = adaptive_keyboard_get_mode();
>> -		if (current_mode < 0)
>> -			return false;
>> -
>> -		adaptive_keyboard_prev_mode = current_mode;
>> -		adaptive_keyboard_mode_is_saved = true;
>> -
>> -		if (adaptive_keyboard_set_mode (FUNCTION_MODE) < 0)
>> -			return false;
>> -		return true;
>> -
>> -	default:
>> -		if (hkey < TP_HKEY_EV_ADAPTIVE_KEY_START ||
>> -		    hkey > TP_HKEY_EV_ADAPTIVE_KEY_END) {
>> -			pr_info("Unhandled adaptive keyboard key: 0x%x\n", hkey);
>> -			return false;
>> -		}
>> -		tpacpi_input_send_key(hkey - TP_HKEY_EV_ADAPTIVE_KEY_START +
>> -				      TP_ACPI_HOTKEYSCAN_ADAPTIVE_START);
>> -		return true;
>> +	if (hkey < TP_HKEY_EV_ADAPTIVE_KEY_START ||
>> +	    hkey > TP_HKEY_EV_ADAPTIVE_KEY_END) {
>> +		pr_info("Unhandled adaptive keyboard key: 0x%x\n", hkey);
>> +		return false;
>>  	}
>> +
>> +	tpacpi_input_send_key(hkey - TP_HKEY_EV_ADAPTIVE_KEY_START +
>> +			      TP_ACPI_HOTKEYSCAN_ADAPTIVE_START);
>> +	return true;
>>  }
>>
>>  static bool hotkey_notify_extended_hotkey(const u32 hkey)
>> @@ -11117,6 +11116,12 @@ static bool tpacpi_driver_event(const unsigned 
>> int hkey_event)
>>  		}
>>  		/* Key events are suppressed by default hotkey_user_mask */
>>  		return false;
>> +	case TP_HKEY_EV_DFR_CHANGE_ROW:
>> +		adaptive_keyboard_change_row();
>> +		return true;
>> +	case TP_HKEY_EV_DFR_S_QUICKVIEW_ROW:
>> +		adaptive_keyboard_s_quickview_row();
> 
> Was there a reason to get rid of error handling that was previously done with adaptive_keyboard_set_mode and is now not used here?

The error handling consisted of returning false instead of true
(for known_ev), causing an unknown event message to get logged on
top of the error already logged by adaptive_keyboard_get_mode() /
adaptive_keyboard_set_mode().

This second unknown event error is consfusin / not helpful so
I've dropped the "return false" on error behavior, note that
the new helpers do still return early if get_mode() fails just
as before.

I'll add a note about this to the commit message for v2 of
the series.

Regards,

Hans






> 
>> +		return true;
>>  	case TP_HKEY_EV_THM_CSM_COMPLETED:
>>  		lapsensor_refresh();
>>  		/* If we are already accessing DYTC then skip dytc update */
>> -- 
>> 2.44.0
> 
> Thanks
> Mark
> 



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

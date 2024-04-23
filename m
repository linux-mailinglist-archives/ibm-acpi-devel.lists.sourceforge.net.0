Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D158AE8B5
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 23 Apr 2024 15:54:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rzGaT-0006KS-Ow;
	Tue, 23 Apr 2024 13:53:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rzGaR-0006KL-QT
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 23 Apr 2024 13:53:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IVF90XWHoHc9NfFUgT9VoULp5U8wgEinxJnSIXepTEs=; b=hXihhhr4C4D6NT+A/6ZZRyRMiK
 gM2/SVUqdgrllDeSKq6zs9tVGUxvUg3dGin2Y2LT7xXmZ6oh4uEW+Msn+sM8P4/qXFGIdRT8g5H2d
 +on95T7X6kq2xNQqyLjkqGOlPV7TQt9mjjkVavu3pAikzP9+H6N/ZPoWqujthsn4q0IU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IVF90XWHoHc9NfFUgT9VoULp5U8wgEinxJnSIXepTEs=; b=lGtd/DIkeywWLFSTcX6CwS/QDK
 WGRZ7ci4tRy+1qgWZ3S6uUXyG1lwRawLav5OSI9fp37FX527SOaHsmKB85c4tQdSCAvzHt+W9aFBK
 RM9/NH9TFb3S+rQHTjdsj2bmn9c2bXpqnRz6NNWcltU3IE5RrCHASZJdCr40MOiyIlv8=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzGaQ-0007L1-Nq for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 23 Apr 2024 13:53:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713880400;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IVF90XWHoHc9NfFUgT9VoULp5U8wgEinxJnSIXepTEs=;
 b=MSWzUuSW9wb/l6fv1BlpsOG2xQHMVxnh2glwuaWSQnrYNBR+FXQUdcDqJnltYIGcV0EU9g
 GYjmbzJZNPgbwdk/RYpH6ySi//6MMRN/Isn/4RBVLUepYCTwYlWDLfppWbRQVBuJkrd9Tx
 newCJ2dR06p0HYlO9rHWiScFKxfZGl0=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-653-R8tzigvNNCmIHXQSY5IzNg-1; Tue, 23 Apr 2024 09:53:17 -0400
X-MC-Unique: R8tzigvNNCmIHXQSY5IzNg-1
Received: by mail-ej1-f71.google.com with SMTP id
 a640c23a62f3a-a5741ee352bso96148666b.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 23 Apr 2024 06:53:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713880395; x=1714485195;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=IVF90XWHoHc9NfFUgT9VoULp5U8wgEinxJnSIXepTEs=;
 b=UDLwu1ZANYNUBXWSA380o+13IrHBP0L6sJLJf9hHiNUXAXKaDMaCcst+85RWBz612j
 Ky7UhVd0QoCtTRpPKJEXFaC+BVe/SBMV5o/8ZY5MSGxhTj4yI9rMGM00YG4PnqLpaevC
 xQcydyE+JDv6SPCUKl5+glRAxlzlU68HhriQwVFNEGBxjfhPsMyMzEQ3umcbDc28YfzQ
 0VWkNx3wzBJ/GDqbJ7TcMIvQTMNDsM9pa2Sq8NTJEa8PeMJckMomXokIvjFiG+z3R1ne
 vtWtNVtQCzzE1H+APWsoeo4IDxIGBz16oYzaulnbda9MdUwXTemLya6O1diw/mNsMJs7
 v6cQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXmJ4/XGaX2f6KdF5WmkEHULOhek3JkzkWM8GEz+26wvdOP+NY0tMQ6bJVt0Zl4TqdDRyzzcw1c2Phn8bKLGLM8zuC86YQt3qSQmlywbWs9/A5MB/E=
X-Gm-Message-State: AOJu0Yzs/fechPPOgo/2xdY9lPcWMsTQrITdSIc50SPj1D43g4Fzodvt
 2RcVfN2GCYpTe2eIVBftBMQXlXMaYKcfeKKFf6WzwvD7sp5eVdWk4O2Y061G+At4lFpkuU56DBD
 YeBSnJgnyeGkJ/gakZkBS26OrrIc1F7/U7yWZSkYyOP1ETOmRcOYzsYak4ZL4nh01jqJYcFIG
X-Received: by 2002:a17:907:20e9:b0:a52:24b7:b4fc with SMTP id
 rh9-20020a17090720e900b00a5224b7b4fcmr7617554ejb.72.1713880395157; 
 Tue, 23 Apr 2024 06:53:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGltDwLDkMRMIF8OPkk+CrTWuDm0ywN9Wdl2wUd1DsoYHvi3sI01HJS8/xRDfSPGNJoFPEgCg==
X-Received: by 2002:a17:907:20e9:b0:a52:24b7:b4fc with SMTP id
 rh9-20020a17090720e900b00a5224b7b4fcmr7617547ejb.72.1713880394788; 
 Tue, 23 Apr 2024 06:53:14 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 kx18-20020a170907775200b00a57e2d39d56sm1628329ejc.223.2024.04.23.06.53.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 23 Apr 2024 06:53:14 -0700 (PDT)
Message-ID: <e3375639-a315-4e0e-b43e-a5003cc7d6fb@redhat.com>
Date: Tue, 23 Apr 2024 15:53:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mark Pearson <mpearson-lenovo@squebb.ca>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
References: <20240421154520.37089-1-hdegoede@redhat.com>
 <20240421154520.37089-9-hdegoede@redhat.com>
 <3b8a783f-eeaf-4f30-8a12-57c14f51bfc5@app.fastmail.com>
 <48408c1a-1745-46a8-bd33-a13861dc9884@redhat.com>
 <be2db1e4-159f-4b69-a07e-70e8e04fb5c3@app.fastmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <be2db1e4-159f-4b69-a07e-70e8e04fb5c3@app.fastmail.com>
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
 Content preview:  Hi Mark, On 4/23/24 2:15 PM, Mark Pearson wrote: > Hi Hans
 > > On Tue, Apr 23, 2024, at 4:35 AM, Hans de Goede wrote: >> Hi Mark, >>
 >> On 4/22/24 9:27 PM, Mark Pearson wrote: >>> Hi Hans, >>> >>> On Sun, Apr
 [...] Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
X-Headers-End: 1rzGaQ-0007L1-Nq
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

On 4/23/24 2:15 PM, Mark Pearson wrote:
> Hi Hans
> 
> On Tue, Apr 23, 2024, at 4:35 AM, Hans de Goede wrote:
>> Hi Mark,
>>
>> On 4/22/24 9:27 PM, Mark Pearson wrote:
>>> Hi Hans,
>>>
>>> On Sun, Apr 21, 2024, at 11:45 AM, Hans de Goede wrote:
>>>> Factor out the adaptive kbd non hotkey event handling into
>>>> adaptive_keyboard_change_row() and adaptive_keyboard_s_quickview_row()
>>>> helpers and move the handling of TP_HKEY_EV_DFR_CHANGE_ROW and
>>>> TP_HKEY_EV_DFR_S_QUICKVIEW_ROW to tpacpi_driver_event().
>>>>
>>>> This groups all the handling of hotkey events which do not emit
>>>> a key press event together in tpacpi_driver_event().
>>>>
>>>> This is a preparation patch for moving to sparse-keymaps.
>>>>
>>>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
>>>> ---
>>>>  drivers/platform/x86/thinkpad_acpi.c | 85 +++++++++++++++-------------
>>>>  1 file changed, 45 insertions(+), 40 deletions(-)
>>>>
>>>> diff --git a/drivers/platform/x86/thinkpad_acpi.c 
>>>> b/drivers/platform/x86/thinkpad_acpi.c
>>>> index 0bbc462d604c..e8d30f4af126 100644
>>>> --- a/drivers/platform/x86/thinkpad_acpi.c
>>>> +++ b/drivers/platform/x86/thinkpad_acpi.c
>>>> @@ -3677,51 +3677,50 @@ static int adaptive_keyboard_get_next_mode(int 
>>>> mode)
>>>>  	return adaptive_keyboard_modes[i];
>>>>  }
>>>>
>>>> +static void adaptive_keyboard_change_row(void)
>>>> +{
>>>> +	int mode;
>>>> +
>>>> +	if (adaptive_keyboard_mode_is_saved) {
>>>> +		mode = adaptive_keyboard_prev_mode;
>>>> +		adaptive_keyboard_mode_is_saved = false;
>>>> +	} else {
>>>> +		mode = adaptive_keyboard_get_mode();
>>>> +		if (mode < 0)
>>>> +			return;
>>>> +		mode = adaptive_keyboard_get_next_mode(mode);
>>>> +	}
>>>> +
>>>> +	adaptive_keyboard_set_mode(mode);
>>>> +}
>>>> +
>>>> +static void adaptive_keyboard_s_quickview_row(void)
>>>> +{
>>>> +	int mode = adaptive_keyboard_get_mode();
>>>> +
>>>> +	if (mode < 0)
>>>> +		return;
>>>> +
>>>> +	adaptive_keyboard_prev_mode = mode;
>>>> +	adaptive_keyboard_mode_is_saved = true;
>>>> +
>>>> +	adaptive_keyboard_set_mode(FUNCTION_MODE);
>>>> +}
>>>> +
>>>>  static bool adaptive_keyboard_hotkey_notify_hotkey(const u32 hkey)
>>>>  {
>>>> -	int current_mode = 0;
>>>> -	int new_mode = 0;
>>>> -
>>>> -	switch (hkey) {
>>>> -	case TP_HKEY_EV_DFR_CHANGE_ROW:
>>>> -		if (adaptive_keyboard_mode_is_saved) {
>>>> -			new_mode = adaptive_keyboard_prev_mode;
>>>> -			adaptive_keyboard_mode_is_saved = false;
>>>> -		} else {
>>>> -			current_mode = adaptive_keyboard_get_mode();
>>>> -			if (current_mode < 0)
>>>> -				return false;
>>>> -			new_mode = adaptive_keyboard_get_next_mode(
>>>> -					current_mode);
>>>> -		}
>>>> -
>>>> -		if (adaptive_keyboard_set_mode(new_mode) < 0)
>>>> -			return false;
>>>> -
>>>> +	if (tpacpi_driver_event(hkey))
>>>>  		return true;
>>>>
>>>> -	case TP_HKEY_EV_DFR_S_QUICKVIEW_ROW:
>>>> -		current_mode = adaptive_keyboard_get_mode();
>>>> -		if (current_mode < 0)
>>>> -			return false;
>>>> -
>>>> -		adaptive_keyboard_prev_mode = current_mode;
>>>> -		adaptive_keyboard_mode_is_saved = true;
>>>> -
>>>> -		if (adaptive_keyboard_set_mode (FUNCTION_MODE) < 0)
>>>> -			return false;
>>>> -		return true;
>>>> -
>>>> -	default:
>>>> -		if (hkey < TP_HKEY_EV_ADAPTIVE_KEY_START ||
>>>> -		    hkey > TP_HKEY_EV_ADAPTIVE_KEY_END) {
>>>> -			pr_info("Unhandled adaptive keyboard key: 0x%x\n", hkey);
>>>> -			return false;
>>>> -		}
>>>> -		tpacpi_input_send_key(hkey - TP_HKEY_EV_ADAPTIVE_KEY_START +
>>>> -				      TP_ACPI_HOTKEYSCAN_ADAPTIVE_START);
>>>> -		return true;
>>>> +	if (hkey < TP_HKEY_EV_ADAPTIVE_KEY_START ||
>>>> +	    hkey > TP_HKEY_EV_ADAPTIVE_KEY_END) {
>>>> +		pr_info("Unhandled adaptive keyboard key: 0x%x\n", hkey);
>>>> +		return false;
>>>>  	}
>>>> +
>>>> +	tpacpi_input_send_key(hkey - TP_HKEY_EV_ADAPTIVE_KEY_START +
>>>> +			      TP_ACPI_HOTKEYSCAN_ADAPTIVE_START);
>>>> +	return true;
>>>>  }
>>>>
>>>>  static bool hotkey_notify_extended_hotkey(const u32 hkey)
>>>> @@ -11117,6 +11116,12 @@ static bool tpacpi_driver_event(const unsigned 
>>>> int hkey_event)
>>>>  		}
>>>>  		/* Key events are suppressed by default hotkey_user_mask */
>>>>  		return false;
>>>> +	case TP_HKEY_EV_DFR_CHANGE_ROW:
>>>> +		adaptive_keyboard_change_row();
>>>> +		return true;
>>>> +	case TP_HKEY_EV_DFR_S_QUICKVIEW_ROW:
>>>> +		adaptive_keyboard_s_quickview_row();
>>>
>>> Was there a reason to get rid of error handling that was previously done with adaptive_keyboard_set_mode and is now not used here?
>>
>> The error handling consisted of returning false instead of true
>> (for known_ev), causing an unknown event message to get logged on
>> top of the error already logged by adaptive_keyboard_get_mode() /
>> adaptive_keyboard_set_mode().
>>
>> This second unknown event error is consfusin / not helpful so
>> I've dropped the "return false" on error behavior, note that
>> the new helpers do still return early if get_mode() fails just
>> as before.
>>
>> I'll add a note about this to the commit message for v2 of
>> the series.
>>
> Thanks for the explanation - makes sense.
> 
> Reviwed-by: Mark Pearson <mpearson-lenovo@squebb.ca>
> 
> As a note - I've been working my way thru the patches. Is it OK to send one Reviewed-by at the end for all the patches for which I had no questions, or is it better to ack each one individually?

One Reviewed-by for the series when you're done (with possible
exception for some patches you have outstanding remarks for)
is fine.

Regards,

Hans





_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

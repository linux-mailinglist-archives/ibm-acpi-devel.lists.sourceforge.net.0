Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C46278A8CB4
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 17 Apr 2024 22:06:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rxBY3-0007BY-0G;
	Wed, 17 Apr 2024 20:06:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rxBXx-0007BM-BV
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 17 Apr 2024 20:06:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Cc:To:From:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GXng1P4bGBgQBCNw4yKgKmJCzOVQRzHuuBNEdqSXyZs=; b=HHbcXbrIGvllIGFNtKhbmlECcN
 tI9BMzUAYddi00UeeJfPGhFO/NZ322AOivWlOc8NXUSOZQcUO2rYff8R9hxJf+xFIIQELog3tBwjW
 k3v/533WwRHpb1t6uy8EtJjlLVP349sUoPf5tfoBwwVmC05JZJCuMDUp2Mjbu6TpfyLo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Cc:To:From:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GXng1P4bGBgQBCNw4yKgKmJCzOVQRzHuuBNEdqSXyZs=; b=VHcADityNRRisZ7oT5vQm0rFfm
 yfwAvFCGDUPQtJ1ROsq216y7loJndqzmGRoZVI9V+Y2PY7aqQisV7CqO7Bw8GxHX5g5ADzAIqP3lg
 f5QfQtz1Jq6g6ULaBeOBBGCPMwaVmJpHa3mZdytcfwrpnG6MfI/MKoQ5AW35OnNAGET0=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rxBXx-0008Lo-1m for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 17 Apr 2024 20:06:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713384374;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GXng1P4bGBgQBCNw4yKgKmJCzOVQRzHuuBNEdqSXyZs=;
 b=i0y4b5s8keDNBtVxANe6pkcoEfTazN/GVuI6f/nfrnEVR+jb5HHu0DjIZLP82MKHv14CgN
 TFaDcqKWaarbPg5GRt3nCM41ALXUX1r/mUejVl2OZQVZNVurJKoj3Gf8HBYyUPXSVqC6+m
 pBrlBuQUajotSRCg1TWyPW4JL0nrBxE=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-690-cZZ2gNSYM6aRezmKRuO1Dg-1; Wed, 17 Apr 2024 16:06:11 -0400
X-MC-Unique: cZZ2gNSYM6aRezmKRuO1Dg-1
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-a556121c01aso767566b.2
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 17 Apr 2024 13:06:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713384370; x=1713989170;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:from:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=GXng1P4bGBgQBCNw4yKgKmJCzOVQRzHuuBNEdqSXyZs=;
 b=gXU2IH6KdkgpfvqzFqWzPB1KSuHJhoEGTavrf//m5lDfX2KbIXJM+qA35bz8Luq78g
 fSuWXlC4l2TqlrwhJmxb0AvfEDhhU3mAeH9Flmjg/FwaFxaNnIOOTXMiqaHWUN5jhFHr
 d9sDPiLVlvDu/u0CkZVAQLcFXkv7Fvnj8XHiRhUf8VR20/edexOJceoE2aseo80jikvj
 2sYF6XXCqiahmUdOOWmbuy7Hb11dHHbjWb3Qo7K3grQNtPfRhoK1+ZTtO5OXiRku8Pik
 qGd393sMa6Y5qltPt6bCHTiWJub1JbPN7nrO6BmXopBG5TJloSPDRMvwkgPsc0Ef2ITE
 buXQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWBdNgrVLHM7oqCmQjcRmkk15SEbbJF/5+WCU6u5aUNWHG2J+2a6lmBLEZfFCmVn4RBKZksszsM6OEz8k3GT8E7+xb/eR21L39S3VvXrlt+XpILb2k=
X-Gm-Message-State: AOJu0Yw5hvbyydPCXaxDJtnMhfCcYQigSTuOWXT7tgjVhFO8v18NYBLw
 JYRGTV4c7VarUnwsTeIkFXsn2WICVlbITZqnDfvoWWyfUrShlO+FTnSxObqxsmIAmtYTstatn7Z
 /pF67o1nGlhFuHLLNQlhteeVddww8Mz0JjD4YBTwlIS1PjlBLg5u8tOtQN/5+ZfiY/NXduMe3
X-Received: by 2002:a17:906:3298:b0:a52:66f3:a9ee with SMTP id
 24-20020a170906329800b00a5266f3a9eemr335005ejw.41.1713384370561; 
 Wed, 17 Apr 2024 13:06:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEvyR41sBORHp+SltZycGx/GPdfz2ryUpFV8uyoatC7LGB+sWjez9bqHxgJY63/bO+W/uL8Rg==
X-Received: by 2002:a17:906:3298:b0:a52:66f3:a9ee with SMTP id
 24-20020a170906329800b00a5266f3a9eemr334991ejw.41.1713384370191; 
 Wed, 17 Apr 2024 13:06:10 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 qf41-20020a1709077f2900b00a522a073a64sm7973310ejc.187.2024.04.17.13.06.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Apr 2024 13:06:09 -0700 (PDT)
Message-ID: <55ded7c3-fbc5-4fa5-8b63-da4d7aa4966c@redhat.com>
Date: Wed, 17 Apr 2024 22:06:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Hans de Goede <hdegoede@redhat.com>
To: Mark Pearson <mpearson-lenovo@squebb.ca>
References: <mpearson-lenovo@squebb.ca>
 <20240417173124.9953-1-mpearson-lenovo@squebb.ca>
 <20240417173124.9953-2-mpearson-lenovo@squebb.ca>
 <98082080-0fcf-470f-afa5-76ec2bbffee7@redhat.com>
In-Reply-To: <98082080-0fcf-470f-afa5-76ec2bbffee7@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -6.9 (------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Mark, On 4/17/24 9:39 PM, Hans de Goede wrote: > Hi Mark, 
 > > Thank you for the new version of this series, overall this looks good,
 > one small remark below. > > On 4/17/24 7:31 PM, Mark Pearson wrote: >>
 [...] Content analysis details:   (-6.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rxBXx-0008Lo-1m
Subject: Re: [ibm-acpi-devel] [PATCH v2 2/4] platform/x86: thinkpad_acpi:
 Support for trackpoint doubletap
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
Cc: linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 vsankar@lenovo.com, ibm-acpi-devel@lists.sourceforge.net, hmh@hmh.eng.br,
 Vishnu Sankar <vishnuocv@gmail.com>, ilpo.jarvinen@linux.intel.com,
 peter.hutterer@redhat.com, njoshi1@lenovo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Mark,

On 4/17/24 9:39 PM, Hans de Goede wrote:
> Hi Mark,
> 
> Thank you for the new version of this series, overall this looks good,
> one small remark below.
> 
> On 4/17/24 7:31 PM, Mark Pearson wrote:
>> Lenovo trackpoints are adding the ability to generate a doubletap event.
>> This handles the doubletap event and sends the KEY_PROG1 event to
>> userspace.
>>
>> Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
>> Signed-off-by: Vishnu Sankar <vishnuocv@gmail.com>
>> ---
>> Changes in v2:
>>  - Use KEY_PROG1 instead of KEY_DOUBLETAP as input maintainer doesn't
>>    want new un-specific key codes added.
>>  - Add doubletap to hotkey scan code table and use existing hotkey
>>    functionality.
>>  - Tested using evtest, and then gnome settings to configure a custom shortcut
>>    to launch an application.
>>
>>  drivers/platform/x86/thinkpad_acpi.c | 18 ++++++++++++++++++
>>  1 file changed, 18 insertions(+)
>>
>> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
>> index 3b48d893280f..6d04d45e8d45 100644
>> --- a/drivers/platform/x86/thinkpad_acpi.c
>> +++ b/drivers/platform/x86/thinkpad_acpi.c
>> @@ -232,6 +232,9 @@ enum tpacpi_hkey_event_t {
>>  
>>  	/* Misc */
>>  	TP_HKEY_EV_RFKILL_CHANGED	= 0x7000, /* rfkill switch changed */
>> +
>> +	/* Misc2 */
>> +	TP_HKEY_EV_TRACK_DOUBLETAP      = 0x8036, /* trackpoint doubletap */
>>  };
>>  
>>  /****************************************************************************
>> @@ -1786,6 +1789,7 @@ enum {	/* hot key scan codes (derived from ACPI DSDT) */
>>  	TP_ACPI_HOTKEYSCAN_NOTIFICATION_CENTER,
>>  	TP_ACPI_HOTKEYSCAN_PICKUP_PHONE,
>>  	TP_ACPI_HOTKEYSCAN_HANGUP_PHONE,
> 
> I understand why you've done this but I think this needs a comment,
> something like:
> 
>         /*
>          * For TP_HKEY_EV_TRACK_DOUBLETAP, unlike the codes above which map to:
>          * (hkey_event - 0x1300) + TP_ACPI_HOTKEYSCAN_EXTENDED_START, this is
>          * hardcoded for TP_HKEY_EV_TRACK_DOUBLETAP handling. Therefor this must
>          * always be the last entry (after any 0x1300-0x13ff entries).
>          */
> +	TP_ACPI_HOTKEYSCAN_DOUBLETAP,

Ugh, actually this will not work becuuse we want hotkeyscancodes to be stable
because these are userspace API since they can be remapped using hwdb so we
cannot have the hotkeyscancode changing when new 0x1300-0x13ff range entries
get added.

So we need to either grow the table a lot and reserve a whole bunch of space
for future 0x13xx - 0x13ff codes or maybe something like this:

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 771aaa7ae4cf..af3279889ecc 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -1742,7 +1742,12 @@ enum {	/* hot key scan codes (derived from ACPI DSDT) */
 	TP_ACPI_HOTKEYSCAN_VOLUMEDOWN,
 	TP_ACPI_HOTKEYSCAN_MUTE,
 	TP_ACPI_HOTKEYSCAN_THINKPAD,
-	TP_ACPI_HOTKEYSCAN_UNK1,
+	/*
+	 * Note this gets send both on 0x1019 and on TP_HKEY_EV_TRACK_DOUBLETAP
+	 * hotkey-events. 0x1019 events have never been seen on any actual hw
+	 * and a scancode is needed for the special 0x8036 doubletap hotkey-event.
+	 */
+	TP_ACPI_HOTKEYSCAN_DOUBLETAP,
 	TP_ACPI_HOTKEYSCAN_UNK2,
 	TP_ACPI_HOTKEYSCAN_UNK3,
 	TP_ACPI_HOTKEYSCAN_UNK4,

or just hardcode KEY_PROG1 like your previous patch does, but I'm not
a fan of that because of loosing hwdb remapping functionality for this
"key" then.

Note I'm open to other suggestions.

Regards,

Hans



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

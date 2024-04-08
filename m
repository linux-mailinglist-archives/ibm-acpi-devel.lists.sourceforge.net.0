Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C36D89C7E9
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  8 Apr 2024 17:12:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rtqf6-0004bS-To;
	Mon, 08 Apr 2024 15:11:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1rtqf5-0004bI-KA
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 08 Apr 2024 15:11:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bCWpPGV2vJYgZ3bq3vRrz3FGsmLszaLN5U7PO44bhCI=; b=mWFGaOYKqxGD0BoGiHileNXXK3
 Z07kP42/KILEFC4d8iwNUM58jTfCUhv2EeJMxQ1x3Cc0wd/o3DOqlrQho5BNDPd6iRnuXHXkKcgBy
 zzrJnh77K+QSF61XU8Cg/jRdoEDJgUqAcGLenSwiiZhiTntaW0nTylAl59wha5RWznT8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bCWpPGV2vJYgZ3bq3vRrz3FGsmLszaLN5U7PO44bhCI=; b=SRFfhMQ8+Vnl0jEclm0BjyeQUz
 tsSEwNgzTKKddI33rYH4FSR3gV6wrTc4ltoceShXTcg63Q2T43onF9XdFbBo8HEfEVO1jf1N0k8Cj
 C+FW821x1Uv3p/xNGrMGsyTDjWECPjO30lFO5IjBxg1V/893Tdonr3fF1mhAWcUtrqBU=;
Received: from wfout5-smtp.messagingengine.com ([64.147.123.148])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rtqf1-0001vB-Ov for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 08 Apr 2024 15:11:56 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailfout.west.internal (Postfix) with ESMTP id 52A501C000E1;
 Mon,  8 Apr 2024 10:56:23 -0400 (EDT)
Received: from imap52 ([10.202.2.102])
 by compute3.internal (MEProxy); Mon, 08 Apr 2024 10:56:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm3; t=1712588182; x=1712674582; bh=bCWpPGV2vJ
 YgZ3bq3vRrz3FGsmLszaLN5U7PO44bhCI=; b=DLNhd8JYzB3+bRSSRNyvtjPFZy
 7L2UummJ5c8SIg2vWVcF0DproH/wJmUPOz5bxXuGmNRLTYg07aW/mz74NUETTc2s
 wq9ke0TuZ6bFEmSBo1SJLRTqjDCzFmxXcsiAEtMKaCnupJxED31XGQIkcQ1zRJeC
 pgOuePuOOMoyic2bLNXVJs0Su3sUr2o00W2A0UikZEYaY59lLprY6UCTP1/q41q4
 Y2IH8c/up11UvgRXPJmM4dXOEgWXvt3DETcd6I6x/y9lBppZKGsW48nrvZb9oRLE
 ahoKHsUbeSXJUzJRE8f5ieD0cKntYppt4lc4P/XNAA0w/8giBM3p6il2FWGw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1712588182; x=1712674582; bh=bCWpPGV2vJYgZ3bq3vRrz3FGsmLs
 zaLN5U7PO44bhCI=; b=e1TuCh66ExaTJ5mMSci9uxjBSdh8YePTAdXxa/KFBQ+V
 wokLBtcCDb7TS30pwZMlMortskyCCUf3olQ6ENpBwfU990rVgEDfqREBFyTs9Dnn
 IjeeFZ2LVxZZFalnT58rGH08SZaJpich7pyBa8AlB5BBXNg90gYaXqoNBvp6I45I
 Xy2WZpOE+vy5n7M/QVUF8NJJvFsk0YxA1WzGx4YYOoYyGpVBswnwdwWBKpXbRZKk
 7i5SBIH5z6KVCN0pcOr0zZ1Jb5l7pGfD21tFWlc1PkgznQ5UWtGA5xp8ldxqm+QT
 +xuxax0Ai3CJ8xX7nYGDThJzJYNYTMilpjcTjVf5yQ==
X-ME-Sender: <xms:lgUUZtBiFYcQspTQiF_PDSC1PnalTnMmbd382eSRDiwVSix1t11MOA>
 <xme:lgUUZrgOmHppfF9lcScIedcgeGZD5pBPSlKRtf1vH2pzNIMHAdgW-h9b9LSi8sc4t
 N3tyixI1kNwriShhCw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudegiedgkedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedfofgr
 rhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssg
 drtggrqeenucggtffrrghtthgvrhhnpeeiueefjeeiveetuddvkeetfeeltdevffevudeh
 ffefjedufedvieejgedugeekhfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
 epmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggr
X-ME-Proxy: <xmx:lgUUZons9-jeK2MfxW_wGy-Zgf66EiA9OnhoRboSx3Mw_Ect6KTakA>
 <xmx:lgUUZnw4QhG5vNeFtm_ynfrFh5T9WFQWgAX6esdQtkoTvOUrSTJnXw>
 <xmx:lgUUZiQ5ha7EAc0BHCYSG2hMYR4PHQOnFiHlEKXIqsBAsX6sNeWz-g>
 <xmx:lgUUZqZIJmZAcDs72TEaOU4hSbbhq6-Aynseo0VUmUm41OWLcHve2w>
 <xmx:lgUUZnJc_E4BFyb8Ou12ytisOPdkCbxghCRb-3uPgP2Jfu95QdOpsw03>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 251DFC60097; Mon,  8 Apr 2024 10:56:22 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-368-gc733b1d8df-fm-20240402.001-gc733b1d8
MIME-Version: 1.0
Message-Id: <e88a2f41-f89d-444c-a09a-487097c6e9eb@app.fastmail.com>
In-Reply-To: <e1ccf281-5c77-4447-a6c7-5b0b008c7c56@redhat.com>
References: <mpearson-lenovo@squebb.ca>
 <20240324210817.192033-1-mpearson-lenovo@squebb.ca>
 <20240324210817.192033-3-mpearson-lenovo@squebb.ca>
 <e1ccf281-5c77-4447-a6c7-5b0b008c7c56@redhat.com>
Date: Mon, 08 Apr 2024 10:56:25 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Hans de Goede" <hdegoede@redhat.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Hans, Many thanks for the review. On Mon, Apr 8, 2024,
 at 9:04 AM, Hans de Goede wrote: > Hi Mark, > > On 3/24/24 10:07 PM, Mark
 Pearson wrote: >> Lenovo trackpoints are adding the ability to generate a
 doubletap event. >> This handle [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.148 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1rtqf1-0001vB-Ov
Subject: Re: [ibm-acpi-devel] [PATCH 2/4] platform/x86: thinkpad_acpi:
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
Cc: dmitry.torokhov@gmail.com, linux-kernel@vger.kernel.org,
 "platform-driver-x86@vger.kernel.org"
 <platform-driver-x86@vger.kernel.org>, Vishnu Sankar <vsankar@lenovo.com>,
 ibm-acpi-devel@lists.sourceforge.net,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>, linux-input@vger.kernel.org,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Peter Hutterer <peter.hutterer@redhat.com>, Nitin Joshi1 <njoshi1@lenovo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Hans,

Many thanks for the review.

On Mon, Apr 8, 2024, at 9:04 AM, Hans de Goede wrote:
> Hi Mark,
>
> On 3/24/24 10:07 PM, Mark Pearson wrote:
>> Lenovo trackpoints are adding the ability to generate a doubletap event.
>> This handles the doubletap event and sends the KEY_DOUBLECLICK event to
>> userspace.
>> 
>> Signed-off-by: Mark Pearson <mpearson-lenovo@squebb.ca>
>> Signed-off-by: Vishnu Sankar <vsankar@lenovo.com>
>> ---
>>  drivers/platform/x86/thinkpad_acpi.c | 17 +++++++++++++++++
>>  1 file changed, 17 insertions(+)
>> 
>> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
>> index 82429e59999d..2bbb32c898e9 100644
>> --- a/drivers/platform/x86/thinkpad_acpi.c
>> +++ b/drivers/platform/x86/thinkpad_acpi.c
>> @@ -232,6 +232,7 @@ enum tpacpi_hkey_event_t {
>>  
>>  	/* Misc */
>>  	TP_HKEY_EV_RFKILL_CHANGED	= 0x7000, /* rfkill switch changed */
>> +	TP_HKEY_EV_TRACKPOINT_DOUBLETAP = 0x8036, /* doubletap on Trackpoint*/
>>  };
>>  
>>  /****************************************************************************
>> @@ -4081,6 +4082,22 @@ static void hotkey_notify(struct ibm_struct *ibm, u32 event)
>>  				break;
>>  			}
>>  			fallthrough;	/* to default */
>
> This now no longer fallsthrough to default. IMHO the best thing to do
> here is add a new preparation patch which initializes known_ev to false
> inside the while before the switch-case (together with the send_acpi_ev
> and ignore_acpi_ev init). and then change this fallthrough to a break
> in the preparation patch. You can then also remove the default case
> altogether in this prep patch.
>
Ack - that makes sense. I'll look at doing that.

>> +		case 8:
>> +			/* 0x8036: Trackpoint doubletaps */
>> +			if (hkey == TP_HKEY_EV_TRACKPOINT_DOUBLETAP) {
>> +				send_acpi_ev = true;
>> +				ignore_acpi_ev = false;
>
> These 2 values are set as the default above the switch-case, please
> drop these 2 lines.

Agreed. Will change.

>
>> +				known_ev = true;
>> +				/* Send to user space */
>> +				mutex_lock(&tpacpi_inputdev_send_mutex);
>> +				input_report_key(tpacpi_inputdev, KEY_DOUBLECLICK, 1);
>> +				input_sync(tpacpi_inputdev);
>> +				input_report_key(tpacpi_inputdev, KEY_DOUBLECLICK, 0);
>> +				input_sync(tpacpi_inputdev);
>> +				mutex_unlock(&tpacpi_inputdev_send_mutex);
>
> This code duplicates tpacpi_input_send_key(), what you want to do here
> is define a hotkey_keycode_map scancode range for new 0x8xxx codes like how this
> was done when extended scancodes where added to deal with the new 0x13xx hotkey
> event codes for the 2017+ models.
>
> See commit 696c6523ec8f ("platform/x86: thinkpad_acpi: add mapping for 
> new hotkeys")
>
> Despite re-using tpacpi_input_send_key() there are 2 reasons why we want
> scancodes for these new "keys".
>
> 1. By adding the keys to the hotkey_keycode_map they automatically
> also get input_set_capability(tpacpi_inputdev, EV_KEY, hotkey_keycode_map[i]);
> called on them advertising to userspace that tpacpi_inputdev can actually
> generate these keypresses. Something which is currently lacking from your
> patch. Related to this did you test this with evtest? I think that the input
> core will suppress the events when you do not set the capability ?
>
> 2. This allows remapping scancodes to different KEY_foo values with hwdb
> entries.
>
Will look into doing this.
There was a reason originally I did it like this, but I can't remember what it was. I'll revisit it.

I did test with evtest but I ended up having to cheat as there's quite a few layers in userspace and I got a bit bogged down chewing my way through those (building them against the right headers etc). 
I ended up using an already existing code to make sure it was doing the right thing in the driver - and then assumed that once the keycode was 'released', and the different user space projects updated per normal procedure, it would work. It's possible it meant I bypassed/missed this issue so I'll retry once I've made the updates.

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

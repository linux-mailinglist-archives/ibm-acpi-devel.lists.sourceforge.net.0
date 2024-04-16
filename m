Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EA54C8A6B6C
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 16 Apr 2024 14:48:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rwiE3-00071x-2Q;
	Tue, 16 Apr 2024 12:47:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1rwiE1-00071n-1X
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 16 Apr 2024 12:47:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o+A6VQF+YAbnPd55BY98j5+Z/sNjOCmfHE3OGnEzh2o=; b=fkNKOp6QRbBLN7bWSeHqavsVIU
 bxUN40jNLTx8IzAsQTlxvq5/KP8o6RRSrF3evjG0gkRCZ6tf63ZtEmo7UHk0LCw+Nd7jrBIjaxPen
 k7Z9kbZ+PrgfE6XZ2JHu2kk9e4E/UbVRVbgFdfcRi9fPs26H8Un5u1F7djzoHHHFt+v0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=o+A6VQF+YAbnPd55BY98j5+Z/sNjOCmfHE3OGnEzh2o=; b=myEDOstxF8LoJrPl6OmQfwadH8
 e562o6xu1zHbZ+0Ij3RkL73SiOioZap5QVAs5TVPBxp1D1dy9MtCeVFEeBVEmhTUGBYt/Z04uh7HF
 2eyqu3A/JjdTXG7aFVxTVuILdPSV46lehrYfl7yQQrlx3gPh9ROvcuyTvJLdG9yngd/c=;
Received: from fout2-smtp.messagingengine.com ([103.168.172.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rwiDz-0004Cr-Pn for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 16 Apr 2024 12:47:49 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailfout.nyi.internal (Postfix) with ESMTP id C7FAA13806EC;
 Tue, 16 Apr 2024 08:47:36 -0400 (EDT)
Received: from imap52 ([10.202.2.102])
 by compute3.internal (MEProxy); Tue, 16 Apr 2024 08:47:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm3; t=1713271656; x=1713358056; bh=o+A6VQF+YA
 bnPd55BY98j5+Z/sNjOCmfHE3OGnEzh2o=; b=Q3XWA1+OY/HWHYR1BQtn2qUTwQ
 xtT9OgbDT3BR8cSHAJUORD8mBmJAWIpxV/eOneMCCwOXn5kotlZygOEQz0LibU/Y
 R+Yl0wL4GYNr0nW1Hn3GMMeRABQ49Cv8nOVBo9A+lr+PhRbih2Cj+39PyIXTqnaT
 Q/U/432UW6u3q6DiRQewWPZZZumLUZebYwr62fSp7z88gh+jSFcrU0wG6ZFLbvn2
 YLfbfHD51luXvnYmuzT6JV5dO5VtaEglxLqBQ3dEbPFXRxISFx65ep0+44HD6OqB
 ScY+BGxq+xOP08kbMQlWF9ea7B71cnJKgPJbdNTZEr1vb22CFMskwkOn/m2g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1713271656; x=1713358056; bh=o+A6VQF+YAbnPd55BY98j5+Z/sNj
 OCmfHE3OGnEzh2o=; b=Q63jmz7SYl461WydOQDvdyrROqIe9K0Yg+Nrt/NTUuja
 hdBx7uD200mJLSYpZG4cTXV42RGVBkp8pARiI7wL3xlXmJopSQHuXbMVB90Z5PZC
 kVrbiQhIN+quX9Dimdt1c+28yiQrAH/dJ4wi0vxBXq2XZsD8ugA+IwdgWvpLSk28
 gn0djxsUqbheeyQDXm1Co1ARyjRFbSM4dY9438KowKRaOtSAa0W+LoA7LoFlpPrh
 n5duoMnRwZTOOTCuolasLzuyw7y4SddeIYUC4wOT3hebWp8CDSwNWB49aPZx3+ny
 XHuKhRejLFDaLQAVDb3EX/mOwSBf+/CObCj91KElbQ==
X-ME-Sender: <xms:aHMeZqF1sOEwKPqWJpeUjM-x1U2rKEJ_yV1BMqVAvg8nGaSnUTcb7w>
 <xme:aHMeZrXXMvjVF65I5hiVzMM7lenB0PqiIqZ6BaIY4Fw-8CgtajkmAtKBPH4jIlr6f
 s3epPX5osjTgP5YiBI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudejhedgfeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedfofgr
 rhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssg
 drtggrqeenucggtffrrghtthgvrhhnpeeiueefjeeiveetuddvkeetfeeltdevffevudeh
 ffefjedufedvieejgedugeekhfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
 epmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggr
X-ME-Proxy: <xmx:aHMeZkLOriO-2CYFs6tTuUljhQdacfE5M2i0vqXaU1_M1hNAZtlHWA>
 <xmx:aHMeZkGKeORbizedMF6EXhgi36cqroD3bEG3KB2iQiYRk7Jk2dT_vQ>
 <xmx:aHMeZgUIuaFOhSyhzXoT_BkfKp_g6dDwqIfy4AQ6FtrLDTD2bJrONg>
 <xmx:aHMeZnOEf1RfUo9sY48d2oVYz7NSvGTD6bmOGhsmrJe7aGfLuyuZdg>
 <xmx:aHMeZpOltZRUoc4rsA22y8D5RBk3BRsQnJbTor5wW83YXo1HAh5jtJjv>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 190A4C60097; Tue, 16 Apr 2024 08:47:35 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-379-gabd37849b7-fm-20240408.001-gabd37849
MIME-Version: 1.0
Message-Id: <ce28b0e5-a867-458e-bcb4-cc327be5f19e@app.fastmail.com>
In-Reply-To: <27b1b6cf-759c-4778-a53c-5d01442120b7@redhat.com>
References: <f3342c0b-fb31-4323-aede-7fb02192cf44@redhat.com>
 <ZhW3Wbn4YSGFBgfS@google.com> <ZhXpZe1Gm5e4xP6r@google.com>
 <92ee5cb2-565e-413c-b968-81393a9211c4@app.fastmail.com>
 <ZhcogDESvZmUPEEf@google.com>
 <91593303-4a6a-49c9-87a0-bb6f72f512a1@app.fastmail.com>
 <Zh2CtKy1NfKfojzS@google.com>
 <484638e2-1565-454b-97f8-4fcc6514a69c@redhat.com>
 <Zh2G85df29tPP6OK@google.com>
 <539776c5-6243-464b-99ae-5b1b1fb40e4b@app.fastmail.com>
 <Zh2wO0Bnyr8vFSpc@google.com>
 <7de52ec3-86f3-4a1d-ac87-a106ae1acb5d@app.fastmail.com>
 <27b1b6cf-759c-4778-a53c-5d01442120b7@redhat.com>
Date: Tue, 16 Apr 2024 08:48:31 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Hans de Goede" <hdegoede@redhat.com>,
 "Dmitry Torokhov" <dmitry.torokhov@gmail.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Hans On Tue, Apr 16, 2024, at 4:33 AM,
 Hans de Goede wrote:
 > Hi Mark, > > On 4/16/24 1:57 AM, Mark Pearson wrote: >> Hi Dmitry, >> >>
 On Mon, Apr 15, 2024, at 6:54 PM, Dmitry Torokhov wrote: >>> On Mon, A [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: squebb.ca]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.145 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1rwiDz-0004Cr-Pn
Subject: Re: [ibm-acpi-devel] [PATCH 1/4] Input: Add trackpoint doubletap
 and system debug info keycodes
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
Cc: linux-kernel@vger.kernel.org, "platform-driver-x86@vger.kernel.org"
 <platform-driver-x86@vger.kernel.org>, Vishnu Sankar <vsankar@lenovo.com>,
 ibm-acpi-devel@lists.sourceforge.net,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>, linux-input@vger.kernel.org,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Peter Hutterer <peter.hutterer@redhat.com>, Nitin Joshi1 <njoshi1@lenovo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Hans

On Tue, Apr 16, 2024, at 4:33 AM, Hans de Goede wrote:
> Hi Mark,
>
> On 4/16/24 1:57 AM, Mark Pearson wrote:
>> Hi Dmitry,
>> 
>> On Mon, Apr 15, 2024, at 6:54 PM, Dmitry Torokhov wrote:
>>> On Mon, Apr 15, 2024 at 04:28:19PM -0400, Mark Pearson wrote:
>>>> Hi
>>>>
>>>> On Mon, Apr 15, 2024, at 3:58 PM, Dmitry Torokhov wrote:
>>>>> On Mon, Apr 15, 2024 at 09:50:37PM +0200, Hans de Goede wrote:
>>>>>> Hi,
>>>>>>
>>>>>> On 4/15/24 9:40 PM, Dmitry Torokhov wrote:
>>>>>>> On Wed, Apr 10, 2024 at 10:48:10PM -0400, Mark Pearson wrote:
>>>>>>>>
>>>>>>>> I have a stronger preference to keep the KEY_DOUBLECLICK - that one seems less controversial as a genuine new input event.
>>>>>>>
>>>>>>> Please see my response to Peter's letter. I think it very much depends
>>>>>>> on how it will be used (associated with the pointer or standalone as it
>>>>>>> is now).
>>>>>>>
>>>>>>> For standalone application, recalling your statement that on Win you
>>>>>>> have this gesture invoke configuration utility I would argue for
>>>>>>> KEY_CONFIG for it.
>>>>>>
>>>>>> KEY_CONFIG is already generated by Fn + F# on some ThinkPads to launch
>>>>>> the GNOME/KDE control center/panel and I believe that at least GNOME
>>>>>> comes with a default binding to map KEY_CONFIG to the control-center.
>>>>>
>>>>> Not KEY_CONTROLPANEL?
>>>>>
>>>>> Are there devices that use both Fn+# and the doubleclick? Would it be an
>>>>> acceptable behavior for the users to have them behave the same?
>>>>>
>>>> Catching up with the thread, thanks for all the comments.
>>>>
>>>> For FN+N (originally KEY_DEBUG_SYS_INFO) the proposal was to now use
>>>> KEY_VENDOR there. My conclusion was that this is targeting vendor
>>>> specific functionality, and that was the closest fit, if a new keycode
>>>> was not preferred.
>>>
>>> Fn+N -> KEY_VENDOR mapping sounds good to me.
>>>
>>>>
>>>> For the doubletap (which is a unique input event - not related to the
>>>> pointer) I would like to keep it as a new unique event. 
>>>>
>>>> I think it's most likely use would be for control panel, but I don't
>>>> think it should be limited to that. I can see it being useful if users
>>>> are able to reconfigure it to launch something different (browser or
>>>> music player maybe?), hence it would be best if it did not conflict
>>>> with an existing keycode function. I also can't confirm it doesn't
>>>> clash on existing or future systems - it's possible.
>>>
>>> So here is the problem. Keycodes in linux input are not mere
>>> placeholders for something that will be decided later how it is to be
>>> used, they are supposed to communicate intent and userspace ideally does
>>> not need to have any additional knowledge about where the event is
>>> coming from. A keyboard either internal or external sends KEY_SCREENLOCK
>>> and the system should lock the screen. It should not be aware that one
>>> device was a generic USB external keyboard while another had an internal
>>> sensor that recognized hovering palm making swiping motion to the right
>>> because a vendor decided to make it. Otherwise you have millions of
>>> input devices all generating unique codes and you need userspace to
>>> decide how to interpret data coming from each device individually.
>>>
>>> If you truly do not have a defined use case for it you have a couple
>>> options:
>>>
>>> - assign it KEY_RESERVED, ensure your driver allows remapping to an
>>>   arbitrary keycode, let user or distro assign desired keycode to it
>>>
>>> - assign KEY_PROG1 .. KEY_PROG4 - pretty much the same - leave it in the
>>>   hand of the user to define a shortcut in their DE to make it useful
>>>
>>>>
>>>> FWIW - I wouldn't be surprised with some of the new gaming systems
>>>> we're seeing (Steamdeck, Legion-Go, etc), that a doubletap event on a
>>>> joystick might be useful to have, if the HW supports it?
>>>
>>> What would it do exactly? Once we have this answer we can define key or
>>> button code (although I do agree that game controller buttons are
>>> different from "normal" keys because they map to the geometry of the
>>> controller which in turn defines their commonly understood function).
>>>
>>> But in any case you would not reuse the same keycode for something that
>>> is supposed to invoke a configuration utility and also to let's say
>>> drop a flash grenade in a game.
>>>
>> 
>> Understood.
>> 
>> I don't see a path forward within your stated parameters. I did not realise that there were such limitations, so my apologies for wasting everybody's time, and thank you for your patience and guidance.
>> 
>> I will drop this patch from the series and proceed using existing defined codes only.
>> 
>> Hans, I'll need to rejig things a bits but I have some ideas and I think I can make it work and stay within the pdx86 tree, which will make it simpler.
>
> Ok this sounds good to me. For Fn + N using KEY_VENDOR sounds good for
> me and for the doubletap any one of 
> KEY_CONFIG/KEY_CONTROLPANEL/KEY_INFO/KEY_PROG1
> or some other suitable KEY_foo define works for me.
>
I think this should be a configurable input, by design. So my preference (if not allowed a new keycode, which I personally think is the better option) is for PROG1.

I discussed with Peter last night and it looks likely OK on their side. I do plan on doing some testing first, so it might take a few days to get the next set of patches out.

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

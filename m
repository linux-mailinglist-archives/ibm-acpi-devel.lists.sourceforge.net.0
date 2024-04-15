Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DF18A5F09
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 16 Apr 2024 01:58:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rwWDO-00043m-0S;
	Mon, 15 Apr 2024 23:58:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1rwWDL-00043b-KN
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 15 Apr 2024 23:58:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=k2/J7hdwFoPqwQc+fqXNZaykRVaVRk4wpoekmeB11RA=; b=aht2FWpRel4CEOdQI1fRDEQ3f3
 yBS3Y+6RK5hFVaRGWzQvv280vbbQ05m6kwF+hUEztwC8vvCS/nioy6ZRw6rsv3uDdS2CjOfxN+OZc
 dj0ArZi5hIjrYVbwjXi7TUK/Hcua47YAfdygySlKX3UlwTdVPcPwuNjOOJuAs/x7WXYc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=k2/J7hdwFoPqwQc+fqXNZaykRVaVRk4wpoekmeB11RA=; b=cNc5jXakB5S2OS7gSkWspPegV6
 z91K1iURj7OuPtfpuquqvh8QkY4syvu1KfOWAZwjuFcW3CU8TIb3dZtoxx/0vakUXJRb/aA1J+Whs
 0hc2P0FU7z+TRJB8nuPsUjocAVmhKNgS1qNfDSyO+FWbWr4INpPXJYP6k9lUl1Bdo2WA=;
Received: from fhigh6-smtp.messagingengine.com ([103.168.172.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rwWDK-0007pj-IZ for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 15 Apr 2024 23:58:19 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id B07001140131;
 Mon, 15 Apr 2024 19:58:12 -0400 (EDT)
Received: from imap52 ([10.202.2.102])
 by compute3.internal (MEProxy); Mon, 15 Apr 2024 19:58:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm3; t=1713225492; x=1713311892; bh=k2/J7hdwFo
 PqwQc+fqXNZaykRVaVRk4wpoekmeB11RA=; b=jXLiSokMmYEvLK0wPmD8NP5aci
 5NGY9WnhpJlNE2lpCcz2T65mEDPuGq7mnD6ProHAMXLktTkSAsbx4ryy/M0dhv+2
 OZbro9pMJCnqn4tDnkybQb5mKUdgcaTdW+htPSh3iM8wQmYV+epuhBBUCCzg5ih1
 VNPtcLkwr9kqInqkq7iBMUP8EFgV8YKTNzv792ZI95/9opVb5gTLnOA21RWgvuvg
 J7ySwNR2/5h9G3Jh2uRWfJELm5a0EQUI12caDTGABNW4oWbBAxujrQrNkAeac5rV
 ytGFq2yLtiSPhZa/I9QDWM0l2O3Hr13qVeQQiqzdTRpIhZ+tCn6Yi4pGdJ4g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1713225492; x=1713311892; bh=k2/J7hdwFoPqwQc+fqXNZaykRVaV
 Rk4wpoekmeB11RA=; b=YAYfhFjpuwM1Q0NK4TrgVF1D3O91OWYPx5ffMV5lTR3l
 ZwYvB0JG7a79BsFmWqixFqoIP89J5EzpJF6IBVfOLnxIUbAlSnpof8Uf4TEuhbZR
 HEY6zKJdzX5Fb9adysjvCQrALDF2hXOf7v78Qc9RSiCnaihvhve723uqPmnWSXsk
 RAuSQBhhRK2AK/cvaSa0HPoPd63On/NfmWlfYAvpQMkMWQxIRaW1UKdwj1k/xNBS
 nD9M0a3NMTEQrOXTNpouhpPEPwYPf82JkjJ046Zk2q2OgpH9cLnzA+kCoYQP31Ks
 61vLMtUyv4+lbQ4vVYML+/w421sfAg7huiCZrE8olQ==
X-ME-Sender: <xms:E78dZrbvy-PSl9vtA4YsolTrfUdZoq32BIYFDPFX8goC2Ds3lpMpUw>
 <xme:E78dZqaw8E4MBpxAbwEcq141cvfgfRqjdCnrFO3ORnMzY0lqnMyg6u2IvkuQxlHte
 UG7wT9aqtsmKK0lehU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudejfedgvdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedfofgr
 rhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssg
 drtggrqeenucggtffrrghtthgvrhhnpeeiueefjeeiveetuddvkeetfeeltdevffevudeh
 ffefjedufedvieejgedugeekhfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
 epmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggr
X-ME-Proxy: <xmx:FL8dZt-ymJ8D9UAqInlku2J0OOKUn_zb-h4VCtm48fg8pBmXJ4eWPQ>
 <xmx:FL8dZhrvL7HbWXI8a7Fwv8CW5HDExX-NTMf4bJskwBP__2SmHKOi2w>
 <xmx:FL8dZmrudba23rRbTc1r0THvtSm1N4Nfe8qjozUi-SAV6-vBN4PbUg>
 <xmx:FL8dZnRbCNu93muL86xu6_oFtdYWntoKuyqnIq5ZzgZM_K-flvb1zw>
 <xmx:FL8dZjjvPJgYIbLSQjSnt5fZJSV7AfYE4fFn6KE_dWPE60gup105peA_>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id DE8CDC60097; Mon, 15 Apr 2024 19:58:11 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-379-gabd37849b7-fm-20240408.001-gabd37849
MIME-Version: 1.0
Message-Id: <7de52ec3-86f3-4a1d-ac87-a106ae1acb5d@app.fastmail.com>
In-Reply-To: <Zh2wO0Bnyr8vFSpc@google.com>
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
Date: Mon, 15 Apr 2024 19:57:51 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Dmitry Torokhov" <dmitry.torokhov@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Dmitry, On Mon, Apr 15, 2024, at 6:54 PM, Dmitry Torokhov
 wrote: > On Mon, Apr 15, 2024 at 04:28:19PM -0400, Mark Pearson wrote: >>
 Hi >> >> On Mon, Apr 15, 2024, at 3:58 PM, Dmitry Torokhov wrote: >> > On
 Mo [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.157 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1rwWDK-0007pj-IZ
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
Cc: ibm-acpi-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 "platform-driver-x86@vger.kernel.org"
 <platform-driver-x86@vger.kernel.org>, Vishnu Sankar <vsankar@lenovo.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>, linux-input@vger.kernel.org,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Peter Hutterer <peter.hutterer@redhat.com>, Nitin Joshi1 <njoshi1@lenovo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Dmitry,

On Mon, Apr 15, 2024, at 6:54 PM, Dmitry Torokhov wrote:
> On Mon, Apr 15, 2024 at 04:28:19PM -0400, Mark Pearson wrote:
>> Hi
>> 
>> On Mon, Apr 15, 2024, at 3:58 PM, Dmitry Torokhov wrote:
>> > On Mon, Apr 15, 2024 at 09:50:37PM +0200, Hans de Goede wrote:
>> >> Hi,
>> >> 
>> >> On 4/15/24 9:40 PM, Dmitry Torokhov wrote:
>> >> > On Wed, Apr 10, 2024 at 10:48:10PM -0400, Mark Pearson wrote:
>> >> >>
>> >> >> I have a stronger preference to keep the KEY_DOUBLECLICK - that one seems less controversial as a genuine new input event.
>> >> > 
>> >> > Please see my response to Peter's letter. I think it very much depends
>> >> > on how it will be used (associated with the pointer or standalone as it
>> >> > is now).
>> >> > 
>> >> > For standalone application, recalling your statement that on Win you
>> >> > have this gesture invoke configuration utility I would argue for
>> >> > KEY_CONFIG for it.
>> >> 
>> >> KEY_CONFIG is already generated by Fn + F# on some ThinkPads to launch
>> >> the GNOME/KDE control center/panel and I believe that at least GNOME
>> >> comes with a default binding to map KEY_CONFIG to the control-center.
>> >
>> > Not KEY_CONTROLPANEL?
>> >
>> > Are there devices that use both Fn+# and the doubleclick? Would it be an
>> > acceptable behavior for the users to have them behave the same?
>> >
>> Catching up with the thread, thanks for all the comments.
>> 
>> For FN+N (originally KEY_DEBUG_SYS_INFO) the proposal was to now use
>> KEY_VENDOR there. My conclusion was that this is targeting vendor
>> specific functionality, and that was the closest fit, if a new keycode
>> was not preferred.
>
> Fn+N -> KEY_VENDOR mapping sounds good to me.
>
>> 
>> For the doubletap (which is a unique input event - not related to the
>> pointer) I would like to keep it as a new unique event. 
>> 
>> I think it's most likely use would be for control panel, but I don't
>> think it should be limited to that. I can see it being useful if users
>> are able to reconfigure it to launch something different (browser or
>> music player maybe?), hence it would be best if it did not conflict
>> with an existing keycode function. I also can't confirm it doesn't
>> clash on existing or future systems - it's possible.
>
> So here is the problem. Keycodes in linux input are not mere
> placeholders for something that will be decided later how it is to be
> used, they are supposed to communicate intent and userspace ideally does
> not need to have any additional knowledge about where the event is
> coming from. A keyboard either internal or external sends KEY_SCREENLOCK
> and the system should lock the screen. It should not be aware that one
> device was a generic USB external keyboard while another had an internal
> sensor that recognized hovering palm making swiping motion to the right
> because a vendor decided to make it. Otherwise you have millions of
> input devices all generating unique codes and you need userspace to
> decide how to interpret data coming from each device individually.
>
> If you truly do not have a defined use case for it you have a couple
> options:
>
> - assign it KEY_RESERVED, ensure your driver allows remapping to an
>   arbitrary keycode, let user or distro assign desired keycode to it
>
> - assign KEY_PROG1 .. KEY_PROG4 - pretty much the same - leave it in the
>   hand of the user to define a shortcut in their DE to make it useful
>
>> 
>> FWIW - I wouldn't be surprised with some of the new gaming systems
>> we're seeing (Steamdeck, Legion-Go, etc), that a doubletap event on a
>> joystick might be useful to have, if the HW supports it?
>
> What would it do exactly? Once we have this answer we can define key or
> button code (although I do agree that game controller buttons are
> different from "normal" keys because they map to the geometry of the
> controller which in turn defines their commonly understood function).
>
> But in any case you would not reuse the same keycode for something that
> is supposed to invoke a configuration utility and also to let's say
> drop a flash grenade in a game.
>

Understood.

I don't see a path forward within your stated parameters. I did not realise that there were such limitations, so my apologies for wasting everybody's time, and thank you for your patience and guidance.

I will drop this patch from the series and proceed using existing defined codes only.

Hans, I'll need to rejig things a bits but I have some ideas and I think I can make it work and stay within the pdx86 tree, which will make it simpler.

Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

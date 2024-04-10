Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FB489E819
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 10 Apr 2024 04:18:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ruNWo-0004Yv-Er;
	Wed, 10 Apr 2024 02:17:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1ruNWm-0004Yk-Cp
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 10 Apr 2024 02:17:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QmIb7eehjlj51OheY2NUMsMEGmdD2KNY8qYRik3xPX0=; b=gweL6s0WJNTkCkuv7w2uFY/nct
 hUpdotyFcBFoBGHK+AWyLhDfxbfrmBiNa/NF3TAgqPWDEoGCjoyrm3LTB6yjTzI1w633edtR0YtiV
 mFzEDJ3CgkgKRXUgzp1CXyBGVsnuA1nfF4QyWevGNm7DkadMIJkZEOAU/ZotOjrTa62k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QmIb7eehjlj51OheY2NUMsMEGmdD2KNY8qYRik3xPX0=; b=FBoxIOjoqEq+HmUEpD74j7rZB/
 KATfeIDnX0vFuOyy6+MqfeyXR8MEVgQkmhYof0bcp6p6Zn+4iMpQRPJVUwTSgqyttJ1Bwt4u2Lkhg
 0nBwWfwn8SaXqvQ5+sOQOrO46T6tm69co+/U8mmfjjSkKIoggHnQRr77t4BFDwED08QU=;
Received: from fout2-smtp.messagingengine.com ([103.168.172.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ruNWX-0002eo-8H for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 10 Apr 2024 02:17:32 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailfout.nyi.internal (Postfix) with ESMTP id 872BD13802C3;
 Tue,  9 Apr 2024 22:17:06 -0400 (EDT)
Received: from imap52 ([10.202.2.102])
 by compute3.internal (MEProxy); Tue, 09 Apr 2024 22:17:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm3; t=1712715426; x=1712801826; bh=QmIb7eehjl
 j51OheY2NUMsMEGmdD2KNY8qYRik3xPX0=; b=mQ4PTrIiRS7rytFH1Qd2cJH/K0
 Rst1K9kB4t+DrgXmo5pz61HLbiClt2aavSSWAIN562599LdW1wNnBS8YvigrSZ+F
 BAZapcLCWWES7H2LoA3D/+WnZfcdt3k4V7gOOWwnFUoEbyvoo7I1XczN3J0hbkU4
 T5LDIe2r1LAxaRINH6t3hfBxqbuTj3H9FiKu2uIs4rnwOnT2S7vjmGZftN8uD+RQ
 2T3sOXth2yL1lgKmZPbXNIMluKokUcHLwJuCmvMUhlJSDpisI/SMjGfjgbvoKfwh
 DY9AC33kHBNuh8xYfg7qTgtIeZabm4t1GMhrp3s6fBdf5O6H9Zs+FVvtiHkw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1712715426; x=1712801826; bh=QmIb7eehjlj51OheY2NUMsMEGmdD
 2KNY8qYRik3xPX0=; b=DfkG8UUI+XVQPXJzMLRwXseYHSDiNTUAMRVFc97kHhdT
 YDIHXf6y2pItsHSlGWWTJ/JhHYtbxCFAGhbABYyhZmzOLqhZhcMyPOgNdfFl1w74
 xc3H6Ut6YaWOrJXaFl93L31FIEaPKca4F8Wtk3xLENzZ3lOfG8/MmYafRndAG+Sl
 Z4MGy3r6XhP+I0LRrar+ddPfeMU6vUBZhZe4JzPfo/8ZQTzAkWIfZUkj0csIRhVB
 Zfo0S/I/pIExZ99Bi+QRLCdgLDifbAWilBKDGoYFcvO/zFk6QmzsauGOhS3Gt1Al
 /5Jw5/9YSRSTmsWAhDO7S0EVeDQoVFttJDVWSDStTw==
X-ME-Sender: <xms:ofYVZiqp5iyPfNaVOONHbobDeeEa56rHNH4EbAPo-CgGtCiPmGDGNw>
 <xme:ofYVZgrf3wDOD36oL_Csox0JerKjEjuEGI0MpFb8m10t-H-vUT6y4fUe5K4Ce0FJ2
 PNZvoFFs8z1NSZYuBM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudehhedgheegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedfofgr
 rhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssg
 drtggrqeenucggtffrrghtthgvrhhnpeeiueefjeeiveetuddvkeetfeeltdevffevudeh
 ffefjedufedvieejgedugeekhfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
 epmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggr
X-ME-Proxy: <xmx:ofYVZnNLTcKsV6MW_9sh3P7gJqC4x7MyGE7aCWndLFe5eVKDHuLJig>
 <xmx:ofYVZh7embmJTUwTDEyEVMirG_2jv7FHuTSPUkANqJGsA7wgulvO-g>
 <xmx:ofYVZh5L_kfBTJayoA6ML-LrdLBORZFrRLlBDg6BaoBwz7CIaWhJkQ>
 <xmx:ofYVZhiMUeMEI1GJtVvmvDdhjym3pXtSR6etB6WXSEQCxc2O_zZqkA>
 <xmx:ovYVZuzgJR4Tu6KGzU0GAyhXDfnuJiGu_yKdF7z0WFeGCu5n_RWSXpgr>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id C52AFC60098; Tue,  9 Apr 2024 22:17:05 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-379-gabd37849b7-fm-20240408.001-gabd37849
MIME-Version: 1.0
Message-Id: <92ee5cb2-565e-413c-b968-81393a9211c4@app.fastmail.com>
In-Reply-To: <ZhXpZe1Gm5e4xP6r@google.com>
References: <mpearson-lenovo@squebb.ca>
 <20240324210817.192033-1-mpearson-lenovo@squebb.ca>
 <20240324210817.192033-2-mpearson-lenovo@squebb.ca>
 <ZhR-WPx7dgKxziMb@google.com>
 <f3342c0b-fb31-4323-aede-7fb02192cf44@redhat.com>
 <ZhW3Wbn4YSGFBgfS@google.com> <ZhXpZe1Gm5e4xP6r@google.com>
Date: Tue, 09 Apr 2024 22:17:05 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Dmitry Torokhov" <dmitry.torokhov@gmail.com>,
 "Peter Hutterer" <peter.hutterer@redhat.com>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Dmitry On Tue, Apr 9, 2024, at 9:20 PM, Dmitry Torokhov
 wrote: > On Tue, Apr 09, 2024 at 02:47:05PM -0700, Dmitry Torokhov wrote:
 >> On Tue, Apr 09, 2024 at 03:23:52PM +1000, Peter Hutterer wrote: >> > On
 09 [...] Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.0 T_SPF_HELO_TEMPERROR   SPF: test of HELO record failed (temperror)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
X-Headers-End: 1ruNWX-0002eo-8H
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
 Nitin Joshi1 <njoshi1@lenovo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Dmitry

On Tue, Apr 9, 2024, at 9:20 PM, Dmitry Torokhov wrote:
> On Tue, Apr 09, 2024 at 02:47:05PM -0700, Dmitry Torokhov wrote:
>> On Tue, Apr 09, 2024 at 03:23:52PM +1000, Peter Hutterer wrote:
>> > On 09/04/2024 09:31, Dmitry Torokhov wrote:
>> > > Hi Mark,
>> > > 
>> > > On Sun, Mar 24, 2024 at 05:07:58PM -0400, Mark Pearson wrote:
>> > > > Add support for new input events on Lenovo laptops that need exporting to
>> > > > user space.
>> > > > 
>> > > > Lenovo trackpoints are adding the ability to generate a doubletap event.
>> > > > Add a new keycode to allow this to be used by userspace.
>> > > 
>> > > What is the intended meaning of this keycode? How does it differ from
>> > > the driver sending BTN_LEFT press/release twice?
>> > > > 
>> > > > Lenovo support is using FN+N with Windows to collect needed details for
>> > > > support cases. Add a keycode so that we'll be able to provide similar
>> > > > support on Linux.
>> > > 
>> > > Is there a userspace consumer for this?
>> > 
>> > Funnily enough XKB has had a keysym for this for decades but it's not
>> > hooked up anywhere due to the way it's pointer keys accessibility
>> > feature was implemented. Theory is that most of userspace just needs
>> > to patch the various pieces together for the new evdev code + keysym,
>> > it's not really any different to handling a volume key (except this
>> > one needs to be assignable).
>> 
>> What is the keysym? If we can make them relatable to each other that
>> would be good. Or maybe we could find a matching usage from HID usage
>> tables...
>
> I was looking through the existing codes and I see:
>
> #define KEY_INFO		0x166	/* AL OEM Features/Tips/Tutorial */
>
> We also have KEY_VENDOR used in a few drivers/plafrom/x86, including
> thinkkpad_acpi.c and I wonder if it would be suitable for this vendor
> specific debug info collection application (which I honestly doubt will
> materialize).
>

That's a somewhat disappointing note on your doubts, is that based on anything? Just wondering what we've done to deserve that criticism.

That aside, I guess KEY_INFO or KEY_VENDOR could be a good fit (I personally don't think KEY_CONFIG matches well), but I would be worried about clashing with existing functionality.

Peter - do you have any opinion from the user space side of things, or are these likely unused? KEY_VENDOR seems the safer bet to me (but I don't love it).

Dmitry - What are the downsides or concerns of introducing a new code? I'd like to evaluate that against the potential to cause conflicts by re-using existing codes. If you feel strongly about it then I'll defer to your judgement, but I'd like to understand better the context.

Thanks
Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
